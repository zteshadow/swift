
const express = require("express")
const app = express()

let notes = [
  {
    id: 1,
    content: "HTML is easy",
    date: "2022-05-30T17:30:31.098Z",
    important: true
  },
  {
    id: 2,
    content: "Browser can execute only Javascript",
    date: "2022-05-30T18:39:34.091Z",
    important: false
  },
  {
    id: 3,
    content: "GET and POST are the most important methods of HTTP protocol",
    date: "2022-05-30T19:20:14.298Z",
    important: true
  }
]

// soccer club list
app.get('/api/clubs', (request, response) => {
    response.send('soccer list')
})

app.get('/api/clubs/:id', (request, response) => {
    response.send('soccer detail')
})

app.get('/api/books', (request, response) => {
    response.send('book list')
})

app.get('/api/books/:id', (request, response) => {
    const id = request.params.id
    console.log("book id: ", id);
    
    response.send('book detail')
})

const PORT = 3001
app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`)
})
