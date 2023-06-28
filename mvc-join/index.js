const express = require("express");
const routes = require("./routes/index.js");

const app = express();

app.use(express.json());

app.use(routes);

app.listen(8080, (error) => {
  console.log("Servidor ta on na porta 8080! 👍");
});
