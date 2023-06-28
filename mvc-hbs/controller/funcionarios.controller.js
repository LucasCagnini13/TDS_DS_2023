const funcionariosRepository = require("../repository/funcionarios.repository");

module.exports = {
  buscaTodos: async (req, res) => {
    const data = await funcionariosRepository
      .buscaTodos()
      .then((result) => result)
      .catch((error) => {
        res.status(500).send(error);
      });
    res.render("funcionarios", { data });
  },
  buscaPorId: async (req, res) => {
    const { id } = req.params;

    let data = await funcionariosRepository.buscaPorId(id);

    data = data[0];

    data.DATA_NSC = formataData(data.DATA_NSC);

    res.render("cadastro_funcionario", { data });
  },
  inserir: async (req, res) => {
    var funcionario = req.body;

    console.log(funcionario);

    // if ternario para validar o status retornado do formulario cadastro_funcionario.hbs
    funcionario.STATUS = funcionario.STATUS == "on";
    funcionario.CPF = funcionario.CPF.replaceAll(".", "").replaceAll("-", "");

    if (funcionario.ID == "") {
      funcionario.ID = null;
      await funcionariosRepository.inserir(funcionario);
    } else {
      const { ID } = funcionario;
      await funcionariosRepository.atualizar(funcionario, ID);
    }

    res.redirect("funcionarios");
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
  buscaTodosDepDoFunc: async (req, res) => {
    const data = await funcionariosRepository
    .buscaTodosDepDoFunc()
    .then((result) => result)
    .catch((error) => {
      res.status(500).send(error);
    });

    const funcionarios = await funcionariosRepository.
    buscaTodos();



  res.render("dependentes", { data , funcionarios});

  },
  buscaDepDoFunc: async (req, res) => {
    const  {id}  = req.params;
    let data = await funcionariosRepository
      .buscaDepDoFunc(id);

      data = data[0];

     const funcionarios = await funcionariosRepository
      .buscaTodos();

  

      res.render("cadastro_dependentes", { data, funcionarios,
        returnID( id, idSelected){
    
             return id == idSelected;
       }});
  },
 
  deletarDependentes: (req,res)=>{

    const { id } = req.params;

    funcionariosRepository.deletarDependentes(id).then((result) => {
      
      res.send({ msg: "Dependente deletado com sucesso!" });
    }).catch((error) => {
      res.status(505).send(error);
    })
  },
  atualizarDependente: (req, res) => {
    const dependente = req.body;
    const { id } = req.params;

    funcionariosRepository
      .atualizar(dependente, id)
      .then(() => {
        res.send({
          msg: "Dpendente atualizado com sucesso!",
          dependente,
        });
      })
      .catch((error) => {
        res.status(500).send(error);
      });
  },
  inserirDependente: async (req, res) => {
    var dependente = req.body;

    const funcionario = await funcionariosRepository
      .buscaPorId(dependente.funcionario_id)
      .then((data) => data)
      .catch((error) => {
        return res.status(500);
      });

    if (funcionario.length <= 0) {
      return res.status(404);
    }
/*
    dependente.ID = null;

     funcionariosRepository
      .inserirDependentes(dependente)
      .then((data) => data)
      .catch((error) => {
        return res.status(500);
      }); 
      */
      console.log(dependente);

      if (dependente.ID == "") {
        dependente.ID = null;
        await funcionariosRepository.inserirDependentes(dependente);
      } else {
        const { ID } = dependente;
        await funcionariosRepository.atualizarDependente(dependente, ID);
      }
  
      res.redirect("/funcionarios/dependentes");
   
  }
};

function formataData(end_date) {
  var ed = new Date(end_date);
  var d = ed.getDay();
  var m = ed.getMonth() + 1;
  var y = ed.getFullYear();
  return "" + y + "-" + (m <= 9 ? "0" + m : m) + "-" + (d <= 9 ? "0" + d : d);
}
