const db = require('../Database/models');
const Op = db.Sequelize.Op;
const bcrypt = require('bcryptjs');

const controller ={
    index: (req, res) => res.render('register'),

    createUser: (req, res) => {
        let passEncriptada = bcrypt.hashSync(req.body.contraseña); //preguntar confirmar contra

        db.User.create({
            nombre: req.body.nombre,
            apellido: req.body.apellido,
            email: req.body.email,
            fechaDeNacimiento: req.body.fecha, //?
            nombreDeUsuario: req.body.usuario,
            contraseña: passEncriptada, //pass o contrasena?
            confirmarContraseña: req.body.confirContra
        }).then(user => {
            res.redirect('/index'); //no funciona, nose pq va al profile
        });
    }

}
module.exports = controller;

