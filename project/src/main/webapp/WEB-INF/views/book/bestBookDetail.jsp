<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta http-equiv="X-UA-Compatible" content="ie=edge">

<meta name="copyright" content="MACode ID, https://macodeid.com/">

<title></title>

<link rel="stylesheet" href="../assets/css/maicons.css">

<link rel="stylesheet" href="../assets/css/bootstrap.css">

<link rel="stylesheet" href="../assets/vendor/animate/animate.css">

<link rel="stylesheet" href="../assets/css/theme.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
</head>
<style>
img{ 
	position: absolute; 
	left: 700px; 
	top: 50px; }
</style>
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
				<div class="col-lg-6">
					<div class="blog-single-wrap">
						<a href="${pageContext.request.contextPath}/bestBookDetail.do?bookName=${book.bookName}">
						<img style="width: 250px; heigth: 150px" src="assets/img/bookImage/${book.bookImage}" alt="..." /></a>
						<h1 class="post-title">${book.bookName}</h1>
						
						<div class="post-meta">
							<div class="post-bookCompany">
								<span><i class="fa-solid fa-book"></i><span class="mai-pin"></span> </span> ${book.bookWriter}&nbsp;&nbsp;&nbsp;
								<span >	</i><span class="mai-business"></span>
								</span> ${book.bookCompany}
							</div>
						</div>
						<div >
							<blockquote class="quote">책소개</blockquote>
							<p>${book.bookStory}</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>