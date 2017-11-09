module.exports = (sequelize, DataTypes) => {
  var Song = sequelize.define('Song', {
    name: DataTypes.STRING,
    description: DataTypes.TEXT
  });
  Song.associate = (models) => {
      Song.belongsToMany(models.Track, {through: 'SongsToTracks'});
  }
  return Song;
};