<!DOCTYPE html>
<?php 
session_start();

include("includes/header.php");

if(!isset($_SESSION['user_email'])){
	header("location: index.php");
}
?>
<html>
<head>
	<title>See Results</title>
	<meta http-equiv="X-UA-compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">          
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link href="css/bootstrap.min.css" link rel="stylesheet">
<link rel="stylesheet" type="text/css" href="style/home_style2.css">
</head>
<body>
	<div class="row">
	<center><h2>See your results here!</h2></center>
	<?php results(); ?>
	</div>
</body>
</html>