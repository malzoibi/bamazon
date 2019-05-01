var mysql = require("mysql");
var inquirer = require("inquirer"); 


var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "malakeh95",
  database: "bamazon"
});

connection.connect(function(err) {
	if (err) throw err;
	console.log("connected as id " + connection.threadId);
	displayProducts();
}); 

var displayProducts = function(){
	connection.query("SELECT*FROM products", function(err, res){
		if(err) throw err;
		console.table(res);

		inquirer.prompt([
			{
				type:"input", 
				name:"choice",
				message:"What is the ID of the product that you would like to purchase?"
			},
			{
				type:"input",
				name:"number",
				message:"How many times would you like to purchase this product?"
			}
		])
	.then(function(answer){
		var itemPurchased;
		for (var i = 0; i < res.length; i++){
		
		if(res[i].item_id === answer.choice){itemPurchased = res[i];}
		}
		if (itemPurchased.stock_quantity < parseInt(answer.number)){
			console.log("The product(s) is/are available!");

			connection.query("UPDATE prodcuts SET ? WHERE ?", [
				{
					stock_quantity: number
				},
				{
					item_id: itemPurchased
				}],
		function(error){
			if (error) throw err;
			console.log("Quantity Purchased!");
			displayProducts();
		}
			);
		}
			else{
				console.log("Insuffecient stock quantity. Make another quantity selection.");
				displayProducts();
			}
	});
	})};