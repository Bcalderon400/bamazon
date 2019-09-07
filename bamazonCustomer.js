// require("dotenv").config();
var mysql = require("mysql")
var inquirer = require("inquirer")
var Table = require("cli-table")

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "Theboss420!",
    database: "bamazon_DB"

});
connection.connect(function(err) {
    if (err) throw err;
    console.log("connected as id: " + connection.threadId)

})

var displayProducts = function() {
    var query = "SELECT * FROM products"
    connection.query(query, function(err, res) {
        if (err) throw err;
        var displayTable = new Table({
            head: ["Item ID", "Product Name", "Category", "Price", "Quantity"],
            colWidths: [10, 25, 25, 10, 14]
        });
        for (var i = 0; i < res.length; i++) {
            displayTable.push(
                [res[i].item_id, res[i].product_name, res[i].department_name, res[i].price, res[i].stock_quantity]
            )
        }
        console.log(displayTable.toString())

    })
}
displayProducts()