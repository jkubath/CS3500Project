<?php
	session_start();
	for ($i = 1; $i < $_SESSION["currentItemNumber"]; $i++) {
		echo $_SESSION["orderItems"][$i];
		echo "<br />";
		if (strcmp($_SESSION["orderIngredients"][$i], "") != 0) {
			echo $_SESSION["orderIngredients"][$i];
			echo "<br />";
		}
		echo $_SESSION["prices"][$i];
		echo "<br />";
	}
?>