const express = require('express');
const router = express.Router();

const mainController = require("../controllers/mainController");

router.get("/", mainController.index);
router.get("/sistemaConstructivo", mainController.sistemaConstructivo);
router.get("/contacto", mainController.contacto);

module.exports = router;