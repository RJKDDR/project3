<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<table class="table" border="1">

			<thead>
				<tr>
					<th>순번</th>
					<th>책제목</th>
					<th>지은이</th>
					<th>출판사</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="book" items="${books}">
					  <a href="${pageContext.request.contextPath}/bestBookDetail.do?bookName=${book.bookName }"></a> 
					<tr>
						<td>${book.bookNo}</td>
						<td onclick="location.href='bestBookDetail.do'">${book.bookName}</td>
						<td>${book.bookWriter}</td>
						<td>${book.bookCompany}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<nav aria-label="Page Navigation">
        <ul class="pagination justify-content-center">
        <!-- page-item disabled : 누를수 없도록 비활성화 시킨상태(회색으로 보여진다.), page-item active: 활성화 상태(파란색으로 보여진다.) -->
          <li class="page-item disabled">
            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">맨처음으로</a>
          </li>
          <li class="page-item"><a class="page-link" href="#">1</a></li>
          <li class="page-item" aria-current="page">
          	<!-- sr-only : 웹상에서는 안나타나고, 작업시에만 보임 -->
            <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
          </li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item"><a class="page-link" href="#">4</a></li>
          <li class="page-item"><a class="page-link" href="#">5</a></li>
          <li class="page-item"><a class="page-link" href="#">6</a></li>
          <li class="page-item"><a class="page-link" href="#">7</a></li>
          <li class="page-item"><a class="page-link" href="#">8</a></li>
          <li class="page-item"><a class="page-link" href="#">9</a></li>
          <li class="page-item">
            <a class="page-link" href="#">Next</a>
          </li>
        </ul>
      </nav>
       <input type="submit"  value="글쓰기" onclick="location.href='bestBookInsertForm.do'">
		
</body>
</html>