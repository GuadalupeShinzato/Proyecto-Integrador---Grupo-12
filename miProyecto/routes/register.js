var express = require('express');
var router = express.Router();
const controller = require('../Controllers12/registerController');

/* GET home page. */
router.get('/', controller.index);

module.exports = router;