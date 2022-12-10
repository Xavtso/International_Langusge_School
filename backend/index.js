const express = require('express')
const userRouter = require('./routes/user.routes')
const cors = require('cors')
const PORT = process.nextTick.PORT || 5501
const app = express()

app.use(cors())
app.use(express.json()) 
app.use('/', userRouter)

app.listen(PORT, function () {console.log(`Server listening on port: ${PORT}`);}) // http://localhost:8080