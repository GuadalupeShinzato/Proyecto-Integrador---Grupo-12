const db = require('../Database/models');
const Op = db.Sequelize.Op;

const controller = {
    index: (req, res) => {
        db.Product.findByPk(req.params.id, {
            include: {
                association: "comentarios",
                include: {
                    association: "usuario"
                }
            }
        }).then(producto => {
            res.render('product', {
                producto: producto
            });
        })

    },

    add: (req, res) => res.render('product-add'),

    create: (req, res) =>{
        db.Product.create({
            title: req.body.titulo,
            author: req.body.autor,
            cover: req.body.portada,
            description: req.body.descripcion   
        })
        .then(producto=>{
            res.redirect("/product/id/"+producto.id)
        })
    }
}
module.exports = controller;