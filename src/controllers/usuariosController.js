const path = require("path");
const db = require ("../db/models"); // nos permite utilizar la base de datos
const {Op} = require("sequelize");

const controller = {
    register: async function(req, res){
        return res.render("usuarios/register")
    },
    login: async function(req, res){
        return res.render("usuarios/login")
    }
 }

module.exports = controller;