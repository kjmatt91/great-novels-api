const titles = (connection, Sequelize) => {
  return connection.define('titles', {
    id: { type: Sequelize.INTEGER, autoIncrement: true, primaryKey: true },
    author: { type: Sequelize.STRING, allowNull: false },
  }, { paranoid: true })
}

module.exports = { titles }
