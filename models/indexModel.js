const Sequelize = require('sequelize')
const titlesModel = require('./titlesModel')
const authorsModel = require('./authorsModel')
const genresModel = require('./genresModel')
const titlesGenresModel = require('./titlesGenresModel')
const allConfigs = require('../config/sequelize')
const environment = process.env.NODE_ENV || 'development'
const {
  username, password, database, host, dialect
} = allConfigs[environment]

const connection = new Sequelize(database, username, password, {
  host, dialect
})

const titles = titlesModel(connection, Sequelize)
const authors = authorsModel(connection, Sequelize)
const genres = genresModel(connection, Sequelize)
const titlesGenres = titlesGenresModel(connection, Sequelize)

titles.belongsTo(authors)
authors.hasMany(titles)

genres.belongsToMany(titles, { through: titlesGenres })
titles.belongsToMany(genres, { through: titlesGenres })

module.exports = { titles, authors, genres, titlesGenres }
