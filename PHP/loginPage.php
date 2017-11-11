<!DOCTYPE html>
<head>
  <title>Three Guys</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="../CSS/LoginPage.css" type="text/css">
  <link rel="stylesheet" href="../CSS/Head.css" type="text/css">
</head>

<body>
  <?php
   include "Head.php";
  ?>
  <div class="loginContainer">
<?php
  //Are we trying to log in?
  if(isSet($_GET["login"])) {
    //Make the login box
    echo("YES");
    login();

  }
  //Are they trying to register
  else if(isSet($_GET["register"])){
    register();
  }
  else {
    login();


  }

  function login(){
    //Make the login box
    echo("<div class='login'>");
    echo("<h1>Login</h1>");
    echo("<form action='#' method='get'>");
    //Username
    echo("<div class='username'><input type = 'text' placeholder = 'Username' name='username'></div>");
    echo("<div class='password'><input type = 'password' placeholder = 'Password' name='password'></div>");
    echo("<input class='submit' type='submit'value='Login'>");
    echo("</form>");
    echo("<a class='link' href='loginPage.php?register=1'>Create an Account</a>");
    echo("</div>");
  }

  function register(){
    //Make the login box
    echo("<div class='register'>");
    echo("<h1>Create Account</h1>");
    echo("<form action='#' method='get'>");
    //Username
    echo("<div class='myTable'>");
    echo("<div class='row'>");
      echo("<div class='col-md-6'><input type = 'text' placeholder = 'First' name='first'></div>");
      echo("<div class='col-md-6'><input type = 'text' placeholder = 'Last' name='last'></div>");
    echo("</div>"); //End row
    echo("<div class='row'>");
      echo("<div class='col-md-6' id='tableUsername'><input type = 'text' placeholder = 'Username' name='username'></div>");
      echo("<div class='col-md-6' ><input type = 'password' placeholder = 'Password' name='password'></div>");
    echo("</div>"); //End of row
    echo("<div class='row'>");
      echo("<div class='col-md-6'></div>");
      echo("<div class='col-md-6' id='confirm'><input type = 'password' placeholder = 'Confirm Password' name='confirm'></div>");
    echo("</div>"); //End of row
    echo("<div class='row' id='tableAddress'>");
      echo("<div id='tableAddress' class='col-md-8'><input type = 'text' placeholder = 'Address' name='address'></div>");
    echo("</div>"); //End of row
    echo("<div class='row'>");
      echo("<div class='col-md-6'><input type = 'text' placeholder = 'State' name='city'></div>");
      echo("<div class='col-md-6'><input type = 'text' placeholder = 'City' name='state'></div>");
    echo("</div>"); //End of row
    echo("<div class='row'>");
      echo("<div class='col-md-6'><input type = 'text' placeholder = 'Zip Code' name='zipCode'></div>");
    echo("</div>");
    echo("<div class='row' id='button'>"); //End of Row
      echo("<div class='col-md-12'><input class='submit' type='submit' value='Login'></div>");
    echo("</div>");
    echo("</div>"); //close myTable
    echo("</form>");
    echo("</div>");
  }



?>
</container>
</body>
