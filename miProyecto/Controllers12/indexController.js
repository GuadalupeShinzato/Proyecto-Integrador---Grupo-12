const db = require('../Database/models');
const Op = db.Sequelize.Op;

const controller = {
    index: (req, res) => {

        db.Product.findAll({
            order: [['createdAt', 'DESC']],
            include: [{
                association: 'usuario'
            }, {
                association: 'comentarios'
            }],
           
        }).then(productosNuevos => {
            db.Product.findAll({
                order: [['createdAt', 'ASC']],
                include: [{
                    association: 'usuario'
                }, {
                    association: 'comentarios'
                }],
                
            }).then(productosViejos => {
                res.render('index', {
                    productosViejos: productosViejos,
                    productosNuevos: productosNuevos

                });
            })
        })

    },
    logout: (req, res) => {

        req.session.destroy()
        res.clearCookie('userId')
        res.redirect('/')
    }

}
module.exports = controller