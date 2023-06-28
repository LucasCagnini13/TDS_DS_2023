const knex = require("knex");

module.exports = knex({
  client: "mysql",
  connection: {
    host: "127.0.0.1",
    port: 3307,
    user: "root",
    password: "66571289",
    database: "empresa2",
  },
});
