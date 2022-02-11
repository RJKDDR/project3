<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>qna 리스트</title>
<link rel="stylesheet" href="assets/css/board.css">
<link rel="stylesheet" href="assets/css/util.css">
</head>
<body>
	<div class="limiter"><br>
		<div align="center">
			<h3>회원게시판</h3>
		</div>
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver5 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
									<th class="cell100 column1">글번호</th>
									<th class="cell100 column2">제 목</th>
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
								<c:forEach items="${boards }" var="board">
									<tr class="row100 body" onclick="boardSelect(${board.BIdx})">
										<td class="cell100 column1">${board.BIdx }</td>
										<td class="cell100 column2">${board.BTitle }</td>
										<td class="cell100 column3">${board.BWriter}</td>
										<td class="cell100 column4">${board.BDate }</td>
										<td class="cell100 column5">${board.BHit }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<div>
						<c:if test="${not empty id }">
						<button type="button" onclick="location.href='boardWriteForm.do'" class="btn btn-primary">글쓰기</button>
						</c:if>
					</div>
			</div>
		</div>
		<div>
			<form id="frm" action="boardSelect.do" method="post">
				<input type="hidden" id="boardId" name="boardId">
			</form>
		</div>
	</div>
	<script type="text/javascript">
		function boardSelect(id){
			frm.boardId.value = id;
			frm.submit();
		}
	</script>
</body>
</html>