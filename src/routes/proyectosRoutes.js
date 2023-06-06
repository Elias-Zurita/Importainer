const express = require('express');
const router = express.Router();

const proyectosController = require("../controllers/proyectosController");

router.get("/list", proyectosController.list);


module.exports = router;