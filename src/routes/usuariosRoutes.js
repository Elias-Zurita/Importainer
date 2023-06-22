const express = require('express');
const router = express.Router();
const usuariosController = require("../controllers/usuariosController");

// Middlewares
const validations = require('../middlewares/validateMiddleware');
const authMiddleware = require('../middlewares/authMiddleware');
const guestMiddleware = require('../middlewares/guestMiddleware');

router.get("/register", usuariosController.register);
router.post("/register", usuariosController.processRegister);
router.get("/login", guestMiddleware, usuariosController.login);
router.post("/login",validations.login, usuariosController.loginProcess);
router.get("/profile", authMiddleware, usuariosController.profile);

// falta el logout

module.exports = router;