const db = require('../Database/models');
const Op = db.Sequelize.Op;
const bcrypt = require('bcryptjs')


const controller = {
    index: (req, res) => {
        res.render('login');
    },
    login: (req, res) => {
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
                }
            })



        ;
    }
}
module.exports = controller;