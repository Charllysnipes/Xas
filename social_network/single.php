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
	<title>View Your Post</title>
	<meta http-equiv="X-UA-compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">          
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link href="css/bootstrap.min.css" link rel="stylesheet">
<link rel="stylesheet" type="text/css" href="style/home_style2.css">
</head>
<body>
<div class="row">
	<div class="col-sm-12">
	<center><h2>Comments</h2></center>	
	<?php single_post(); ?>
	</div>
</div>
</body>
</html>