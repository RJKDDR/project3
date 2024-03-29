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
		<div class="container-fluid pt-4 px-4">
			<div class="col-sm-12 col-xl-6">
				<div class="bg-light rounded h-100 p-4">
					<h6 class="mb-4">공지사항</h6>
					<form>
						<div class="row mb-3">
							<label for="inputEmail3" class="col-sm-2 col-form-label">제목</label>
							<div class="col-sm-10">
								<input class="form-control" type="text" id="noticeTitle"
									value="${notice.noticeTitle }" name="noticeTitle"
									readonly="readonly">
							</div>
						</div>
						<div class="row mb-3">
							<label for="inputPassword3" class="col-sm-2 col-form-label">작성일자</label>
							<div class="col-sm-10">
								<input class="form-control" type="date"
									value="${notice.noticeDate }" id="noticeDate" name="noticeDate"
									readonly="readonly">
							</div>
							<script>
								document.getElementById('noticeDate').value = new Date()
										.toISOString().substring(0, 10);
							</script>
						</div>
						<div class="row mb-3">
							<label for="inputPassword3" class="col-sm-2 col-form-label">작성자</label>
							<div class="col-sm-10">
								<input class="form-control" type="text" id="noticeWriter" name="noticeWriter" value="${notice.noticeWriter }" readonly="readonly">
							</div>
						</div>
						<div class="row mb-3">
							<label for="inputPassword3" class="col-sm-2 col-form-label">내용</label>
							<div class="col-sm-10">
								<textarea class="form-control" rows="10" cols="59"
									id="noticeSubject" name="noticeSubject" readonly="readonly">${notice.noticeSubject }</textarea>
							</div>
						</div>

						<br>
						<div class="col-md-12">
							<input type="button" value="목록" class="btn btn-primary"
								onclick="location.href='notice.do'">
						</div>
				</div>
			</div>
			</form>
		</div>
	</div>
	

	</div>
</body>
</html>