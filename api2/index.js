const express = require("express");
// const bodyParser = require("body-parser");

const app = express();

app.use(express.json());

app.get("/sucesso", (request, response) => {
  response.send({ data: "Sucesso!" });
});

app.post("/login", (request, response) => {
  //   const usuario = request.body.usuario;
  //   const senha = request.body.senha;
  const { usuario, senha } = request.body;

  response.send({
    message: "Autenticação realizada com sucesso!",
    data: `${usuario} - ${senha}`,
    data2: usuario + " - " + senha,
    abobora: `qualquer${usuario} coisa ${senha}`,
  });
});

app.listen(8080, (error) => {
  if (error) {
    console.log(error);
  } else {
    console.log("Servidor está em execução na porta 8080 👍");
  }
});
