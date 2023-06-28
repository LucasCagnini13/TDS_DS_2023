const input = window.document.getElementById("input");
const ul = window.document.querySelector("ul");
const db_lista_li = JSON.parse(window.localStorage.getItem("lista"));

db_lista_li.forEach((item) => adicionar(item));

function adicionar(item) {
  var li = window.document.createElement("li");
  var value = item ? item.texto : input.value;
  var value_li = window.document.createTextNode(value);

  if (input.value.trim() !== "" || item) {
    li.appendChild(value_li);
    ul.appendChild(li);
  }

  if (!item) {
    adiciona_lista();
  }

  if (item) {
    if (item.checked) {
      li.setAttribute("class", "checked");
    }
  }

  input.value = "";
  input.focus();
}

window.document.querySelector("ul").addEventListener("click", (e) => {
  e.target.classList.toggle("checked");
  adiciona_lista();
});

window.document.getElementById("input").addEventListener("keypress", (e) => {
  if (e.key === "Enter") {
    adicionar();
  }
});

window.document.addEventListener("contextmenu", (e) => {
  e.preventDefault();
  if (e.target.tagName === "LI") {
    e.target.remove();
    adiciona_lista();
  }
});

function adiciona_lista() {
  const lista_de_li = window.document.querySelectorAll("li");
  const lista = [];
  lista_de_li.forEach((item) => {
    lista.push({ texto: item.innerText, checked: item.className == "checked" });
  });

  window.localStorage.setItem("lista", JSON.stringify(lista));
}
