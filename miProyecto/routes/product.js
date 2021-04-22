var express = require('express')
var router = express.Router();
const controller = require('../Controllers12/productController')

// * GET home page. * /

router.get('/', controller.index);
router.get('/add', controller.add)

module.exports = router