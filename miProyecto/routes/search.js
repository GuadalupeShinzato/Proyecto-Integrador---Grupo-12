var express = require('express');
var router = express.Router();
const controller = require('../Controllers12/searchController');

/* GET home page. */
router.get('/', controller.index);

module.exports = router;