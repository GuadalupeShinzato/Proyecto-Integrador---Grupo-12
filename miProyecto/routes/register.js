var express = require('express');
var router = express.Router();
const controller = require('../Controllers12/registerController');
const multer = require('multer')
const path = require('path')

// * GET home page. * /


var storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, path.join(__dirname, '../public/images/users/'))
  },
  filename: function (req, file, cb) {
    cb(null, file.fieldname + '-' + Date.now() + path.extname(file.originalname))
  }
})

var upload = multer({
  storage: storage
})

/* GET home page. */
router.get('/', controller.index);
router.post('/', upload.single('portada'), controller.createUser);


module.exports = router;