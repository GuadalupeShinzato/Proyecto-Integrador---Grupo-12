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
    logout: (req,res)=> {

        req.session.destroy()
        res.clearCookie('userId') 
        res.redirect('/')
    }

}
module.exports = controller