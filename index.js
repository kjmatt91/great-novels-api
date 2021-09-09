const express = require('express')
const app = express()
const port = 3000
const { getAllAuthors, getAllInfoByAuthorId } = require('./controllers/authorsController')
const { getAllGenres, getAllNovelsByGenreId } = require('./controllers/genresController')
const { getAllNovels, getAllNovelsWithAuthorGenre } = require('./controllers/titlesController')

app.get('/authors', getAllAuthors)
app.get('/authors/:id', getAllInfoByAuthorId)
app.get('/genres', getAllGenres)
app.get('/genres/:id', getAllNovelsByGenreId)
app.get('/novels', getAllNovels)
app.get('/novels/:id', getAllNovelsWithAuthorGenre)

app.listen(port, () => {
  // eslint-disable-next-line no-console
  console.log('Listening on port ' + port)
})
