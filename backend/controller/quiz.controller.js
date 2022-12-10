const db = require('../database');

class QuizController{

    async getTasksEN(req,res){
        const tasks = await db.query('select * from quizen')
        const task = JSON.stringify(tasks.rows);
        const jsTask = JSON.parse(task)
          res.send(jsTask)
      } 
    async getTasksPL(req,res){
        const tasks = await db.query('select * from quizpl')
        const task = JSON.stringify(tasks.rows);
        const jsTask = JSON.parse(task)
          res.send(jsTask)
      } 
    async getTasksUA(req,res){
        const tasks = await db.query('select * from quizUA')
        const task = JSON.stringify(tasks.rows);
        const jsTask = JSON.parse(task)
          res.send(jsTask)
      } 
}

module.exports = new QuizController()