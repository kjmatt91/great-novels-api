const Authors = (connection, Sequelize) => {
  return connection.define('authors', {
    id: { type: Sequelize.INTEGER, autoIncrement: true, primaryKey: true },
    author: { typer: Sequelize.STRING, allowNull: false },
  }, { paranoid: true })
}

module.exports = Authors
