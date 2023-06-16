const db = require('../db/models')

function userLoggedMiddleware(req, res, next) {
    if(!req.session.userLogged && req.cookies.recordarUsuario){
        db.Usuario.findOne({
            where:{
                id: req.cookies.recordarUsuario
            }
        }).then(function(usuario){
            req.session.userLogged = usuario;
            return next()
        })
    }else{
        return next()
    }
}

module.exports = userLoggedMiddleware;