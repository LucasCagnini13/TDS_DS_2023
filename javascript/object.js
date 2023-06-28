var pessoa = [
  { nome: "Guilherme Pires", sexo: "M", idade: 25 },
  { nome: "Larissa", sexo: "F", idade: 16 },
];

for (var i = 0; i < pessoa.length; i++) {
  if (pessoa[i].sexo === "M") {
    console.log(pessoa[i].sexo);
  }
}
