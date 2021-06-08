const db = require('../Database/models');
const Op = db.Sequelize.Op;

const controller ={
    index: (req, res) => res.render('profile'),
    edit: (req, res) => res.render('profile-edit'),
}
module.exports = controller;