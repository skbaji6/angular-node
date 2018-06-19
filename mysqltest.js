var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "docse",
  password: "Prod@123"
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
  con.query("CREATE DATABASE mydb", function (err, result) {
    if (err) throw err;
    console.log("mydb Database created");
  });
  con.query("use mydb", function (err, result) {
    if (err) throw err;
    console.log("melected mydb");
  });
  var createsql = "CREATE TABLE customers (name VARCHAR(255), address VARCHAR(255))";
  con.query(createsql, function (err, result) {
    if (err) throw err;
    console.log("Table created");
  });
  var insertsql = "INSERT INTO customers (name, address) VALUES ('Company Inc', 'Highway 37')";
  con.query(insertsql, function (err, result) {
    if (err) throw err;
    console.log("1 record inserted");
  });
  con.query("SELECT * FROM customers", function (err, result, fields) {
    if (err) throw err;
    console.log(result);
  });
});