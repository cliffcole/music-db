const express = require('express');
const models = require('./models');
const app = express();


app.get('/', (req,res) => {
    models.Artist.findAll().then((artist) => {
        for(let x = 0; x < artist.length; x++){
            console.log(artist[x].name);
        }
        res.send("HELLLLLLOOOOO");
    })
    
})

models.sequelize.sync({force: true}).then(function() {
    app.listen(3001);
    
})


