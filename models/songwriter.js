'use strict';
module.exports = (sequelize, DataTypes) => {
  var Songwriter = sequelize.define('Songwriter', {
    name: DataTypes.STRING,
    description: DataTypes.TEXT
  });
  Songwriter.associate = (models) => {
    Songwriter.hasMany(models.Song);
  }
  return Songwriter;
};