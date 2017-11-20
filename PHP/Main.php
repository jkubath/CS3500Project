<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Three Guys</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="../CSS/Head.css" type="text/css">
  <link rel="stylesheet" href="../CSS/Body.css" type="text/css">
  <link rel="stylesheet" href="../CSS/Footer.css" type="text/css">
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<?php
  include "Head.php";
  include "Title.php";
  include "CustomerReviews.php";
  ?>
<!-- /////////////////////////////////////FORM///////////////////////////////////////// -->
  <div class="container-fluid text-center contactusform ">
    <form class="contactus" action="http://www.randyconnolly.com/tests/process.php" method="post" id="Contact">
      <fieldset>
        <legend>Tell us how you really feel!</legend>

  <?php
    /*PROBABLY NEED TO CHANGE THE IF STATEMENT. ALSO NEED TO CHANGE THE ACTION METHOD OF THE FORM*/
    if (empty($_GET)) {

          echo '<div class="form-group left-addon col-md-6">
              <span class="glyphicon glyphicon-user form-control-feedback"></span>
                <label class="control-label">Name</label>
                <input type="text" class="form-control" placeholder="Your Name" name="name"/>
            </div>
            <div class="form-group left-addon col-md-6">
              <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                <label class="control-label">Email</label>
                <input type="email" class="form-control" placeholder="email@gmail.com" name="email"/>
            </div>
            <div class="form-group left-addon col-md-6">
              <span class="glyphicon glyphicon-earphone form-control-feedback"></span>
                <label class="control-label">Phone</label>
                <input type="tel" class="form-control" placeholder="123-123-1234" name="tel" />
            </div>
            <div class="form-group col-md-6">
              <label class="control-label" for="contacttype">Why are you contacting us? (select one):</label>
              <select class="form-control" id="contacttype" name="contacttype">
                <option value="Comment">Comment</option>
                <option value="Concern">Concern</option>
              </select>
            </div>';
    }
    else {

      echo      '<div class="form-group col-md-4 col-md-offset-4 makesmall">
              <label class="control-label" for="contacttype">Why are you contacting us? (select one):</label>
              <select class="form-control" id="contacttype" name="contacttype">
                <option value="Comment">Comment</option>
                <option value="Concern">Concern</option>
              </select>
            </div>';
    }
   ?>
      </fieldset>
    </form>
  <div class="form-group-ta col-md-4 col-md-offset-4">
    <textarea rows="6" cols="100" name="comment" form="Contact" placeholder="Enter your thoughts here..."></textarea>
  </div>
  <div class="form-group col-md-4 col-md-offset-4 text-center">
    <input form="Contact" type="submit" value="Submit">
  </div>
</div>
<!-- /////////////////////////////////////FORM///////////////////////////////////////// -->
<?php include "Footer.php"; ?>
</body>
</html>
