const titlesGenres = (connection, Sequelize) => {
  return connection.define('titlesGenres', {
    id: { type: Sequelize.INTEGER, autoIncrement: true, primaryKey: true },
    titleId: { type: Sequelize.INTEGER, allowNull: false },
    genreId: { type: Sequelize.INTEGER, allowNull: false }
  }, { paranoid: true })
}

module.exports = titlesGenres
