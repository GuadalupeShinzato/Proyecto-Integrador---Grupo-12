var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var loginRouter = require('./routes/login');
var registerRouter = require('./routes/register');
var profileRouter = require('./routes/profile');
var searchRouter = require('./routes/search');
var productRouter = require('./routes/product');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({
  extended: false
}));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

const session = require('express-session');
// secret identifica session de los demas. Mensaje costumizable
app.use(session({
  secret: "login",
  resave: false,
  saveUninitialized: true
}));
const db = require('./database/models');
// cookie funciona para saber si esta logueado o no y si existe la sesion \. Si existe la cookie, crea la session. 
app.use(function (req, res, next) {
  if (req.cookies.userId && !req.session.usuario) {
    db.User.findByPk(req.cookies.userId).then(resultado => {
      req.session.usuario = resultado
      return next();
    });
  } else {
    return next();
  }
});
app.use(function (req, res, next) {   // manda informacion a todas las vistas (locals)
  if (req.session.usuario) {
    res.locals = {
      logueado: true,
      miUsuario: req.session.usuario    //Muestra el nombre guardado 
    }
  } else {
    res.locals = {
      logueado: false
    }
  }

  return next();
});


app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/login', loginRouter);
app.use('/register', registerRouter);
app.use('/profile', profileRouter);
app.use('/search', searchRouter);
app.use('/product', productRouter);

// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;