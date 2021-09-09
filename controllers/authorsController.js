const models = require('../models')

const getAllAuthors = async (request, response) => {
  const authors = await models.author.findAll()

  return response.send(authors)
}

const getAllInfoByAuthorId = async (request, response) => {
  const { id } = request.params

  const author = await models.authors.findOne({
    where: { id },
    include: [{
      model: models.titles,
      include: [{ model: models.genres }]
    }]
  })

  return author ? response.send(author) : response.sendStatus(404)
}

module.exports = { getAllAuthors, getAllInfoByAuthorId }
