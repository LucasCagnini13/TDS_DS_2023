var exemplo = [
  {
    nome: "Guilherme",
    cpf: "11111111111",
  },
  {
    nome: "Felipe",
    cpf: "10741526999",
  },
  {
    nome: "Naiara",
    cpf: "99988877788",
  },
];

// for (let i = 0; i < exemplo.length; i++) {
//   console.log(cpfMask(exemplo[i].cpf));
// }

exemplo.forEach((e) => {
  console.log(cpfMask(e.cpf));
});

function cpfMask(cpf) {
  return `${cpf.substring(0, 3)}.${cpf.substring(3, 6)}.${cpf.substring(
    6,
    9
  )}-${cpf.substring(9, 11)}`;
}
