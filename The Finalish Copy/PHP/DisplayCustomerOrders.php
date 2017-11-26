<?php
	session_start();
	
	try {
	  $pdo = new PDO("mysql:host=localhost;dbname=restaurant", "root", "");
	  $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	} catch (PDOException $e) {
	  die($e->getMessage());
	}
	$restaurantNumber = $_GET["restaurantNumber"];
	
	$sql = "SELECT op.OrderID AS OrderID, op.ItemNumber AS ItemNumber, op.ProductName AS ProductName, op.IngredientID AS IngredientID, ii.Name AS Name
			FROM order_user ou, order_products op, ingredient_information ii
			WHERE ou.StoreNumber = " . $restaurantNumber . " AND ou.OrderID = op.OrderID AND op.IngredientID = ii.IngredientID 
			ORDER BY ou.OrderID, op.ItemNumber;";
	$result = $pdo->query($sql);
	$currentOrderID = -1;
	$currentItemNumber = -1;
	echo "<div id=\"allDisplayedOrders\">";
	while ($row = $result->fetch()) {
		if ($row["OrderID"] != $currentOrderID) {
			$currentItemNumber = -1;
			if ($currentOrderID != -1) {
				echo "</div>";
			}
			$currentOrderID = $row["OrderID"];
			echo "<div class=\"displayedOrder\">";
			echo "<h1 class=\"orderNumber\">ORDER #" . $row["OrderID"] . "</h1>";
		}
		if ($row["ItemNumber"] != $currentItemNumber) {
			echo "<h2 class=\"itemName\">" . $row["ProductName"] . "</h2>";
			$currentItemNumber = $row["ItemNumber"];
		}
		echo "<h3 class=\"itemIngredient\">- " . $row["Name"] . "</h3>";
	}
	echo "</div>";
	echo "</div>";
?>