var express = require('express')
var router = express.Router();
const controller = require('../Controllers12/productController')
const multer = require('multer')
const path = require('path')

// * GET home page. * /


var storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, path.join(__dirname, '../public/images/products/'))
  },
  filename: function (req, file, cb) {
    cb(null, file.fieldname + '-' + Date.now() + path.extname(file.originalname))
  }
})

var upload = multer({
  storage: storage
})

router.get('/id/:id', controller.index);
router.get('/add', controller.add);
router.post('/add', upload.single("portada"), controller.create);
router.get('/edit/:id', controller.edit);
router.post('/edit', upload.single("portada"), controller.update);
router.post('/delete/:id', controller.delete);
router.post('/comment', controller.comment)


module.exports = router