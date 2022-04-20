<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Package</title>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700"
	rel="stylesheet">
<link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="images2/icons/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="vendor2/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="vendor2/animate/animate.css">
<link rel="stylesheet" type="text/css"
	href="vendor2/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css"
	href="vendor2/select2/select2.min.css">
<link rel="stylesheet" type="text/css" href="css2/util.css">
<link rel="stylesheet" type="text/css" href="css2/main.css">

</head>
<body>

	<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close mt-3">
				<span class="icon-close2 js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>


	<div class="top-bar">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<a href="#" class=""><span class="mr-2  icon-envelope-open-o"></span>
						<span class="d-none d-md-inline-block">info@yourdomain.com</span></a>
					<span class="mx-md-2 d-inline-block"></span> <a href="#" class=""><span
						class="mr-2  icon-phone"></span> <span
						class="d-none d-md-inline-block">1+ (234) 5678 9101</span></a>


					<div class="float-right">

						<a href="#" class=""><span class="mr-2  icon-twitter"></span>
							<span class="d-none d-md-inline-block">Twitter</span></a> <span
							class="mx-md-2 d-inline-block"></span> <a href="#" class=""><span
							class="mr-2  icon-facebook"></span> <span
							class="d-none d-md-inline-block">Facebook</span></a>

					</div>

				</div>

			</div>

		</div>
	</div>

	<header class="site-navbar js-sticky-header site-navbar-target"
		role="banner">

		<div class="container">
			<div class="row align-items-center position-relative">


				<div class="site-logo">
					<a href="index.html" class="text-black"><span
						class="text-primary">VisitSL</a>
				</div>

				<div class="col-12">
					<nav class="site-navigation text-right ml-auto " role="navigation">

						<ul
							class="site-menu main-menu js-clone-nav ml-auto d-none d-lg-block">
							<li><a href="#home-section" class="nav-link">Home</a></li>
							<li><a href="#services-section" class="nav-link">Services</a></li>


							<li class="has-children"><a href="#about-section"
								class="nav-link">About Us</a>
								<ul class="dropdown arrow-top">
									<li><a href="#team-section" class="nav-link">Team</a></li>
									<li><a href="#pricing-section" class="nav-link">Pricing</a></li>
									<li><a href="#faq-section" class="nav-link">FAQ</a></li>
									<li class="has-children"><a href="#">More Links</a>
										<ul class="dropdown">
											<li><a href="#">Menu One</a></li>
											<li><a href="#">Menu Two</a></li>
											<li><a href="#">Menu Three</a></li>
										</ul></li>
								</ul></li>

							<li><a href="#why-us-section" class="nav-link">Why Us</a></li>

							<li><a href="#testimonials-section" class="nav-link">Testimonials</a></li>
							<li><a href="#blog-section" class="nav-link">Blog</a></li>
							<li><a href="#contact-section" class="nav-link">Contact</a></li>
						</ul>
					</nav>

				</div>

				<div class="toggle-button d-inline-block d-lg-none">
					<a href="#" class="site-menu-toggle py-5 js-menu-toggle text-black"><span
						class="icon-menu h3"></span></a>
				</div>

			</div>
		</div>

	</header>

	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/main.js"></script>
	<script src="vendor2/jquery/jquery-3.2.1.min.js"></script>
	<script src="vendor2/bootstrap/js/popper.js"></script>
	<script src="vendor2/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor2/select2/select2.min.js"></script>
	<script src="js2/main.js"></script>

	<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
	<%
	String pnumber = request.getParameter("pnoj");
	String pname = request.getParameter("pnaj");
	String pduration = request.getParameter("pduraj");
	String pprovince = request.getParameter("pproj");
	String pdestinations = request.getParameter("pdesj");
	%>

	<div class="bg-contact2"
		style="background-image: url('images2/bg-01.jpg');">
		<div class="container-contact2">
			<div class="wrap-contact2">
				<form action="update" method="post"
					class="contact2-form validate-form">
					<span class="contact2-form-title"> Update Package </span>

					<div class="wrap-input2 validate-input">
						<span class="label-input100">Package Number</span> <input
							class="input2" type="text" name="pnumber" value="<%=pnumber%>"
							readonly> <span class="focus-input2"></span>
					</div>

					<div class="wrap-input2 validate-input">
						<span class="label-input100">Package Name</span> <input
							class="input2" type="text" name="pname" value="<%=pname%>">
						<span class="focus-input2"></span>
					</div>

					<div class="wrap-input2 validate-input">
						<span class="label-input100">Package Duration</span> <input
							class="input2" type="text" name="pduration"
							value="<%=pduration%>"> <span class="focus-input2"></span>
					</div>

					<div class="wrap-input2 validate-input">
						<span class="label-input100">Province</span> <input class="input2"
							type="text" name="pprovince" value="<%=pprovince%>"> <span
							class="focus-input2"></span>
					</div>

					<div class="wrap-input2 validate-input">
						<span class="label-input100">Destinations</span> <input
							class="input2" type="text" name="pdestinations"
							value="<%=pdestinations%>"> <span class="focus-input2"></span>
					</div>

					<div class="container-contact2-form-btn">
						<div class="wrap-contact2-form-btn">
							<div class="contact2-form-bgbtn"></div>
							<button class="contact2-form-btn">Update Package</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
</body>
</html>