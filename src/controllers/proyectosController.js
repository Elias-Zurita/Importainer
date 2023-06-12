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
 }

module.exports = proyectosController;