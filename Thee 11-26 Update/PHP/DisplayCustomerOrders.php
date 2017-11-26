<?php
	session_start();
	
	try {
	  $pdo = new PDO("mysql:host=localhost;dbname=restaurant", "root", "");
	  $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	} catch (PDOException $e) {
	  die($e->getMessage());
	}
	
	$restaurantNumber = $_GET["restaurantNumber"];
	
	$sql = "SELECT *
			FROM order_user ou, order_products op
			WHERE ou.StoreNumber = " . $restaurantNumber . " AND ou.DateFulfilled = NULL AND ou.OrderID = op.OrderID;";
	$result = $pdo->query($sql);
	while ($row = $result->fetch()) {
		// Here we'll decide that we'll want to echo ProductName and the list of Ingredients
		// We'll need to make sure we group it by OrderID and we'll probably print out the productNames
		// Along with a list of Ingredients
		// It will probably just be a col-md-4 and col-md-8
		// We'll also include a button at the beginning of each that will say onclick()
		// set ou.DateFulfilled to current date and call displayCustomerOrders(restaurantNumber);
	}
?>