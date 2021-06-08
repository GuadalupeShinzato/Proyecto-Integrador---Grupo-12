const db = require('../Database/models');
const Op = db.Sequelize.Op;

const controller ={
    index: (req, res) => {
        res.render('login');
    },
}
module.exports = controller;