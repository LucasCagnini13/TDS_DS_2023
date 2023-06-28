const con = require("../mysql-connection");

module.exports = {
  buscaTurmas: () => {
    return con
      .select(
        "T.ID",
        "A.NOME AS NOME_ALUNO",
        "P.NOME AS NOME_PROFESSOR",
        "NRO_SALA"
      )
      .from("TURMAS AS T")
      .innerJoin("ALUNOS AS A", "T.ALUNO_ID", "A.ID")
      .innerJoin("PROFESSORES AS P", "T.PROFESSOR_ID", "P.ID");
  },
  inserirTurma: (turma) => {
    return con.insert(turma).into("turmas");
  },
};
