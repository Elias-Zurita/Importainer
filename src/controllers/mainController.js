const path = require("path");
const db = require ("../db/models"); // nos permite utilizar la base de datos
const {Op} = require("sequelize");

const controller = {
    index: (req, res) =>{
        db.Proyecto.findAll({
            include: [{association: "Categoria"}]  
        })
            .then(function(proyecto){   
                res.render('index', {proyecto:proyecto})
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