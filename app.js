const createError = require('http-errors');
const express = require('express');
const path = require('path');
const logger = require('morgan');
const methodOverride = require('method-override'); 
const session = require("express-session") 
const cookies = require('cookie-parser');

// Routers
const mainRoutes = require('./src/routes/mainRoutes');
const proyectosRoutes = require('./src/routes/proyectosRoutes');
const entregasRoutes = require('./src/routes/entregasRoutes');
const usuariosRoutes = require('./src/routes/usuariosRoutes');

const userLoggedMiddleware = require('./src/middlewares/userLoggedMiddleware')
const localsMiddleware = require("./src/middlewares/localsMiddleware")

const app = express();

// view engine setup
app.set('views', path.join(__dirname, 'src/views'));
app.set('view engine', 'ejs');

app.use(methodOverride('_method')); 
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookies());
app.use(express.static(path.join(__dirname, 'public')));
app.use(session({                 // Inicializacion de sesion
  secret:"Shh, es un secreto",
  resave: false,                  // Propiedades de session que se deben setear como false
  saveUninitialized: false,       // Propiedades de session que se deben setear como false
}))

app.use(userLoggedMiddleware);
app.use(localsMiddleware);

// Rutas
app.use('/', mainRoutes);
app.use('/proyectos', proyectosRoutes);
app.use('/entregas', entregasRoutes);
app.use('/usuario', usuariosRoutes);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;