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
	<title>Find New People</title>
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
			<center><h2>Find New People</h2></center><br><br>
			<div class="row">
				<div class="col-sm-4">
				</div>
				<div class="col-sm-4">
					<form class="search_form" action="">
						<input type="text" name="search_user" placeholder="Search Friend">
						<button class="btn btn-info" type="submit" name="search_user_btn">Search</button>
					</form>
				</div>
				<div class="col-sm-4">
				</div>
			</div><br><br>
			<?php search_user();  	?>
		</div>

		</div>
</body>
</html>