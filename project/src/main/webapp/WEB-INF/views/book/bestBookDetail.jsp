<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta http-equiv="X-UA-Compatible" content="ie=edge">

<meta name="copyright" content="MACode ID, https://macodeid.com/">

<title>SeoGram - SEO Agency Template</title>

<link rel="stylesheet" href="../assets/css/maicons.css">

<link rel="stylesheet" href="../assets/css/bootstrap.css">

<link rel="stylesheet" href="../assets/vendor/animate/animate.css">

<link rel="stylesheet" href="../assets/css/theme.css">
</head>
<body>

	<!-- Back to top button -->
	<div class="back-to-top"></div>

	<header> </header>

	<div class="page-section pt-5"> 
		<div class="container">
			<nav aria-label="Breadcrumb">
				<ul class="breadcrumb p-0 mb-0 bg-transparent">
					<li class="breadcrumb-item"><a href="main.do">Home</a></li>
					<li class="breadcrumb-item"><a href="librarySelect.do">인기도서</a></li>
					<li class="breadcrumb-item active">인기도서 상세페이지</li>
				</ul>
			</nav>
	

			<div class="row">
				<div class="col-lg-12">
					<div class="blog-single-wrap">
						<div class="header">
							<div class="post-thumb" >
								 <img src="../assets/img/blog/blog-1.jpg" alt="">
							</div>
						</div>
						
					
						<h1 class="post-title">${book.bookName}</h1>
						<br>
						<div class="post-meta">
							<div class="post-bookCompany">
								<span class="icon"><span class="mai-pin"></span> </span> <a>${book.bookWriter}</a>&nbsp;&nbsp;&nbsp;
								<span class="icon"> <span class="mai-business"></span>
								</span> <a>${book.bookCompany}</a>
							</div>
						</div>
						
						<div class="post-content">
							<p><h1>도서명</h1></p>
							
							<blockquote class="quote">
								책소개</span>
							</blockquote>
							<p>${book.bookStory}</p>
						</div>
					</div>

	
				

					<footer class="page-footer bg-image"
						style="background-image: url(../assets/img/world_pattern.svg);">
						<div class="container">
							<div class="row mb-5">
								<div class="col-lg-3 py-3">
									<h3>SEOGram</h3>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
										Libero amet, repellendus eius blanditiis in iusto eligendi
										iure.</p>

									<div class="social-media-button">
										<a href="#"><span class="mai-logo-facebook-f"></span></a> <a
											href="#"><span class="mai-logo-twitter"></span></a> <a
											href="#"><span class="mai-logo-google-plus-g"></span></a> <a
											href="#"><span class="mai-logo-instagram"></span></a> <a
											href="#"><span class="mai-logo-youtube"></span></a>
									</div>
								</div>
								<div class="col-lg-3 py-3">
									<h5>Company</h5>
									<ul class="footer-menu">
										<li><a href="#">About Us</a></li>
										<li><a href="#">Career</a></li>
										<li><a href="#">Advertise</a></li>
										<li><a href="#">Terms of Service</a></li>
										<li><a href="#">Help & Support</a></li>
									</ul>
								</div>
								<div class="col-lg-3 py-3">
									<h5>Contact Us</h5>
									<p>203 Fake St. Mountain View, San Francisco, California,
										USA</p>
									<a href="#" class="footer-link">+00 1122 3344 5566</a> <a
										href="#" class="footer-link">seogram@temporary.com</a>
								</div>
								<div class="col-lg-3 py-3">
									<h5>Newsletter</h5>
									<p>Get updates, news or events on your mail.</p>
									<form action="#">
										<input type="text" class="form-control"
											placeholder="Enter your email..">
										<button type="submit" class="btn btn-success btn-block mt-2">Subscribe</button>
									</form>
								</div>
							</div>

							<p class="text-center" id="copyright">
								Copyright &copy; 2020. This template design and develop by <a
									href="https://macodeid.com/" target="_blank">MACode ID</a>
							</p>
						</div>
					</footer>

					<script src="../assets/js/jquery-3.5.1.min.js"></script>

					<script src="../assets/js/bootstrap.bundle.min.js"></script>

					<script src="../assets/js/google-maps.js"></script>

					<script src="../assets/vendor/wow/wow.min.js"></script>

					<script src="../assets/js/theme.js"></script>
</body>
</html>