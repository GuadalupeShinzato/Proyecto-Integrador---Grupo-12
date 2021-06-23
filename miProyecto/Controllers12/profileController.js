const db = require('../Database/models');
const Op = db.Sequelize.Op;
const bcrypt = require('bcryptjs');

const controller = {
    index: (req, res) => {
        db.User.findByPk(req.params.id, {
                include: [{
                        association: 'productos',
                        include: [{
                            association: 'comentarios'
                        }]
                    },
                    {
                        association: 'comentarios'
                    }
                ]
            }).then(resultado => {
                res.render('profile', {
                    usuario: resultado
                })
            })
            /*db.Product.findAll({
                include: [{
                    association: 'usuario'
                }, {
                    association: 'comentarios'
                }],
            }).then(producto => {
                res.render('profile', {
                    producto: producto
                });
            })*/
          
    },
    edit: (req, res) => {
        db.User.findByPk(req.params.id).then(resultado => {
            res.render('profile-edit', {
                usuario: resultado
            })
        })

    },
    update: (req, res) => {
        let passEncriptada = bcrypt.hashSync(req.body.password);
        db.User.update({
            name: req.body.nombre,
            last_name: req.body.apellido,
            email: req.body.email,
            nacimiento: req.body.fecha, //?
            username: req.body.usuario,
            //cover: req.file.filename,
            password: passEncriptada
        }, {
            where: {
                id: req.body.id
            }
        }).then(resultado => {
            res.redirect('/profile/id/' + req.body.id)
        })
    }
}
module.exports = controller;