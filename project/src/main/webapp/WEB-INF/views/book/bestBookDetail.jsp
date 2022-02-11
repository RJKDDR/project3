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

<title></title>

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
								 <img style="width:500px; heigth:300px" src="imageShow/${book.bookImage}" alt="..." >
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
						
							
							<blockquote class="quote">
								책소개</span>
							</blockquote>
							<p>${book.bookStory}</p>
						</div>
					</div>

		

					

</body>
</html>