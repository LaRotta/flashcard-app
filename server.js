var express = require('express');
var app = express();
var mysql = require('mysql');

app.set('view engine', 'ejs');

//you need this to be able to process information sent to a POST route
	var bodyParser = require('body-parser');

	// parse application/x-www-form-urlencoded
	app.use(bodyParser.urlencoded({ extended: true }));

	// parse application/json
	app.use(bodyParser.json());

app.use(express.static("public"));

// Initializes the connection variable to sync with a MySQL database
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "password",
  database: "indexGuruDB"
});


app.post("/create", function(req, res){
	connection.query(
		"INSERT INTO card (question, answer) VALUES (?, ?)",
		[req.body.question, req.body.answer],
		function(err, response) {
			res.redirect("/");
		}
	);
});

app.get("/results", function(req, res){
	connection.query(
		"SELECT card.question, card.answer FROM card",
		function(err, response){
			res.json(response);
		}
	);
});


app.get('/flashcard', function(req, res){
	connection.query(
		"SELECT * FROM card",
		function(err, response) {
		  res.render('show', {
			card: response
		  });
		}
	  );
  });
  
  app.get("/", function(req, res){
	res.render('index');
  });

  app.get("/add", function(req, res){
	res.render('add');
  });


app.listen(3000, function(){
	console.log("Shhhh, I'm listenin' on 3000 ovah heah, dahling");
});







