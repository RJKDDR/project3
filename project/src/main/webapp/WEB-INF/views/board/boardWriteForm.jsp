<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h1>글 작 성</h1>
	</div>
	<div>
		<form id="frm" action="boardWrite.do" method="post">
			<div>
				<table border="1">
					<tr>
						<th width="100">작성자</th>
						<td width="150"><input type="text" id="boardWriter"
							name="boardWriter" value="${name }" readonly="readonly">
						</td>
					</tr>
					<tr>
						<th>제 목</th>
						<td colspan="3"><input type="text" size="20" id="boardTitle"
							name="boardTitle"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="3"><textarea rows="10" cols="40"
								id="boardContent" name="boardContent"></textarea></td>
					</tr>
				</table>
			</div>
			<br> <input type="submit" value="질문">&nbsp;&nbsp; 
			<input type="button" value="목록" onclick="location.href='qnaList.do'">&nbsp;&nbsp;

		</form>
	</div>
	<script>
		document.getElementById('boardDate').value = new Date().toISOString()
				.substring(0, 10)
	</script>
</body>
</html>