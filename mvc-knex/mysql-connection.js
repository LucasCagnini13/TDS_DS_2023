const knex = require("knex");

module.exports = knex({
  client: "mysql",
  connection: {
    host: "127.0.0.1",
    port: 3306,
    user: "root",
    password: "root",
    database: "empresa",
  },
});
