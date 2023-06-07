const express = require('express');
const router = express.Router();

const entregasController = require("../controllers/entregasController");

router.get("/list", entregasController.list);
router.get("/detalle/:id", entregasController.detalle);


module.exports = router;