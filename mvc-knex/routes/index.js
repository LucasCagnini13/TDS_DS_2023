const express = require("express");
const funcionariosRoutes = require("./funcionarios.router");

const routes = new express.Router();

routes.use("/funcionarios", funcionariosRoutes);

module.exports = routes;
