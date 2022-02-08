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
			<table border="1">
			<tr>
			<th width="50">제목</th>
			<td width="50"><input type="text" id="noticeTitle" name="noticeTitle" ></td>
			<th width="50">작성일자</th>
			<td width="50"><input type="date" id="noticeDate" name="noticeDate"></td>
			</tr>
			<tr>
			<th width="100">작성자</th>
			<td width="150"><input type="text" id="noticeWriter"name="noticeWriter" value="${name }" readonly="readonly"></td>
			</tr>
			<tr>
			<th>내 용</th>
			<td colspan="3"><textarea rows="10" cols="59" id="noticeSubject" name="noticeSubject"></textarea></td>
			</tr>
			</table>

		<br> 
		<div class="col-md-12">
				<input type="submit" value="등록" class="btn btn-primary">&nbsp;&nbsp;
			
				<input type="reset" value="취소" class="btn btn-primary">&nbsp;&nbsp;
			
				<input type="button" value="목록" class="btn btn-primary" onclick="location.href='notice.do'">
			</div>
		</form>
</div>
</div>
</body>
</html>