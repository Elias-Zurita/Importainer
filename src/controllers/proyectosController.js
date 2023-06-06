const path = require("path");
// const {validationResult} = require("express-validator"); // requiere la libreria instalada para las validaciones de datos
const db = require ("../db/models"); // nos permite utilizar la base de datos
const {Op} = require("sequelize");

const proyectosController = {
    list: function(req, res) {
        db.Proyecto.findAll({
            include: [{association: "Categoria"}]
        })
            .then(function(proyectos){
                res.render("proyectos/proyectosList", {proyectos:proyectos})
            })
    }
 }

module.exports = proyectosController;