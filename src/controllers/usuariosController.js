const path = require("path");
const db = require ("../db/models"); 
const {Op} = require("sequelize");
const bcryptjs = require ("bcrypt"); 
const {validationResult} = require("express-validator"); 

const controller = {
    register: async function(req, res){
        return res.render("usuarios/register")
    },
    login: async function(req, res){
        return res.render("usuarios/login")
    },
    loginProcess: async (req,res, next)=> {  
        const resultValidation = validationResult(req);
        if(!resultValidation.isEmpty()){    
            return res.render("usuarios/login", { 
                errors: resultValidation.mapped(),
                oldData: req.body 
            });
        }
       await db.Usuario.findOne({
        include: [{association: "Perfil"}], 
            where: {
                email: req.body.email 
            }
        }).then(userToLogin => {    
                req.session.userLogged = userToLogin
                if (req.body.recordarUsuario) {  // Si se tildo el boton de recordarme (su name en el ejs es recordarUsuario)
                    res.cookie("recordarUsuario", userToLogin.id, {maxAge: (1000 * 60) * 5} )    // la cookie va a dejar logueado al usuario por 5 minutos por mas que cierre el navegador
                }
            return res.redirect ("/usuario/profile") // Redirecciona al perfil del usuario que se logueo
        })
    },
    profile: function (req, res){
        db.Usuario.findOne({
            include: {association: "Perfil"},
            where: {
                id:req.session.userLogged.id
            }
        })
            .then(function(usuario){
                res.render("usuarios/profile", {usuario:usuario})
            })
    },
    processRegister: (req, res, next) => {
        db.Usuario.create({
            nombre: req.body.nombre,
            apellido: req.body.apellido,
            email: req.body.email,
            contraseña: bcryptjs.hashSync(req.body.contraseña, 10),
            perfil_id: 2
        }).then(function(){
            return res.redirect("/usuario/login")
        })
    }
   // processLogin: (req, res, next) => {}
 }

module.exports = controller;