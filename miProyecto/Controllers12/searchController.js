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
                },
                include: [{
                    association: 'usuario'
                }, {
                    association: 'comentarios'
                }],
            })
            .then(productos => {
                console.log(productos)
                if (productos == []) {
                    res.render('search-results', {
                        productos: productos,
                    })
                }
                res.render('search-results', {
                    productos: productos,
                })
            })

    },
}
module.exports = controller;