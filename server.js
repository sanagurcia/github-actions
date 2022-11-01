const express = require('express')
const app = express()

app.get('/', (req, res) => {
    res.json({ msg: 'Howdy!' })
})

const PORT = process.env.PORT || 5050

app.listen(PORT, () => {
    console.log(`Simple node app listening on port ${PORT}...`)
})
