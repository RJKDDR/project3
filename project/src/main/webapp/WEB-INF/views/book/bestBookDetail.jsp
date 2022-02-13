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

  <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"
  />
<style type="text/css">
html, body {

  height:100%; 
  overflow:hidden
}
img{ 
	position: absolute; 
	left: 700px; 
	top: 50px; }
</style>
<body>


	<div class="page-section pt-5">
		<div class="container">
			<nav aria-label="Breadcrumb">
				<ul class="breadcrumb p-0 mb-0 bg-transparent">
					<li class="breadcrumb-item"><a href="main.do">Home</a></li>
					<li class="breadcrumb-item"><a href="bookList.do">자료검색</a></li>
					<li class="breadcrumb-item active">도서 상세페이지</li>
				</ul>
			</nav>
			<br>
			<br>
			<div class="row">
				<div class="col-lg-6">
					<div class="blog-single-wrap">
						<a href="${pageContext.request.contextPath}/bestBookDetail.do?bookName=${book.bookName}">
						<img style="width: 250px; heigth: 150px" src="assets/img/bookImage/${book.bookImage}" alt="..." /></a>
						<h1 class="post-title">${book.bookName}</h1>
						
						<div class="post-meta">
							<div class="post-bookCompany">
								<span><i class="fas fa-user-edit"></i></span>  ${book.bookWriter}&nbsp;&nbsp;/&nbsp;&nbsp;&nbsp;
								<span ><i class="fas fa-building"></i></span>
								 ${book.bookCompany}
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
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	


</body>
</html>