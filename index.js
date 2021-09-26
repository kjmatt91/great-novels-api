const express = require('express')
const app = express()
const port = 3000
const { getAllAuthors, getAllInfoByAuthorIdOrLastName } = require('./controllers/authorsController')
const { getAllGenres, getAllNovelsByGenreId } = require('./controllers/genresController')
const { getAllNovels, getAllNovelsWithAuthorGenreOrTitle } = require('./controllers/titlesController')

app.get('/authors', getAllAuthors)
app.get('/authors/:id', getAllInfoByAuthorIdOrLastName)
app.get('/genres', getAllGenres)
app.get('/genres/:id', getAllNovelsByGenreId)
app.get('/novels', getAllNovels)
app.get('/novels/:id', getAllNovelsWithAuthorGenreOrTitle)

app.listen(port, () => {
  // eslint-disable-next-line no-console
  console.log('Listening on port ' + port)
})
