const express = require('express')
const app = express()
var random_x = 0

app.get('/', (req, res) => {
    res.send('Servus!')
})

app.listen(8000, () => {
    console.log("Simple node app listening on port 8000...")
})