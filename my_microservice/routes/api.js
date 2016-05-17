var express = require('express');
var router = express.Router();

/* GET greeting */
router.get('/sayhibarn', function(req, res, next) {
  res.send('hello barn cats');
});

module.exports = router;
