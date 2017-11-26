<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Three Guys</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="../CSS/Head.css" type="text/css">
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<?php
	include "Head.php";
?>

<!-- This will do a check first to see whether or not the user is a manager.
	 If the user is not a manager, a pop-up will come up that will require a manager's
	 username/password.  Once a valid username/password has been put in, all the current
	 orders for the store for which the employee works will be shown.  If the user is
	 already a manager, if the manager manages more than one store, a drop-down with all the
	 manager's stores will be shown from which the user will select the store they want
	 to manage. -->
	 
<div id="loginArea"></div>
<div id="locationSelection"></div>
<div id="customerOrders"></div>

<script>

	function decideUserType() {
		xmlhttp = new XMLHttpRequest();
		xmlhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				if (this.responseText == "Employee") {
					displayEmployeeManagerLogin();
				} else if (this.responseText == "MultipleManager") {
					displayManagerStoreSelection();
				} else {
					displayCustomerOrders(this.responseText);
				}
			}
		};
		xmlhttp.open("GET", "DecideUserType.php", true);
		xmlhttp.send();
	}
	
	function displayEmployeeManagerLogin() {
		xmlhttp = new XMLHttpRequest();
		xmlhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				document.getElementById("loginArea").innerHTML = this.responseText;
			}
		};
		xmlhttp.open("GET", "DisplayEmployeeManagerLogin.php", true);
		xmlhttp.send();
	}
	
	function displayManagerStoreSelection() {
		xmlhttp = new XMLHttpRequest();
		xmlhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				document.getElementById("locationSelection").innerHTML = this.responseText;
			}
		};
		xmlhttp.open("GET", "DisplayManagerStoreSelection.php", true);
		xmlhttp.send();
	}
	
	function displayCustomerOrders(restaurantNumber) {
		window.setTimeout(innerDisplayCustomerOrders, 10);
		function innerDisplayCustomerOrders() {
			document.getElementById("loginArea").innerHTML = "";
			document.getElementById("locationSelection").innerHTML = "";
			
			xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (this.readyState == 4 && this.status == 200) {
					document.getElementById("customerOrders").innerHTML = this.responseText;
				}
			};
			xmlhttp.open("GET", "DisplayCustomerOrders.php?restaurantNumber=" + restaurantNumber, true);
			xmlhttp.send();
		}
	}
	
	function checkManagerLogin() {
		xmlhttp = new XMLHttpRequest();
		var username = document.getElementById("usernameBox").value;
		var password = document.getElementById("passwordBox").value;
		xmlhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				if (this.responseText == "Invalid") {
					alert("Invalid");
					displayEmployeeManagerLogin();
				} else {
					displayCustomerOrders(this.responseText);
				}
			}
		};
		xmlhttp.open("GET", "CheckManagerLogin.php?enteredUsername=" + username + "&enteredPassword=" + password, true);
		xmlhttp.send();
	}
	


	decideUserType();
	
</script>

</body>
</html>