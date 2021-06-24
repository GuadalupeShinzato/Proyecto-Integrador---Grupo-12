const db = require('../Database/models');
const Op = db.Sequelize.Op;

const controller = {
    index: (req, res) => {
        db.Product.findByPk(req.params.id, {
            include: [{
                association: "comentarios",
                include: {
                    association: "usuario"
                }
            }, {
                association: "usuario"
            }],
            order: [
                ['comentarios', 'created_at', 'desc']
            ],
        }).then(producto => {
            res.render('product', {
                producto: producto
            });
        })

    },

    add: (req, res) => {
        if (req.session.usuario) {
            res.render('product-add')
        } else {
            return res.redirect('/')
        }

    },

    create: (req, res) => {
        if (req.session.usuario) {
            db.Product.create({
                    title: req.body.titulo,
                    author: req.body.autor,
                    cover: req.file.filename,
                    description: req.body.descripcion,
                    users_id: req.session.usuario.id
                })
                .then(producto => {
                    res.redirect("/product/id/" + producto.id)
                })
        } else {
            res.render('product-add', {
                error: 'No se pueden dejar campos vacíos'
            })
        }
    },
    edit: (req, res) => {
        if (req.session.usuario) {
            db.Product.findByPk(req.params.id).then(data => {
                if (req.session.usuario.id == data.users_id) {
                    res.render('product-edit', {
                        producto: data
                    })
                } else {
                    res.redirect('/')
                }
            })
        } else {
            res.redirect('/')
        }

    },

    update: (req, res) => {
        if (req.body.portada) {
            db.Product.update({
                    title: req.body.titulo,
                    author: req.body.autor,
                    cover: req.file.filename,
                    description: req.body.descripcion,
                    users_id: req.session.usuario.id
                }, {
                    where: {
                        id: req.body.id
                    }
                })
                .then(producto => {
                    res.redirect("/product/id/" + req.body.id)
                })
        } else {
            db.Product.update({
                    title: req.body.titulo,
                    author: req.body.autor,
                    description: req.body.descripcion,
                    users_id: req.session.usuario.id
                }, {
                    where: {
                        id: req.body.id
                    }
                })
                .then(producto => {
                    res.redirect("/product/id/" + req.body.id)
                })
        }

    },

    delete: (req, res) => {
        db.Product.destroy({
            where: {
                id: req.params.id
            }
        }).then(() => {
            return res.redirect('/')
        })
    },

    comment: (req, res) => {
        if (req.session.usuario) {
            db.Comment.create({
                comment: req.body.comment,
                products_id: req.body.id,
                users_id: req.session.usuario.id
            }).then(resultado => {
                res.redirect('/product/id/' + req.body.id)
            })
        } else {
            return res.redirect('/login')
        }
    }
}
module.exports = controller;