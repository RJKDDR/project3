<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>


.container img {
	width: 140px;
	height: 200px;
	display: block;
}
</style>
<body>
	<form id="frm2" action="bestBookDetail.do" method="post">
		<div align="center">
			<div>
				<br> <br>
				<h1>도서목록</h1>
				<br> <br> <br> <br>
				<div class="row">
					<c:forEach var="book" items="${books}">
						<div class="col-md-3">
							<div onclick="selectBook('${book.bookName}')">
								<div class="card-blog" >
									<div class="container" align="center">
										<a
											href="${pageContext.request.contextPath}/bestBookDetail.do?bookName=${book.bookName}">
											<img align="top" src="assets/img/bookImage/${book.bookImage}"
											alt="..." />
										</a>
									</div>
									<div class="body">
										<h5 class="post-title">${book.bookName}</h5>
										<div class="post-date">지은이 : ${book.bookWriter} / 출판사
											:${book.bookCompany}</div>
									</div>
								</div>
							</div>
							<br> <br>
						</div>
					</c:forEach>
				</div>
				<div class="col-md-12 " align="left">
					<input type="hidden" id="bookName" name="bookName">
					<c:if test="${id == 'micol' }">
						<div>
							<input type="button" class="btn btn-primary" value="글쓰기"
								onclick="location.href='bestBookInsertForm.do'">
						</div>
					</c:if>
				</div>
			</div>
		</div>
		<br>
		<br>
		<br> 
		<br> 
		<br> 

	</form>
	<script type="text/javascript">
		function selectBook(id) {
			frm2.bookName.value = id;
			frm2.submit();
		}
	</script>
</body>
</html>