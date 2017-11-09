module.exports = (sequelize, DataTypes) => {
  var Track = sequelize.define('Track', {
    length: DataTypes.INTEGER
    
  });
  Track.associate = (models) => {
    Track.belongsTo(models.Album);
    
  }
  return Track;
};