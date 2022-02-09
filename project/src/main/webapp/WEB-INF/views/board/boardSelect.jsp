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
	<script type="text/javascript">
		function selectInfo(str) {
			if (str == "U") {
				frm.action = "boardUpdate.do";
			} else if (str == "D") {
				frm.action = "boardDelete.do";
			}
			frm.submit();
		}
	</script>
	<div align="center">
		<div>
			<h1>QnA</h1>
		</div>
		<div>
			<form id="frm" method="post">
				<div>
					<table border="1">
						<tr>
							<th width="100">작성자</th>
							<th width="150" align="center">${board.BWriter }</th>
							<th width="100">작성일자</th>
							<th width="150" align="center">${board.BDate }</th>
							<th width="100">조회수</th>
							<th width="150" align="center">${board.BHit }</th>
						</tr>
						<c:if test="${name != board.BWriter }">
							<tr>
								<th>제목</th>
								<td colspan="5">${board.BTitle }</td>
							</tr>
							<tr>
								<th>내용</th>
								<td colspan="5">${board.BContent }</td>
							</tr>
						</c:if>
						<c:if test="${name == board.BWriter }">
							<tr>
								<th>제목</th>
								<td colspan="5">
								 <input type="text" id="boardTitle" name="boardTitle" value="${board.BTitle }"></td>
							</tr>
							<input type="hidden" id="boardId" name="boardId" value="${board.BIdx }">
							<tr>
								<th>내용</th>
								<td colspan="5"><textarea rows="10" cols="100" id="boardContent" name="boardContent">${board.BContent }</textarea>
								</td>
							</tr>
						</c:if>
					</table>
				</div>
				<br>
				<div>
					<c:if test="${name == board.BWriter }">
						<button type="button" onclick="selectInfo('U')">수정</button>
			&nbsp;&nbsp;
			<button type="button" onclick="selectInfo('D')">삭제</button>
			&nbsp;&nbsp;
			</c:if>
					<button type="button" onclick="location.href='qnaList.do'">목록</button>
					&nbsp;&nbsp;
				</div>
			</form>
		</div>
	</div>
</body>
</html>