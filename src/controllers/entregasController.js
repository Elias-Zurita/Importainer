const path = require("path");
// const {validationResult} = require("express-validator"); // requiere la libreria instalada para las validaciones de datos
const db = require ("../db/models"); // nos permite utilizar la base de datos
const {Op} = require("sequelize");

const proyectosController = {
    list: function(req, res) {
        db.Entrega.findAll({
            include: [{association: "Modelo"}]  
        })
            .then(function(entregas){   
                res.render("entregas/entregasList", {entregas:entregas})
            })
    }
 }

module.exports = proyectosController;