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

		function deleteReply(id,di) {
			console.log(id);
			document.forms.delFrm.del.value=id;
			
			document.forms.delFrm.boardId.value=di;
			document.forms.delFrm.submit();
		}
	</script>

	<form action="replyDelete.do" method="post" name="delFrm" id="delFrm">
		<input type="hidden" id="del" name="del">
		<input type="hidden" id="boardId" name="boardId">
	</form>

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
								<td colspan="5"><input type="text" id="boardTitle" name="boardTitle" value="${board.BTitle }"></td>
							</tr>
							<input type="hidden" id="boardId" name="boardId" value="${board.BIdx }">
							<tr>
								<th>내용</th>
								<td colspan="5"><textarea rows="10" cols="100" id="boardContent" name="boardContent">${board.BContent }</textarea></td>
							</tr>
						</c:if>
					</table>
				</div><br>
				<div>
					<c:if test="${name == board.BWriter }">
						<button type="button" onclick="selectInfo('U')">수정</button>&nbsp;&nbsp;
						<button type="button" onclick="selectInfo('D')">삭제</button>&nbsp;&nbsp;
			</c:if>
					<button type="button" onclick="location.href='qnaList.do'">목록</button>&nbsp;&nbsp;
				</div>
			</form>
		</div>

		<!--    댓글 기능 !! -->
		<div>
			<form id="frm2" action="replyWrite.do" method="post">
				<div>
					<table border="1">
						<tr>
							<th>작성자</th>
							<th>내 용</th>
							<th>댓글작성일자</th>
							<th>댓글삭제</th>
						</tr>
						<c:forEach items="${replys }" var="reply">
							<c:if test="${reply.BIdx == board.BIdx }">
								<tr>
									<td>${reply.reWriter }</td>
									<td>${reply.reContent }</td>
									<td>${reply.reDate }</td>
									<c:if test="${reply.reWriter == name }">
										<td>
											<input type="button" onclick="deleteReply(${reply.replyId},${board.BIdx })" value="삭제">
										</td>
									</c:if>
									<c:if test="${reply.reWriter != name }">
										<td><input type="text" value="권한없음" readonly="readonly"></td>
									</c:if>
								</tr>
							</c:if>
						</c:forEach>
						<c:if test="${!empty id }">
							<div>
								<input type="text" id="replyWriter" name="replyWriter" value="${name}" readonly="readonly"> 
								<input type="text" id="replyContent" name="replyContent"> 
								<input type="submit" value="등록">&nbsp;&nbsp; 
								<input type="hidden" id="replyIdx" name="replyIdx" value="${board.BIdx }"> 
								<input type="hidden"id="boardId" name="boardId" value="${board.BIdx }">
							</div>
						</c:if>
					</table>
				</div>
			</form>
		</div>
	</div>
</body>
</html>