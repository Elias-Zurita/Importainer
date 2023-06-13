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
    classic: function (req, res, next) {
        let proyectoToFind = req.query.search;
        db.Proyecto.findAll({
            include: [{association: "Categoria"}],
            where: {
                categoria_id: '1'
            }
        })
        .then(function (proyectos) {
            res.render("proyectos/proyectosList", {proyectos:proyectos})
        })
    },
    comfort: function (req, res, next) {
        let proyectoToFind = req.query.search;
        db.Proyecto.findAll({
            include: [{association: "Categoria"}],
            where: {
                categoria_id: '2'
            }
        })
        .then(function (proyectos) {
            res.render("proyectos/proyectosList", {proyectos:proyectos})
        })
    },
    premium: function (req, res, next) {
        let proyectoToFind = req.query.search;
        db.Proyecto.findAll({
            include: [{association: "Categoria"}],
            where: {
                categoria_id: '3'
            }
        })
        .then(function (proyectos) {
            res.render("proyectos/proyectosList", {proyectos:proyectos})
        })
    },
    casacampo: function (req, res, next) {
        let proyectoToFind = req.query.search;
        db.Proyecto.findAll({
            include: [{association: "Categoria"}],
            where: {
                categoria_id: '4'
            }
        })
        .then(function (proyectos) {
            res.render("proyectos/proyectosList", {proyectos:proyectos})
        })
    },
    casatiny: function (req, res, next) {
        let proyectoToFind = req.query.search;
        db.Proyecto.findAll({
            include: [{association: "Categoria"}],
            where: {
                categoria_id: '5'
            }
        })
        .then(function (proyectos) {
            res.render("proyectos/proyectosList", {proyectos:proyectos})
        })
    },
    duplex: function (req, res, next) {
        let proyectoToFind = req.query.search;
        db.Proyecto.findAll({
            include: [{association: "Categoria"}],
            where: {
                categoria_id: '6'
            }
        })
        .then(function (proyectos) {
            res.render("proyectos/proyectosList", {proyectos:proyectos})
        })
    },
    combo: function (req, res, next) {
        let proyectoToFind = req.query.search;
        db.Proyecto.findAll({
            include: [{association: "Categoria"}],
            where: {
                categoria_id: '7'
            }
        })
        .then(function (proyectos) {
            res.render("proyectos/proyectosList", {proyectos:proyectos})
        })
    },
    exteriores: function (req, res, next) {
        let proyectoToFind = req.query.search;
        db.Proyecto.findAll({
            include: [{association: "Categoria"}],
            where: {
                categoria_id: '8'
            }
        })
        .then(function (proyectos) {
            res.render("proyectos/proyectosList", {proyectos:proyectos})
        })
    },
    emprendimientos: function (req, res, next) {
        let proyectoToFind = req.query.search;
        db.Proyecto.findAll({
            include: [{association: "Categoria"}],
            where: {
                categoria_id: '9'
            }
        })
        .then(function (proyectos) {
            res.render("proyectos/proyectosList", {proyectos:proyectos})
        })
    },
    oficinas: function (req, res, next) {
        let proyectoToFind = req.query.search;
        db.Proyecto.findAll({
            include: [{association: "Categoria"}],
            where: {
                categoria_id: '10'
            }
        })
        .then(function (proyectos) {
            res.render("proyectos/proyectosList", {proyectos:proyectos})
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
            
            imagenes: req.file.filename,
            categoria_id: req.body.categoria            
        })
        res.redirect("/proyectos/categorias"); 
    }
 }

module.exports = proyectosController;