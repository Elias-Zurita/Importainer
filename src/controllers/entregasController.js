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
    }
 }

module.exports = entregasController;