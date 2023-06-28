const con = require("../mysql-connection");

module.exports = {
  buscaTodos: () => {
    return con.select().from("funcionarios").orderByRaw("id desc");
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
    return con("dependentes").innerJoin("funcionarios","funcionarios.id","dependentes.funcionario_id").orderByRaw("dependentes.ID desc");
  },
  buscaDepDoFunc: (id) => {
   /* return con
      .select(
        "DEPENDENTES.ID",
        "DEPENDENTES.NOME ",
        "FUNCIONARIOS.ID",
        "DEPENDENTES.TELEFONE "
      )
      .from("FUNCIONARIOS AS FUN")
      .innerJoin("DEPENDENTES AS DEP", "FUN.ID", "DEP.FUNCIONARIO_ID")
      .where("DEP.ID", id);*/

      return con("dependentes").innerJoin("funcionarios","funcionarios.id","dependentes.funcionario_id").where("dependentes.id", id);
  
  },
  inserirDependentes: (parametro) => {
    return con.insert(parametro).into("dependentes");
  },
  deletarDependentes : (id) =>{
    return con("dependentes").where({id : id}).del();
  },
  atualizarDependente: (dependente, id) => {
    return con("dependentes").update(dependente).where({ id: id });
  },
};
