const express = require("express");
const funcionariosController = require("../controller/funcionarios.controller");
const routes = new express.Router();
const funcionariosRepository = require("../repository/funcionarios.repository");

routes.get("/", funcionariosController.buscaTodos);
routes.get("/:id([0-9]+)", funcionariosController.buscaPorId);
routes.post("/", funcionariosController.inserir);
routes.delete("/:id([0-9]+)", funcionariosController.deletar);
routes.put("/:id([0-9]+)", funcionariosController.atualizar);
routes.get("/dependentes/", funcionariosController.buscaTodosDepDoFunc);
routes.get("/dependentes/:id([0-9]+)", funcionariosController.buscaDepDoFunc);
routes.post("/dependentes/", funcionariosController.inserirDependente);
routes.delete("/dependentes/:id([0-9]+)", funcionariosController.deletarDependentes);
routes.put("/dependentes/:id([0-9]+)", funcionariosController.atualizarDependente);

//ROTAS RENDER
routes.get("/cadastro_funcionario", (req, res) =>
  res.render("cadastro_funcionario")
);

routes.get("/cadastro_dependentes",async (req, res) =>{

  const funcionarios = await funcionariosRepository
      .buscaTodos();
   
  

  res.render("cadastro_dependentes",{funcionarios, 
    returnID ( id, idSelected){

         return id == idSelected;
   } });
});

module.exports = routes;
