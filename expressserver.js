var express = require('express');
var bodyParser = require("body-parser");
var app = express();
var mysql = require('mysql');

var connection = mysql.createConnection({
  host: "localhost",
  user: "docse",
  password: "Prod@123",
  database: 'sample'
});
//Establish MySQL connection
connection.connect(function(err) {
    if (err) 
       throw err
    else {
        console.log('Connected to MySQL');
    }
 });
app.use(bodyParser.json()); // support json encoded bodies
app.use(bodyParser.urlencoded({ extended: true })); 

 app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
});
 app.get('/list', function (req, res,next) {
    debugger;
    connection.query('SELECT * FROM bank_details', function(err,result) {
       debugger;
       console.log(result);
       res.send(JSON.stringify(result));
   });
 })
 app.post('/addnew', function (req, res,next) {
    var name = req.body.name;
    var formula = req.body.formula;
    var values = [];
    values.push([name,formula]);
    connection.query('INSERT INTO bank_details (name,formula) VALUES ?', [values], function(err,result) {
        if(err) {
            res.send(JSON.stringify('Error'));
        } else {
            res.send(JSON.stringify('Success'));
        }
    });
 })
 app.post('/del_item', function (req, res) {
    var query = "DELETE FROM bank_details WHERE id=" + req.body.id;
    connection.query(query, function(err,result) {
        if(err) {
            res.send(JSON.stringify('Error'));
        } else {
            res.send(JSON.stringify('Success'));
        }
    });
 })
 app.post('/updateItem', function (req, res,next) {
    var query = "UPDATE bank_details SET name = '" + req.body.name + "',formula = '" + req.body.formula + "' where id =" + req.body.id;
    console.log(query);
    connection.query(query, function(err,result) {
        if(err) {
            res.send(JSON.stringify('Error'));
        } else {
            res.send(JSON.stringify('Success'));
        }
    });
 })
//-----------------------------------------------------------------------------------------------------------------------
app.use(express.static('public'));

app.get('/index.htm', function (req, res) {
    res.sendFile( __dirname + "/" + "index.htm" );
 })
 
 app.get('/process_get', function (req, res) {
    // Prepare output in JSON format
    response = {
       first_name:req.query.first_name,
       last_name:req.query.last_name
    };
    console.log(response);
    res.end(JSON.stringify(response));
 })

// This responds with "Hello World" on the homepage
app.get('/', function (req, res) {
   console.log("Got a GET request for the homepage");
   res.send('Hello GET');
})

// This responds a POST request for the homepage
app.post('/', function (req, res) {
   console.log("Got a POST request for the homepage");
   res.send('Hello POST');
})

// This responds a DELETE request for the /del_user page.
app.delete('/del_user', function (req, res) {
   console.log("Got a DELETE request for /del_user");
   res.send('Hello DELETE');
})

// This responds a GET request for the /list_user page.


// This responds a GET request for abcd, abxcd, ab123cd, and so on
app.get('/ab*cd', function(req, res) {   
   console.log("Got a GET request for /ab*cd");
   res.send('Page Pattern Match');
})

var server = app.listen(8081, function () {
   var host = server.address().address
   var port = server.address().port
   console.log("Example app listening at http://%s:%s", host, port)
})