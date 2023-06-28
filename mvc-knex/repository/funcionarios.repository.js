const con = require("../mysql-connection");

module.exports = {
  buscaTodos: () => {
    return con.select().from("funcionarios");
  },
  buscaPorId: (id) => {
    return con.select().from("funcionarios").where("id", "=", id);
  },
  inserir: (funcionario) => {
    return con.insert(funcionario).into("funcionarios");
  },
  deletar: (id) => {
    return con("funcionarios").where({ id: id }).del();
  },
  atualizar: (funcionario, id) => {
    return con("funcionarios").update(funcionario).where({ id: id });
  },
  buscaTodosDepDoFunc: () => {
    return con("funcionarios").innerJoin(
      "dependentes",
      "funcionarios.id",
      "dependentes.funcionario_id"
    );
  },
  buscaDepDoFunc: (id) => {
    return con
      .select(
        "FUN.ID",
        "FUN.NOME AS NOME_FUNCIONARIO",
        "DEP.NOME AS NOME_DEPENDENTE",
        "DEP.TELEFONE AS TELEFONE_DEPENDENTE"
      )
      .from("FUNCIONARIOS AS FUN")
      .innerJoin("DEPENDENTES AS DEP", "FUN.ID", "DEP.FUNCIONARIO_ID")
      .where("FUN.ID", id);
  },
  inserirDependentes: (parametro) => {
    return con.insert(parametro).into("dependentes");
  },
};
