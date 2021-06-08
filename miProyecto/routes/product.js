var express = require('express')
var router = express.Router();
const controller = require('../Controllers12/productController')

// * GET home page. * /

router.get('/id/:id', controller.index);
router.get('/add', controller.add);
router.post('/add', controller.create)

module.exports = router