var express = require('express');
var router = express.Router();
const controller = require('../Controllers12/loginController');

/* GET home page. */
router.get('/', controller.index);

module.exports = router;