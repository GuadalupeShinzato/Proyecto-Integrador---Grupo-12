const db = require('../Database/models');
const Op = db.Sequelize.Op;

const controller ={
    index: (req, res) => res.render('register'),
}
module.exports = controller;