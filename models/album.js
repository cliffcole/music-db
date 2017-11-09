module.exports = (sequelize, DataTypes) => {
  var Album = sequelize.define('Album', {
    title: DataTypes.STRING,
    description: DataTypes.TEXT,
    releaseDate: DataTypes.INTEGER

  });
  Album.associate = (models) => {
    Album.belongsTo(models.Artist);
    Album.hasMany(models.Track);
  }
  return Album;
};