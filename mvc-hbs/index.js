const express = require("express");
const hbs = require("hbs");
const routes = require("./routes/index.js");

const app = express();

app.use(express.urlencoded({ extended: true }));
app.use(express.json());

hbs.registerPartials(`${__dirname}/views`);
app.set("view engine", "hbs");
app.set("view options", {
  layout: "layouts/default",
});

app.use(express.static("public"));

app.use(routes);

hbs.registerHelper("formataCPF", (data) => {
  return data
    .replace(/[^\d]/g, "")
    .replace(/(\d{3})(\d{3})(\d{3})(\d{2})/, "$1.$2.$3-$4");
});

hbs.registerHelper("formataTelefone", (data) => {
  return data.replace(/(\d{2})(\d{1})(\d{4})(\d{4})/, "($1) $2 $3-$4");
});

hbs.registerHelper("formataDataNsc", (data) => {
  const dataCompleta = new Date(data);
  const dia = String(dataCompleta.getDay()).padStart(2, "0");
  const mes = String(dataCompleta.getMonth() + 1).padStart(2, "0");
  const ano = dataCompleta.getFullYear();
  return `${dia}/${mes}/${ano}`;
});

hbs.registerHelper("formataDataNsc", (data) => {
  const dataCompleta = new Date(data);
  const dia = String(dataCompleta.getDay()).padStart(2, "0");
  const mes = String(dataCompleta.getMonth() + 1).padStart(2, "0");
  const ano = dataCompleta.getFullYear();
  return `${dia}/${mes}/${ano}`;
});

hbs.registerHelper("conpare", (ID,data) => {
 
  if(ID  == data.id){
    return true;
  }else{
    return false;
  }
});


app.listen(8080, (error) => {
  if (error) {
    console.log(error);
  }
  console.log("O servidor esta rodando na porta 8080! 👍");
});
