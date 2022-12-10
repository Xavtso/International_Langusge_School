const db = require('../database')
let currentAccount;
class UserController {
  async createUser(req,res){
     
    const raw = JSON.stringify(req.body) 
    const user = JSON.parse(raw)
    console.log(user);
    console.log(user.name_, user.surname, user.email, user.password_ ); 
    const newUser = await db.query('Insert into users(name_,surname,email,password_) values($1, $2, $3, $4) RETURNING *', [user.name_,user.surname,user.email,user.password_])
    let message = 'Data accepted'
    res.send(message);
  }
  
  async checkUser(req,res){
    const convert = JSON.stringify(req.body)   
    console.log(convert);
    const converted = JSON.parse(convert)
    console.log(converted);
    const {login, pin} = converted;
    console.log(login,pin);
    const InfoPerson = await db.query('SELECT * from users');
    const persons_str = JSON.stringify(InfoPerson.rows);
    console.log(persons_str);
    const person = JSON.parse(persons_str)
    console.log(person);
    currentAccount = person.find(acc => acc.email === login && acc.password_ === pin)
    res.json(currentAccount);
    

  }

  
  
  async getAbonement(req,res){
    const raw = await db.query("SELECT * FROM abonements;")
    const mid = JSON.stringify(raw.rows);
    const done = JSON.parse(mid);
    res.json(done)
  }
}

module.exports = new UserController() 

// how to destruct object?


