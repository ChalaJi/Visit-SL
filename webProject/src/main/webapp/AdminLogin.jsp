<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>




<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="images3/icons/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="vendor3/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<link rel="stylesheet" type="text/css"
	href="vendor3/animate/animate.css">
<link rel="stylesheet" type="text/css"
	href="vendor3/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css"
	href="vendor3/animsition/css/animsition.min.css">
<link rel="stylesheet" type="text/css"
	href="vendor3/select2/select2.min.css">
<link rel="stylesheet" type="text/css"
	href="vendor3/daterangepicker/daterangepicker.css">
<link rel="stylesheet" type="text/css" href="css3/util.css">
<link rel="stylesheet" type="text/css" href="css3/main.css">




</head>
<body style="background-color: #666666;">

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form action="login" method="post"
					class="login100-form validate-form">
					<span class="login100-form-title p-b-43"> Administrator
						Login </span>



					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="name" pattern="GUI+[0-9]{3}" title="GUIxxx"> <span
							class="focus-input100"></span> <span class="label-input100">User
							Name</span>
					</div>


					<div class="wrap-input100 validate-input">
						<input class="input100" type="password" name="pw"> <span
							class="focus-input100"></span> <span class="label-input100">Password</span>
					</div>

					<div class="flex-sb-m w-full p-t-3 p-b-32">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox"
								name="remember-me"> <label class="label-checkbox100"
								for="ckb1"> Remember me </label>
						</div>

						<div>
							<a href="#" class="txt1"> Forgot Password? </a>
						</div>
					</div>
					<div class="container-login100-form-btn">

						<input class="login100-form-btn" type="submit" name="submit"
							value="login">
					</div>

					<div class="text-center p-t-46 p-b-20">
						<span class="txt2"> or sign up using </span>
					</div>

					<div class="login100-form-social flex-c-m">
						<a href="#" class="login100-form-social-item flex-c-m bg1 m-r-5">
							<i class="fa fa-facebook-f" aria-hidden="true"></i>
						</a> <a href="#" class="login100-form-social-item flex-c-m bg2 m-r-5">
							<i class="fa fa-twitter" aria-hidden="true"></i>
						</a>
					</div>
				</form>
				<div class="login100-more"
					style="background-image: url('images3/bg-01.jpg');"></div>
			</div>
		</div>
	</div>

	<script src="vendor3/jquery/jquery-3.2.1.min.js"></script>
	<script src="vendor3/animsition/js/animsition.min.js"></script>
	<script src="vendor3/bootstrap/js/popper.js"></script>
	<script src="vendor3/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor3/select2/select2.min.js"></script>
	<script src="vendor3/daterangepicker/moment.min.js"></script>
	<script src="vendor3/daterangepicker/daterangepicker.js"></script>
	<script src="vendor3/countdowntime/countdowntime.js"></script>
	<script src="js3/main.js"></script>

</body>
</html>