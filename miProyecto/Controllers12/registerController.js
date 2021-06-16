const db = require('../Database/models');
const Op = db.Sequelize.Op;
const bcrypt = require('bcryptjs');

const controller = {
    index: (req, res) => {
        if (!req.session.usuario) {
            res.render('register', {
                error: null
            })
        } else{
            res.redirect('/')
        }
    },

    createUser: (req, res) => {
        if (req.body.nombre && req.body.apellido && req.body.email && req.body.fecha && req.body.usuario && req.body.contraseña) {
            let passEncriptada = bcrypt.hashSync(req.body.contraseña); //preguntar confirmar contra
            db.User.findOne({
                    where: {
                        username: req.body.usuario
                    }
                })
                .then(resultado => {
                    if (!resultado) {
                        db.User.create({
                            name: req.body.nombre,
                            last_name: req.body.apellido,
                            email: req.body.email,
                            nacimiento: req.body.fecha, //?
                            username: req.body.usuario,
                            cover: req.file.filename , 
                            password: passEncriptada, //pass o contrasena?
                        }).then(user => {
                            req.session.usuario = {
                                id: user.id,
                                nombre: user.username
                            }

                            res.cookie('userId', user.id, {
                                maxAge: 1000 * 60 * 5
                            });

                            res.redirect('/');
                        });
                    } else {
                        res.render('register', {
                            error: 'Ya existe este nombre de usuario'
                        })
                    }
                })

        } else {
            res.render('register', {
                error: 'No puede haber campos vacios'
            })
        }
    }

}
module.exports = controller;