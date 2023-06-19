const express = require('express');
const router = express.Router();

const proyectosController = require("../controllers/proyectosController");

// Middlewares
const uploadFile = require('../middlewares/multerMiddlewareProyecto');

// Vista de proyectos
router.get("/categorias", proyectosController.categorias);

//Listado de proyectos por categoria
router.get("/categorias/:categoria", proyectosController.categoria);

//  CRUD proyectos
router.get("/create", proyectosController.crear);
router.post("/create", uploadFile.single("imagen"), proyectosController.guardado);
router.get("/detalle/:id", proyectosController.detalle);

module.exports = router;