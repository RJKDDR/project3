<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="css/noticeListstyle.css">

</head>
<body>
	<div align="center">
		<div>
			<h1>공지사항 목록</h1>
		</div>
		<div>
		
		<table >
						  <thead>
						    <tr>
						      <th>글 번 호</th>
						      <th>글 제 목</th>
						      <th>작 성 자</th>
						      <th>작 성 일 자</th>						      
						      <th>조회수</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr >
						      <th >1</th>
						      <td>공지사항 입니다</td>
						      <td>관리자</td>
						      <td>작성일자</td>
						      <td>0</td>
						      
						    </tr>
						    <tr >
						      <th>1</th>
						      <td>공지사항 입니다</td>
						      <td>관리자</td>
						      <td>작성일자</td>
						      <td>0</td>
						      
						    </tr>
						    <tr>
						      <th >1</th>
						      <td>공지사항 입니다</td>
						      <td>관리자</td>
						      <td>작성일자</td>
						      <td>0</td>
						      
						    </tr>
						    <tr>
						      <th >1</th>
						      <td>공지사항 입니다</td>
						      <td>관리자</td>
						      <td>작성일자</td>
						      <td>0</td>
						      
						    </tr>
						   
			
				</tbody>

			</table>
		</div>
		<br>
		<div>
		<button type="button" onclick="location.href='noticeWriteForm.do'">글쓰기</button>
		</div>
		<div>
			<form id="frm" action="noticeSelect.do" method="post">
				<input type="hidden" id="noticeId" name="noticeId">
			</form>
		</div>
	</div>
	
</body>
</html>