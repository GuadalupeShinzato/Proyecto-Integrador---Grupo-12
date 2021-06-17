var express = require('express');
var router = express.Router();
const controller = require('../Controllers12/profileController')

/* GET home page */

router.get('/id/:id', controller.index);
router.get('/profileEdit/:id', controller.edit);
router.post('/profileEdit', controller.update);


module.exports = router