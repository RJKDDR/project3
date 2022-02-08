<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div>
			<h1>공지사항 목록</h1>
		</div>
		<div>
		
			<div class="table100 ver5 m-b-110">
				<div class="table100-head">
					<table>
						<thead>
							<tr class="row100 head">
								<th class="cell100 column1">글번호</th>
								<th class="cell100 column2">제목</th>
								<th class="cell100 column3">작성자</th>
								<th class="cell100 column4">작성일자</th>
								<th class="cell100 column5">조회수</th>
							</tr>
						</thead>
					</table>
				</div>

				<div class="table100-body js-pscroll">
					<table>
						<tbody>
						<c:forEach items="${notices }" var="notice">
							<tr class="row100 body" onclick="location.href='noticeSelect.do'">
								<td class="cell100 column1">${notice.noticeId }</td>
								<td class="cell100 column2">${notice.noticeTitle }</td>
								<td class="cell100 column3">${notice.noticeWriter }</td>
								<td class="cell100 column4">${notice.noticeDate }</td>
								<td class="cell100 column5">${notice.noticeHit }</td>
							</tr>
							</c:forEach>							
						</tbody>
					</table>
				</div>
			</div>

		</div>
		<br>
		
		<div class="row form-group mt-4">
		<c:if test="${not empty id }">
			<div class="col-md-12">
				<input type="submit" value="글쓰기" class="btn btn-primary" onclick="location.href='noticeWriterForm.do'">
			</div>
			</c:if>
			<div>
				<form id="frm" action="noticeSelect.do" method="post">
					<input type="hidden" id="noticeId" name="noticeId">
				</form>
			</div>
		</div>
		</div>
		<script type="text/javascript">
		function noticeSelect(id) {
			frm.noticeId.value = id;
			frm.submit();
		}
		</script>
</body>
</html>