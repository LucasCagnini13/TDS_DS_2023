const express = require("express");
const turmaRoute = require("../routes/turmas.router");

const routes = new express.Router();

routes.use("/turmas", turmaRoute);

module.exports = routes;
