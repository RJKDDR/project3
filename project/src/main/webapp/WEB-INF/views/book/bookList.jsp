<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/board.css">
<link rel="stylesheet" href="assets/css/util.css">
</head>
<body>
	<form id="frm2" action="bestBookDetail.do" method="post">
		<div align="center">
			<div><br><br>		
				<h1>도서목록</h1>
				<br><br>
					<div class="wrap-table100">
						<div class="table100 ver5 m-b-110">
							<div class="table100-head">
								<table>
									<thead>
										<tr class="row100 head">
											<th class="cell100 column1">순번</th>
											<th class="cell100 column2">책제목</th>
											<th class="cell100 column3">작성자</th>
											<th class="cell100 column4">작성일자</th>
										</tr>
									</thead>
								</table>
							</div>

							<div class="table100-body js-pscroll">
								<table>
									<tbody>
										<c:forEach var="book" items="${books}">
											<tr onclick="selectBook('${book.bookName}')">
												<td class="cell100 column1">${book.bookNo}</td>
												<td class="cell100 column2">${book.bookName}</td>
												<td class="cell100 column3">${book.bookWriter}</td>
												<td class="cell100 column4">${book.bookCompany}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<div class="row form-group mt-4">
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
			</div>
		
	</form>
	<script type="text/javascript">
		function selectBook(id) {
			frm2.bookName.value = id;
			frm2.submit();
		}
	</script>
</body>
</html>