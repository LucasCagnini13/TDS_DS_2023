const minhaPromessa = new Promise((resolve, reject) => {
  const resultado = 1 + 1;
  setTimeout(() => {
    if (resultado == 2) {
      resolve("O resultado é igual a 2");
    } else {
      reject("O resultado não é 2, lasco!");
    }
  }, 1000);
});

async function main() {
  console.log("Iniciou");

  await minhaPromessa
    .then((data) => {
      console.log(data);
    })
    .catch((error) => {
      console.log(error);
    });

  console.log("Finalizou");
}

main();
