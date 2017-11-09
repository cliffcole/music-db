module.exports = (sequelize, DataTypes) => {
  //console.log(DataTypes);
  var Artist = sequelize.define('Artist', {
    name: DataTypes.STRING
  });

  Artist.associate = (models) => {
    Artist.hasMany(models.Album, {foreignKey: { allowNull: false}});
    Artist.hasMany(models.Song);
  }
  return Artist;
};