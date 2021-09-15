const authors = (connection, Sequelize) => {
  return connection.define('authors', {
    id: { type: Sequelize.INTEGER, autoIncrement: true, primaryKey: true },
    author: { type: Sequelize.STRING, allowNull: false },
  }, { paranoid: true })
}

module.exports = { authors }
