const Router = require('express')
const router = new Router()
const UserController = require('../controller/user.controller')
const QuizController = require('../controller/quiz.controller')

router.post('/login', UserController.checkUser)
router.post('/signup', UserController.createUser)
router.get('/quizEN', QuizController.getTasksEN)
router.get('/quizPl', QuizController.getTasksPL)
router.get('/quizUA', QuizController.getTasksUA)
router.get('/abonement',UserController.getAbonement)

module.exports = router 