const express = require('express');
const router = express.Router();

const proyectosController = require("../controllers/proyectosController");

// Middlewares
const uploadFile = require('../middlewares/multerMiddlewareProyecto');

router.get("/categorias", proyectosController.categorias);
router.get("/classic", proyectosController.classic);
router.get("/comfort", proyectosController.comfort);
router.get("/premium", proyectosController.premium);
router.get("/casacampo", proyectosController.casacampo);
router.get("/casatiny", proyectosController.casatiny);
router.get("/duplex", proyectosController.duplex);
router.get("/combo", proyectosController.combo);
router.get("/exteriores", proyectosController.exteriores);
router.get("/emprendimientos", proyectosController.oficinas);
router.get("/oficinas", proyectosController.classic);

router.get("/create", proyectosController.crear);
router.post("/create", uploadFile.single("imagen"), proyectosController.guardado);

module.exports = router;