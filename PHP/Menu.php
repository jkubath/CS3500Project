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
  <link rel="stylesheet" href="../CSS/Menu.css" type="text/css">
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">


<?php
  include "Head.php";
?>

<div id="fading-background"></div>

<div id="content" class="modal-content">
  <div class="modal-header">
    <span class="close">&times;</span>
    <h2>Modal Header</h2>
  </div>
  <div class="modal-body">
    <p>Some text in the Modal Body</p>
    <p>Some other text...</p>
  </div>
  <div class="modal-footer">
	  <div class="col-xs-6 col-sm-3 calories">
		<h3>Calories</h3>
		<h4>100</h4>
	  </div>
	  <div class="col-xs-6 col-sm-3 carbs">
		<h3>Carbs (g)</h3>
		<h4>100</h4>
	  </div>
	  <div class="col-xs-6 col-sm-3 fat">
		<h3>Total Fat (g)</h3>
		<h4>100</h4>
	  </div>
	  <div class="col-xs-6 col-sm-3 sodium">
		<h3>Sodium (mg)</h3>
		<h4>100</h4>
	  </div>
  </div>
</div>

<div class="container-fluid text-center menu">
  <h2 class="menu-title">BURGERS</h2>
  <hr class="burgers-underline"/>
  <br>
  <div class="row">
    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 menu-item">
      <img src="../../Pictures/UnlitBackground.png" class="background-light" id="menu-item-1"/>
	  <div class="menu-item-name" id="menu-item-name-1">
		<h1 id="name-1">Hamburger</h1>
		<img src="../../Pictures/UnlitBurger.png" id="menu-item-picture-1"/>
	  </div>
    </div>
    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 menu-item">
      <img src="../../Pictures/UnlitBackground.png" class="background-light" id="menu-item-2"/>
	  <div class="menu-item-name" id="menu-item-name-2">
		<h1 id="name-2">Cheeseburger</h1>
		<img src="../../Pictures/UnlitDoubleCheeseBurger.png" id="menu-item-picture-2" />
	  </div>
    </div>
	<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 menu-item">
      <img src="../../Pictures/UnlitBackground.png" class="background-light" />
	  <div class="menu-item-name">
		<h1>BBBBB</h1>
	  </div>
    </div>
	<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 menu-item">
      <img src="../../Pictures/UnlitBackground.png" class="background-light" />
	  <div class="menu-item-name">
		<h1>BBBBB</h1>
	  </div>
    </div>
	<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 menu-item">
      <img src="../../Pictures/UnlitBackground.png" class="background-light" />
	  <div class="menu-item-name">
		<h1>BBBBB</h1>
	  </div>
    </div>
	<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 menu-item">
      <img src="../../Pictures/UnlitBackground.png" class="background-light" />
	  <div class="menu-item-name">
		<h1>BBBBB</h1>
	  </div>
    </div>
  </div>
  <br />
  <h2 class="menu-title">SIDES</h2>
  <hr class="sides-underline"/>
  <br>
  <div class="row">
    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 menu-item">
      <img src="../../Pictures/UnlitBackground.png" class="background-light" />
	  <div class="menu-item-name">
		<h1>BBBBB</h1>
	  </div>
    </div>
    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 menu-item">
      <img src="../../Pictures/UnlitBackground.png" class="background-light" />
	  <div class="menu-item-name">
		<h1>BBBBB</h1>
	  </div>
    </div>
	<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 menu-item">
      <img src="../../Pictures/UnlitBackground.png" class="background-light" />
	  <div class="menu-item-name">
		<h1>BBBBB</h1>
	  </div>
    </div>
	<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 menu-item">
      <img src="../../Pictures/UnlitBackground.png" class="background-light" />
	  <div class="menu-item-name">
		<h1>BBBBB</h1>
	  </div>
    </div>
	<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 menu-item">
      <img src="../../Pictures/UnlitBackground.png" class="background-light" />
	  <div class="menu-item-name">
		<h1>BBBBB</h1>
	  </div>
    </div>
	<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 menu-item">
      <img src="../../Pictures/UnlitBackground.png" class="background-light" />
	  <div class="menu-item-name">
		<h1>BBBBB</h1>
	  </div>
    </div>
  </div>
  <br />
  <h2 class="menu-title">DRINKS</h2>
  <hr class="drinks-underline"/>
  <br>
  <div class="row">
    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 menu-item">
      <img src="../../Pictures/UnlitBackground.png" class="background-light" />
	  <div class="menu-item-name">
		<h1>BBBBB</h1>
	  </div>
    </div>
    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 menu-item">
      <img src="../../Pictures/UnlitBackground.png" class="background-light" />
	  <div class="menu-item-name">
		<h1>BBBBB</h1>
	  </div>
    </div>
	<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 menu-item">
      <img src="../../Pictures/UnlitBackground.png" class="background-light" />
	  <div class="menu-item-name">
		<h1>BBBBB</h1>
	  </div>
    </div>
	<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 menu-item">
      <img src="../../Pictures/UnlitBackground.png" class="background-light" />
	  <div class="menu-item-name">
		<h1>BBBBB</h1>
	  </div>
    </div>
	<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 menu-item">
      <img src="../../Pictures/UnlitBackground.png" class="background-light" />
	  <div class="menu-item-name">
		<h1>BBBBB</h1>
	  </div>
    </div>
	<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 menu-item">
      <img src="../../Pictures/UnlitBackground.png" class="background-light" />
	  <div class="menu-item-name">
		<h1>BBBBB</h1>
	  </div>
    </div>
  </div>
</div>
<script>
	var image1 = document.getElementById("menu-item-1");
	var itemName1 = document.getElementById("menu-item-name-1");
	var name1 = document.getElementById("name-1");
	var picture1 = document.getElementById("menu-item-picture-1");
	name1.style.top = (25 - ((parseInt(name1.innerHTML.length / 10)) * 3.5)) + "%";
	image1.onmouseover = function() {image1.src = "../../Pictures/LitBackground.png"; picture1.src = "../../Pictures/LitBurger.png"; name1.style.color = "#FFFFFF";};
	image1.onmouseout = function() {image1.src = "../../Pictures/UnlitBackground.png"; picture1.src = "../../Pictures/UnlitBurger.png"; name1.style.color = "#999999";};
	itemName1.onmouseover = function() {image1.src = "../../Pictures/LitBackground.png"; picture1.src = "../../Pictures/LitBurger.png"; name1.style.color = "#FFFFFF";};
	itemName1.onmouseout = function() {image1.src = "../../Pictures/UnlitBackground.png"; picture1.src = "../../Pictures/UnlitBurger.png"; name1.style.color = "#999999";};
	picture1.onmouseover = function() {image1.src = "../../Pictures/LitBackground.png"; picture1.src = "../../Pictures/LitBurger.png"; name1.style.color = "#FFFFFF";};
	picture1.onmouseout = function() {image1.src = "../../Pictures/UnlitBackground.png"; picture1.src = "../../Pictures/UnlitBurger.png"; name1.style.color = "#999999";};
	var image2 = document.getElementById("menu-item-2");
	var itemName2 = document.getElementById("menu-item-name-2");
	var name2 = document.getElementById("name-2");
	var picture2 = document.getElementById("menu-item-picture-2");
	name2.style.top = (25 - ((parseInt(name2.innerHTML.length / 10)) * 3.5)) + "%";
	image2.onmouseover = function() {image2.src = "../../Pictures/LitBackground.png"; picture2.src = "../../Pictures/LitDoubleCheeseburger.png"; name2.style.color = "#FFFFFF";};
	image2.onmouseout = function() {image2.src = "../../Pictures/UnlitBackground.png"; picture2.src = "../../Pictures/UnlitDoubleCheeseburger.png"; name2.style.color = "#999999";};
	itemName2.onmouseover = function() {image2.src = "../../Pictures/LitBackground.png"; picture2.src = "../../Pictures/LitDoubleCheeseburger.png"; name2.style.color = "#FFFFFF";};
	itemName2.onmouseout = function() {image2.src = "../../Pictures/UnlitBackground.png"; picture2.src = "../../Pictures/UnlitDoubleCheeseburger.png"; name2.style.color = "#999999";};
	picture2.onmouseover = function() {image2.src = "../../Pictures/LitBackground.png"; picture2.src = "../../Pictures/LitDoubleCheeseburger.png"; name2.style.color = "#FFFFFF";};
	picture2.onmouseout = function() {image2.src = "../../Pictures/UnlitBackground.png"; picture2.src = "../../Pictures/UnlitDoubleCheeseburger.png"; name2.style.color = "#999999";};




	// Get the modal
	var modal = document.getElementById('content');

	var background = document.getElementById('fading-background');

	// Get the button that opens the modal
	var btn = document.getElementById("menu-item-1");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];

	// When the user clicks the button, open the modal
	btn.onclick = function() {
		modal.style.display = "block";
		modal.style.animationName = "fadeIn";
		modal.style.zIndex = "5";
		modal.style.animationDelay = ".125s";
		background.style.display = "block";
		background.style.animationName = "backgroundDarken";
		background.style.zIndex = "4";
	}

	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
		modal.style.animationName = "fadeOut";
		modal.style.animationDelay = "0s";
		background.style.animationName = "backgroundBrighten";
	}

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
		if (event.target == background) {
			modal.style.animationName = "fadeOut";
		 modal.style.animationDelay = "0s";
		 background.style.animationName = "backgroundBrighten";
		}
	}
</script>
</body>
</html>
