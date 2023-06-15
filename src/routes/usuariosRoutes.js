const express = require('express');
const router = express.Router();
const usuariosController = require("../controllers/usuariosController");

router.get("/register", usuariosController.register);
router.get("/login", usuariosController.login);

module.exports = router;