const models = require('../models/titlesGenresModel')
const { Op } = require('sequelize')

const getAllNovels = async (request, response) => {
  const titles = await models.titles.findAll({
    include: [{ model: models.authors }, { model: models.genres }]
  })

  return response.send(titles)
}

const getAllNovelsWithAuthorGenreOrTitle = async (request, response) => {
  try {
    const { identifier } = request.params

    const title = await models.titles.findOne({
      where: {
        [Op.or]: [
          { id: identifier },
          { title: { [Op.like]: `%${identifier}%` } },
        ]
      },
      include: [{ model: models.authors }, { model: models.Genres }]
    })

    return title ? response.send(title) : response.sendStatus(404)
  } catch (error) {
    return response.status(500).send('Unable to retrieve novel')
  }
}

module.exports = { getAllNovels, getAllNovelsWithAuthorGenreOrTitle }
