const express = require('express');
const router = express.Router();
const usuariosController = require("../controllers/usuariosController");

router.get("/register", usuariosController.register);


module.exports = router;