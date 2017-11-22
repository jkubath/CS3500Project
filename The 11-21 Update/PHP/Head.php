<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="Main.php">THREE GUYS</a>
    </div>
    <div class="collapse navbar-collapse NavBar" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="Menu.php"><div class="nav-option">MENU</div></a></li>
        <li><a href="Order.php"><div class="nav-option">ORDER</div></a></li>
        <li><a href="#locations"><div class="nav-option">LOCATIONS</div></a></li>
		<?php
			if (!isset($_SESSION["username"])) {
				$_SESSION["username"] = "";
			}
			if (strcmp($_SESSION["username"], "") != 0) {
				echo  "<li class=\"dropdown\"><a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\"><div class=\"nav-option\">OTHER <span class=\"caret\"></span></div></a><ul class=\"dropdown-menu\"><li onclick=\"logout()\">LOGOUT</li><li>two</li><li>three</li></ul></li>";
			} else {
				echo  "<li><a href=\"LoginPage.php\"><div class=\"nav-option\">LOGIN</div></a></li>";
			}
		?>
      </ul>
    </div>
  </div>
</nav>

<script>
	function logout() {
		xmlhttp = new XMLHttpRequest();
		
		xmlhttp.open("GET", "Logout.php", true);
		xmlhttp.send();
		document.location.href = "./Main.php";
	}
</script>
