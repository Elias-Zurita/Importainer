const path = require("path");

const controller = {
    index: (req, res) =>{
        res.render('index')    // renderiza el index  
    },
    sistemaConstructivo: (req, res) =>{
        res.render('sistemaConstructivo')    
    },
    contacto: (req, res) =>{
        res.render('contacto')    
    }
 }

module.exports = controller;