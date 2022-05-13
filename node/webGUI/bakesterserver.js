const express = require("express");
const app = express();//app is the instance of the express module.
app.use(express.json())

const fs = require('fs')
var $ = jQuery = require('jquery');
var csv = require('jquery-csv');

const mongo = require("mongodb").MongoClient;//for connecting to mongodb...

const cors = require("cors")
app.use(cors())

app.use(express.static(__dirname + '/'));

const root = __dirname;
var database

//const mongourl = "mongodb+srv://thechef:<itsbakester>@cluster0.ik4uz.mongodb.net/myFirstDatabase?retryWrites=true&w=majority"



app.get("/", function(req, res){
 console.log(root +"/Home.html")
 res.sendFile(root +"/Home.html")
 res.status(200)
})

app.get("/Home", function(req, res){
 console.log(root +"/Home.html")
 res.sendFile(root +"/Home.html")
 res.status(200)
})

app.get("/About", function(req, res){
 console.log(root +"/About.html")
 res.sendFile(root +"/About.html")
 res.status(200)
})

app.get("/Menu", function(req, res){
 console.log(root +"/Menu.html")
 res.sendFile(root +"/Menu.html")
 res.status(200)
})

app.get("/contact", function(req, res){
 res.sendFile(root +"/Contact.html")
 res.status(200)
})

app.get("/mongotemp1", function(req, res){
	database.collection('temperature1').find({}).toArray((err,result) => {
	if(err) throw err;
	res.send((result));
	})
})

app.get("/fileread", function (req,res){
 var sample = root+'/mycsv.csv';
 fs.readFile(sample,'UTF-8',function(err,result){
	var csvfile=$.csv.toObjects(result);
	res.send(csvfile);
 })
})

app.listen(1234, () => {
console.log("Server is up and running at 1234")
//mongo.connect(mongourl,{useNewUrlParser: true}, (err ,result) => {
//if(err) throw err;
//database = result.db('technet');
//console.log('MongoDB connection successful..!')
//})
})
