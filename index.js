// imports
const express = require('express');
const app = express();
const path = require('path');
const port = 3000;
const router = express.Router();
const exphbs = require("express-handlebars");
const { engine } = require("express-handlebars");
const mysql = require('mysql');

// Static files
app.use(express.static('public'));
app.use(express.static("views"));
app.use('/css', express.static(__dirname + 'public/css'));
app.use('/font-aws', express.static(__dirname + 'public/font-aws'));
app.use('/js', express.static(__dirname + 'public/js'));
app.use('/img', express.static(__dirname + 'public/img'));
app.engine('handlebars', engine());
app.set('view engine', 'handlebars');
// set views
app.set('views', './views');
app.set('view engine', 'ejs');
app.engine("handlebars", engine());
// app.set("view engine", "handlebars");
// app.set("views", path.join(__dirname, "views/partials"));
router.get('/Lethnic.vn', function (req, res) {
    res.render("admin/main-page/main-page", { title: "Hey", message: "Hello there!" });
});
// customer 
router.get('/account', function (req, res) {
    res.render("customer/account/account-page", { title: "Hey", message: "Hello there!" });
});

router.get('/blog', function (req, res) {
    res.render("customer/blog/blog-page", { title: "Hey", message: "Hello there!" });
});
// order
router.get('/order1', function (req, res) {
    res.render("customer/order/order1", { title: "Hey", message: "Hello there!" });
});
router.get('/order2', function (req, res) {
    res.render("customer/order/order2", { title: "Hey", message: "Hello there!" });
});
router.get('/order3', function (req, res) {
    res.render("customer/order/order3", { title: "Hey", message: "Hello there!" });
});
router.get('/order4', function (req, res) {
    res.render("customer/order/order4", { title: "Hey", message: "Hello there!" });
});
// cart
router.get('/cart', function (req, res) {
    res.render("customer/cart/cart", { title: "Hey", message: "Hello there!" });
});
// 
app.use('/', router);
app.listen(process.env.port || port);