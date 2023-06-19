const path = require("path");
// const {validationResult} = require("express-validator"); // requiere la libreria instalada para las validaciones de datos
const db = require ("../db/models"); // nos permite utilizar la base de datos
const {Op} = require("sequelize");

const proyectosController = {
    categorias: function(req, res) {
        db.Proyecto.findAll({
            include: [{association: "Categoria"}]
        })
            .then(function(proyectos){
                res.render("proyectos/proyectosCategorias", {proyectos:proyectos})
            })
    },
    categoria: function(req, res){
        db.Categoria.findOne({
            where: { slug: req.params.categoria } }) // "categoria" proviene del router.get("/categorias/:categoria")
            .then (function(categoria){
                console.log(categoria)
                db.Proyecto.findAll({
                    include: [{association: "Categoria"}],
                    where: {
                        categoria_id: categoria.id
                    }
                })
                .then(function (proyectos) {
                    res.render("proyectos/proyectosList", {proyectos:proyectos})
                })
            })
    },
    crear: async function(req, res) {
        const categorias = await db.Categoria.findAll();
            return res.render("proyectos/proyectosCreate", {categorias})
    },
    guardado: async function(req, res) {
        const proyectoCreado = await db.Proyecto.create({
            nombre: req.body.nombre,
            precio: req.body.precio,
            descripcion: req.body.descripcion,
            superficie: req.body.superficie,
            ambientes: req.body.ambientes,
            baños: req.body.baños,
            adhesion: req.body.adhesion,
            resumen: req.body.resumen,
            detalle_baño: req.body.detallebaño,
            cocina: req.body.detallecocina,
            aberturas: req.body.detalleaberturas,
            revestimientos: req.body.revestimientos,
            equipamiento: req.body.equipamiento,    
            instalacion_electrica:req.body.instalacion_electrica,
            instalacion_agua:req.body.instalacion_agua, 
            tipos_de_pisos: req.body.tipos_de_pisos,
            // video: req.file.filename, con esto no anda
            imagenes: req.file.filename,
            categoria_id: req.body.categoria            
        })
        res.redirect("/proyectos/categorias"); 
    },
    detalle: function(req, res) {
        let pedidoProyecto = db.Proyecto.findByPk(req.params.id, {
            include:[{association: "Categoria"}]});
            
        let pedidoCategoria = db.Categoria.findAll();
        
        Promise.all([pedidoProyecto, pedidoCategoria])
            .then(function(values){
                res.render("proyectos/proyectoDetalle", {proyecto:values[0], categorias: values[1]})
            })
    }
 }

module.exports = proyectosController;