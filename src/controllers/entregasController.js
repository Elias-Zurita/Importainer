const path = require("path");
// const {validationResult} = require("express-validator"); // requiere la libreria instalada para las validaciones de datos
const db = require ("../db/models"); // nos permite utilizar la base de datos
const {Op} = require("sequelize");

const entregasController = {
    list: function(req, res) {
        db.Entrega.findAll({
            include: [{association: "Modelo"}]  
        })
            .then(function(entregas){   
                res.render("entregas/entregasList", {entregas:entregas})
            })
    },
    detalle: function(req, res) {
        let pedidoEntrega = db.Entrega.findByPk(req.params.id, {
            include:[{association: "Modelo"}]});
            
        let pedidoModelo = db.Modelo.findAll();
        
        Promise.all([pedidoEntrega, pedidoModelo])
            .then(function(values){
                res.render("entregas/entregaDetalle", {entrega:values[0], modelos: values[1]})
            })
    }, 
    crear: async function(req, res) {
        const modelos = await db.Modelo.findAll();
            return res.render("entregas/entregaCreate", {modelos})
    },
    guardado: async function(req, res) {
        const entregaCreada = await db.Entrega.create({
            nombre: req.body.nombre,
            descripcion: req.body.descripcion,
            superficie: req.body.superficie,
            ubicacion: req.body.ubicacion,
            video: req.body.video,
            modelo_id: req.body.modelo,
            imagen: req.file.filename
        })
        res.redirect("/entregas/list");
    }
 }

module.exports = entregasController;