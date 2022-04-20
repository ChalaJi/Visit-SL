<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Administrator Login</title>

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

<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
	background-color: #ffffff;
	opacity: 0.8;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}
</style>
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
	<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
	<div class="hero" style="background-image: url('images/hero_1.jpg');">
		<br>
		<table>
			<tr>
				<th><h4>Package Number</h4></th>
				<th><h4>Package Name</h4></th>
				<th><h4>Duration</h4></th>
				<th><h4>Province</h4></th>
				<th><h4>Destinations</h4></th>
				<th><h4>Update Package</h4></th>
				<th><h4>Delete Package</h4></th>
			</tr>
			<c:forEach var="pj" items="${PD}">

				<c:set var="pno" value="${pj.packageNumber}" />
				<c:set var="pna" value="${pj.name}" />
				<c:set var="pdura" value="${pj.duration}" />
				<c:set var="ppro" value="${pj.province}" />
				<c:set var="pdes" value="${pj.destinations}" />

				<tr>
					<td>${pj.packageNumber}</td>
					<td>${pj.name}</td>
					<td>${pj.duration}</td>
					<td>${pj.province}</td>
					<td>${pj.destinations}</td>
					<c:url value="UpdatePackage.jsp" var="packupdate">
						<c:param name="pnoj" value="${pno}" />
						<c:param name="pnaj" value="${pna}" />
						<c:param name="pduraj" value="${pdura}" />
						<c:param name="pproj" value="${ppro}" />
						<c:param name="pdesj" value="${pdes}" />
					</c:url>
					<td><a href="${packupdate}"> <input type="button"
							name="update" value="Update">
					</a></td>
					<c:url value="DeletePackage.jsp" var="packdelete">
						<c:param name="pnoj" value="${pno}" />
						<c:param name="pnaj" value="${pna}" />
						<c:param name="pduraj" value="${pdura}" />
						<c:param name="pproj" value="${ppro}" />
						<c:param name="pdesj" value="${pdes}" />
					</c:url>
					<td><a href="${packdelete}"> <input type="button"
							name="delete" value="Delete">
					</a></td>
				</tr>
			</c:forEach>
		</table>
		<br>
		<c:url value="CreatePackage.jsp" var="packcreate" />
		<a href="${packcreate}"> <input type="button" name="create"
			value="Create New Package">
		</a>
	</div>
	<!--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
</body>
</html>