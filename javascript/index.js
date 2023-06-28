var a = [
  {
    nomes: ["Guilherme", "felipe", {}, 123, 1.5, "texto"],
  },
  {
    nomes: ["Marcio", "felipe", {}],
  },
  {
    nomes: ["Marcia", "felipe", {}],
  },
  {
    nomes: ["Fridaa", "felipe", {}],
  },
  1,
];

var b = a.length;

try {
  a.forEach((data) => {
    data.nomes
      ? console.log(data.nomes[data.nomes.length - 1])
      : console.log(data);
  });

  // for (var i = 0; i < a.length; i++) {
  //   if (a[i].nomes) console.log(a[i].nomes[0]);
  // }
} catch (error) {
  console.log(
    "DEU ALGUM ERRO QUE EU NÃO SEI!, SE VIRA COM ESSE LOG!",
    error.message
  );
}

// console.log("RESPOSTAAA AQUIII ====" + a[0].nomes);
// console.log("TOTAL de REGISTROS ====" + b);
