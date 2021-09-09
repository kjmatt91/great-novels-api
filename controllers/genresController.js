const models = require('../models')

const getAllGenres = async (request, response) => {
  const genres = await models.genres.findAll()

  return response.send(genres)
}

const getAllNovelsByGenreId = async (request, response) => {
  const { id } = request.params

  const genre = await models.genres.findOne({
    where: { id },
    include: [{
      model: models.titles,
      include: [{ model: models.authors }]
    }]
  })

  return genre ? response.send(genre) : response.sendStatus(404)
}

module.exports = { getAllGenres, getAllNovelsByGenreId }
