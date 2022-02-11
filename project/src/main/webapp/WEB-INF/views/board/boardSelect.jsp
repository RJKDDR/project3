<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body {
	background: #fff;
}

.blueone {
	border-collapse: collapse;
}

.blueone th {
	padding: 10px;
	color: #168;
	border-bottom: 3px solid #168;
	text-align: left;
}

.blueone td {
	color: #669;
	padding: 10px;
	border-bottom: 1px solid #ddd;
}

.blueone tr:hover td {
	color: #004;
}
</style>
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
		<input type="hidden" id="del" name="del"> <input type="hidden"
			id="boardId" name="boardId">
	</form>

	<div align="center">
		<div>
			<h1>QnA</h1>
		</div>
		<div align="center">
			<div class="container-fluid pt-4 px-4">
				<div class="col-sm-12 col-xl-6">
					<div class="bg-light rounded h-100 p-4">
						<form id="frm" method="post">
							<div class="row mb-3">
								<label for="inputEmail3" class="col-sm-2 col-form-label">제목</label>
								<div class="col-sm-10">
									<input class="form-control" type="text" id="boardTitle"
										value="${board.BTitle }" name="boardTitle" required="required">
								</div>
							</div>
							<div class="row mb-3">
								<label for="inputPassword3" class="col-sm-2 col-form-label">작성일자</label>
								<div class="col-sm-10">
									<input class="form-control" type="date" id="noticeDate"
										value="${board.BDate }" readonly="readonly" name="boardDate">
								</div>
							</div>
							<div class="row mb-3">
								<label for="inputPassword3" class="col-sm-2 col-form-label">작성자</label>
								<div class="col-sm-10">
									<input class="form-control" type="text" id="boardWriter"
										name="boardWriter" value="${board.BWriter }"
										readonly="readonly">
								</div>
							</div>
							<input type="hidden" id="boardId" name="boardId"
								value="${board.BIdx }">
							<div class="row mb-3">
								<label for="inputPassword3" class="col-sm-2 col-form-label">내용</label>
								<div class="col-sm-10">
									<textarea class="form-control" rows="10" cols="59"
										id="boardContent" name="boardContent">${board.BContent }</textarea>
								</div>
							</div>
							<div class="col-md-12" align="center">
								<c:if test="${name == board.BWriter }">
									<button type="button" class="btn btn-primary"
										onclick="selectInfo('U')">수정</button>&nbsp;&nbsp;
                  <button type="button" class="btn btn-primary"
										onclick="selectInfo('D')">삭제</button>&nbsp;&nbsp;
               </c:if>
								<button type="button" class="btn btn-primary"
									onclick="location.href='qnaList.do'">목록</button>
								&nbsp;&nbsp;
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>


		<!--    댓글 기능 !! -->
		<div>
			<br>
			<br>
			<br>
			<form id="frm2" action="replyWrite.do" method="post">
				<div>
					<table style="border-top: 1px solid black; width: 800px;">
						<tr>
							<th>작성자&nbsp;&nbsp;</th>
							<th>내 용&nbsp;&nbsp;</th>
							<th>댓글작성일자&nbsp;</th>
							<th>댓글삭제</th>
						</tr>
						<c:forEach items="${replys }" var="reply">
							<c:if test="${reply.BIdx == board.BIdx }">
								<tr>
									<td>${reply.reWriter }</td>
									<td>${reply.reContent }</td>
									<td>${reply.reDate }</td>
									<c:if test="${reply.reWriter == name }">
										<td><input type="button"
											onclick="deleteReply(${reply.replyId},${board.BIdx })"
											value="삭제"></td>
									</c:if>
									<c:if test="${reply.reWriter != name }">
										<td>권한없음</td>
									</c:if>
								</tr>
							</c:if>
						</c:forEach>
					</table>
					<c:if test="${!empty id }">
						<div>
							<label>${name }</label> <input type="hidden" id="replyWriter"
								name="replyWriter" value="${name}" readonly="readonly">
							<input type="text" id="replyContent" name="replyContent"
								required="required"> <input type="submit"
								class="btn btn-primary btn-sm" value="등록">&nbsp;&nbsp; <input
								type="hidden" id="replyIdx" name="replyIdx"
								class="btn btn-primary" value="${board.BIdx }"> <input
								type="hidden" id="boardId" name="boardId"
								class="btn btn-primary" value="${board.BIdx }">
						</div>
					</c:if>
				</div>
			</form>
		</div>
	</div>
</body>
</html>