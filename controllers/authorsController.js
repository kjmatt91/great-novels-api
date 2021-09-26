const models = require('../models/authorsModel')
const { Op } = require('sequelize')

const getAllAuthors = async (request, response) => {
  const authors = await models.author.findAll()

  return response.send(authors)
}

const getAllInfoByAuthorIdOrLastName = async (request, response) => {
  try {
    const { identifier } = request.params

    const author = await models.authors.findOne({
      where: {
        [Op.or]: [
          { id: identifier },
          { lastName: { [Op.like]: `%${identifier}%` } },
        ]
      },
      include: [{
        model: models.titles,
        include: [{ model: models.genres }]
      }]
    })

    return author ? response.send(author) : response.sendStatus(404)
  } catch (error) {
    return response.status(500).send('Unable to retrieve novel')
  }
}

module.exports = { getAllAuthors, getAllInfoByAuthorIdOrLastName }
