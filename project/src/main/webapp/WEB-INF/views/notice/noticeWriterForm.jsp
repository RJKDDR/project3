<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<div align="center">
		<div>
			<h1>글 작 성</h1>
		</div>
		<div>
			<form id="frm" action="noticeWrite.do" method="post">
				<div>
					<table border="1">
						<tr>
							<th width="100">작성자</th>
							<td width="150"><input type="text">
							</td>
							<th width="100">작성일자</th>
							<td width="150"><input type="date"></td>
							
						</tr>
						<tr>
							<th>제 목</th>
							<td colspan="3"><input type="text" size="59"></td>
						</tr>
						<tr>
							<th>내 용</th>
							<td colspan="3"><textarea rows="10" cols="59"></textarea></td>
						</tr>
					</table>
				</div><br>
				 <input type="submit" value="등록">&nbsp;&nbsp; 
				<input type="reset" value="취소">&nbsp;&nbsp; 
				<input type="button" value="목록" onclick="location.href='noticeList.do'">

			</form>
		</div>
	</div>
</body>
</html>