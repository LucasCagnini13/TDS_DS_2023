const express = require("express");
const turmasController = require("../controller/turmas.controller");

const routes = new express.Router();

routes.get("/", turmasController.buscaTurmas);
routes.post("/", turmasController.inserirTurma);

module.exports = routes;
