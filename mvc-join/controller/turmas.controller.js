const turmasRepository = require("../repository/turmas.repository");

module.exports = {
  buscaTurmas: (req, res) => {
    turmasRepository
      .buscaTurmas()
      .then((data) => {
        res.send(data);
      })
      .catch((err) => {
        res.status(500).send(err);
      });
  },
  inserirTurma: (req, res) => {
    turmasRepository
      .inserirTurma(req.body)
      .then((data) => {
        res.send(data);
      })
      .catch((err) => {
        res.status(500).send(err);
      });
  },
};
