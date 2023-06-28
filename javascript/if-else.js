var cond = true;

if (cond) {
  console.log("Verdadeiro");
} else if (cond == true) {
  console.log("Verdadeiro");
} else {
  console.log("Falso");
}

// exemplo do Colega Dilceu Jr
var cpf = "12345678900";
console.log("Trata CPF");
console.log(
  cpf.substring(0, 3) +
    "." +
    cpf.substring(3, 6) +
    "." +
    cpf.substring(6, 9) +
    "-" +
    cpf.substring(9, 11)
);
