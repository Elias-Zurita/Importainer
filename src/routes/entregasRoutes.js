const express = require('express');
const router = express.Router();

const entregasController = require("../controllers/entregasController");

// Middlewares
const uploadFile = require('../middlewares/multerMiddlewareEntrega');

router.get("/list", entregasController.list);
router.get("/detalle/:id", entregasController.detalle);
router.get("/create", entregasController.crear);
router.post("/create", uploadFile.single("imagen"), entregasController.guardado);
router.get("/edit/:id", entregasController.editar);
router.post("/edit/:id",uploadFile.single("imagen"), entregasController.actualizar);
router.post("/delete/:id", entregasController.eliminar);

module.exports = router;