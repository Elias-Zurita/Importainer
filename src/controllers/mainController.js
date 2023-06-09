const path = require("path");
const db = require ("../db/models"); // nos permite utilizar la base de datos
const {Op} = require("sequelize");

const controller = {
    index: (req, res) =>{
        db.Entrega.findAll({
            include: [{association: "Modelo"}]  
        })
            .then(function(entregas){   
                res.render('index', {entregas:entregas})
            })
    },
    sistemaConstructivo: (req, res) =>{
        res.render('sistemaConstructivo')    
    },
    contacto: (req, res) =>{
        res.render('contacto')    
    }
 }

module.exports = controller;