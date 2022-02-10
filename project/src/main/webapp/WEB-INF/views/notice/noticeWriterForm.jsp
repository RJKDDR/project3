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
		<div class="container-fluid pt-4 px-4">
			<div class="col-sm-12 col-xl-6">
				<div class="bg-light rounded h-100 p-4">
					<h6 class="mb-4">글 쓰 기</h6>
					<form id="frm" action="noticeWrite.do" method="post">
						<div class="row mb-3">
							<label for="inputEmail3" class="col-sm-2 col-form-label">제목</label>
							<div class="col-sm-10">
								<input class="form-control" type="text" id="noticeTitle"
									name="noticeTitle"> ${notice.noticeTitle }
							</div>
						</div>
						<div class="row mb-3">
							<label for="inputPassword3" class="col-sm-2 col-form-label">작성일자</label>
							<div class="col-sm-10">
								<input class="form-control" type="date" id="noticeDate" name="noticeDate">${notice.noticeDate }
							</div>
							<script>
								document.getElementById('noticeDate').value = new Date().toISOString().substring(0, 10);
							</script>
						</div>
						<div class="row mb-3">
							<label for="inputPassword3" class="col-sm-2 col-form-label">작성자</label>
							<div class="col-sm-10">
								<input class="form-control" type="text" id="noticeWriter"
									name="noticeWriter" value="${name }" readonly="readonly">
							</div>
						</div>
						<div class="row mb-3">
							<label for="inputPassword3" class="col-sm-2 col-form-label">내용</label>
							<div class="col-sm-10">
								<textarea class="form-control" rows="10" cols="59"
									id="noticeSubject" name="noticeSubject">${notice.noticeSubject }</textarea>
							</div>
						</div>



						<br>
						<div class="col-md-12">
							<input type="submit" value="등록" class="btn btn-primary">&nbsp;&nbsp;

							<input type="reset" value="취소" class="btn btn-primary">&nbsp;&nbsp;

							<input type="button" value="목록" class="btn btn-primary"
								onclick="location.href='notice.do'">
						</div>
				</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>