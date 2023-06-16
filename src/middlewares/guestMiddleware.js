function guestMiddleware (req,res,next){
    if (req.session.userLogged){              // Si hay alguien logueado
        return res.redirect("/usuario/profile") // Redirecciona al perfil
    }
    next();   //  Sino el request sigue 
    }
    
    module.exports = guestMiddleware