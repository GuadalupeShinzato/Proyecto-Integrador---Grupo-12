const db = require('../Database/models');
const Op = db.Sequelize.Op;

const controller ={
    index: (req, res) =>{
        db.Product.findAll({
            where: {title:{[Op.like]:"%"+req.query.search+"%"}}
        })
        .then(productos =>{
            res.render('search-results',{productos:productos})
        })
       
    },
}
module.exports = controller;