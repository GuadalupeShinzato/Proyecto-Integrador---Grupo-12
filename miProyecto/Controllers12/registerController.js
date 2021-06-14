const db = require('../Database/models');
const Op = db.Sequelize.Op;
const bcrypt = require('bcryptjs');

const controller ={
    index: (req, res) => res.render('register'),

    createUser: (req, res) => {
        let passEncriptada = bcrypt.hashSync(req.body.contraseña); //preguntar confirmar contra

        db.User.create({
            name: req.body.nombre,
            last_name: req.body.apellido,
            email: req.body.email,
            nacimiento: req.body.fecha, //?
            username: req.body.usuario,
            password: passEncriptada, //pass o contrasena?
        }).then(user => {
            res.redirect('/'); //no funciona, nose pq va al profile
        });
    }

}
module.exports = controller;

