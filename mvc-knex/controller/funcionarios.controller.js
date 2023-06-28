const funcionariosRepository = require("../repository/funcionarios.repository");

module.exports = {
  buscaTodos: (req, res) => {
    funcionariosRepository
      .buscaTodos()
      .then((data) => {
        res.send(data);
      })
      .catch((error) => {
        res.status(500).send(error);
      });
  },
  buscaPorId: (req, res) => {
    const { id } = req.params;

    if (!id) {
      res.status(404).send({ msg: "Parametro id obrigatorio!" });
    }

    funcionariosRepository
      .buscaPorId(id)
      .then((data) => {
        res.send(data);
      })
      .catch((error) => {
        res.status(500).send(error);
      });
  },
  inserir: (req, res) => {
    const funcionario = req.body;

    if (funcionario.length > 1) {
      res.send({
        msg: "Número de registros informado é maior que o permitido!",
      });
    }

    funcionariosRepository
      .inserir(funcionario)
      .then(() => {
        res.send({
          msg: "Funcionario inserido, com sucesso!",
          funcionario,
        });
      })
      .catch((error) => {
        res.status(500).send(error);
      });
  },
  deletar: (req, res) => {
    const { id } = req.params;

    funcionariosRepository
      .deletar(id)
      .then(() => {
        res.send({ msg: "Funcionario deletado com sucesso!" });
      })
      .catch((error) => {
        res.status(500).send(error);
      });
  },
  atualizar: (req, res) => {
    const funcionario = req.body;
    const { id } = req.params;

    funcionariosRepository
      .atualizar(funcionario, id)
      .then(() => {
        res.send({
          msg: "Funcionario atualizado com sucesso!",
          funcionario,
        });
      })
      .catch((error) => {
        res.status(500).send(error);
      });
  },
  buscaTodosDepDoFunc: (req, res) => {
    funcionariosRepository
      .buscaTodosDepDoFunc()
      .then((data) => {
        res.send(data);
      })
      .catch((error) => {
        res.status(500).send(error);
      });
  },
  buscaDepDoFunc: (req, res) => {
    const { id } = req.params;
    funcionariosRepository
      .buscaDepDoFunc(id)
      .then((data) => {
        res.send(data);
      })
      .catch((error) => {
        res.status(500).send(error);
      });
  },
  inserirDependentes: async (req, res) => {
    const dependente = req.body;

    const funcionario = await funcionariosRepository
      .buscaPorId(dependente.funcionario_id)
      .then((data) => data)
      .catch((error) => {
        return res.status(500).send(error);
      });

    if (funcionario.length <= 0) {
      return res.status(404).send({ msg: "Funcionario não existe!" });
    }

    funcionariosRepository
      .inserirDependentes(dependente)
      .then((data) => {
        return res.send({ msg: "Dependente registrado com sucesso!" });
      })
      .catch((error) => {
        return res.status(500).send(error);
      });
  },
};
