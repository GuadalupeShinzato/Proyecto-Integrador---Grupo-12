const db = require('../Database/models');
const Op = db.Sequelize.Op;
const bcrypt = require('bcryptjs')


const controller = {
    index: (req, res) => {
        if (!req.session.usuario) {
            res.render('login', {
                error: null
            })
        } else{
            res.redirect('/')
        }
    },
    login: (req, res) => {
        if(req.body.usuario && req.body.contrasena) {
        db.User.findOne({
                where: [{
                    username: req.body.usuario
                }]
            })
            .then(usuario => {
                if (usuario && bcrypt.compareSync(req.body.contrasena, usuario.password)) {
                    req.session.usuario = {
                        id: usuario.id,
                        nombre: usuario.username
                    }
                    if (req.body.remember) {
                        res.cookie('userId', usuario.id, {
                            maxAge: 1000 * 60 * 5
                        });
                    }
                    res.redirect('/')
                } else {
                    res.render('login', {error: 'Uno de los campos es incorrecto'})
                }
            })
        } else {
            res.render('login' , {error: 'Ningun campo puede estar vacio'})
        }


        ;
    }, 
   
}


module.exports = controller;