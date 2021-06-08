const db = require('../Database/models');
const Op = db.Sequelize.Op;

const controller = {
    index: (req, res) => {

        db.Product.findAll().then(productos => {
            res.render('index', {
                productos: productos
            });
        })

    },
}
module.exports = controller