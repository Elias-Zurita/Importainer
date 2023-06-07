const express = require('express');
const router = express.Router();

const entregasController = require("../controllers/entregasController");

router.get("/list", entregasController.list);


module.exports = router;