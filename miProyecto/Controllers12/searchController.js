const db = require('../Database/models');
const Op = db.Sequelize.Op;

const controller = {
    index: (req, res) => {
        db.Product.findAll({
                where: {
                    [Op.or]: [{
                            title: {
                                [Op.like]: "%" + req.query.search + "%"
                            }
                        },
                        {
                            description: {
                                [Op.like]: "%" + req.query.search + "%"
                            }
                        }
                    ]
                }
            })
            .then(productos => {
                if (productos) {
                    res.render('search-results', {
                        productos: productos,
                        respuesta: 'No existen resultados para su criterio de busqueda'
                    })
                }
                res.render('search-results', {
                    productos: productos , 
                    respuesta: null
                })
            })

    },
}
module.exports = controller;