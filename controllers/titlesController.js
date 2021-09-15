const models = require('../models/titlesGenresModel')

const getAllNovels = async (request, response) => {
  const titles = await models.titles.findAll({
    include: [{ model: models.authors }, { model: models.genres }]
  })

  return response.send(titles)
}

const getAllNovelsWithAuthorGenre = async (request, response) => {
  const { id } = request.params

  const title = await models.titles.findOne({
    where: { id },
    include: [{ model: models.authors }, { model: models.Genres }]
  })

  return title ? response.send(title) : response.sendStatus(404)
}

module.exports = { getAllNovels, getAllNovelsWithAuthorGenre }
