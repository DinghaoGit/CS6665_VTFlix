var express = require('express');
var router = express.Router();

var mysql = require('mysql');

var pool = mysql.createPool({
    host : 'localhost',
    port : '3306',
    user : 'root',
    password : '',
    database : 'CS6665_VTFlix'
});

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

/* GET list page. */
router.get('/list', function(req, res, next) {
    pool.getConnection( function(err, connection) {
        connection.query('SELECT * from video', function(err, rows, fields) {
            if (err)
                throw err;
            res.render('list', { videos : rows });
        });
        connection.release();
    });
});

/* GET detail page. */
router.get('/movie/:id',function(req,res){
    pool.getConnection( function(err, connection) {
        connection.query('SELECT * from video WHERE video.VID=' + req.params.id, function(err, rows, fields) {
            if (err)
                throw err;
            res.render('detail', { videos : rows });
        });
        connection.release();
    });
});

module.exports = router;
