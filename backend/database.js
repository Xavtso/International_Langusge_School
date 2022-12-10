const Pool = require('pg').Pool

const pool = new Pool({
    user: "postgres",               
    password: 'vh2004r44',
    host: "localhost",          //PostgreSQL
    port: 5432,
    database: "quiz"
})

module.exports = pool 