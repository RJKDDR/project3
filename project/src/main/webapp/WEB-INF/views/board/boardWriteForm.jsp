<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
            <div >
                <h6 class="mb-4">&emsp;자유게시판 글쓰기</h6>
                <form id="frm" action="boardWrite.do" method="post">
                    <div class="row mb-3">
                        <label for="subject" class="col-sm-2 col-form-label">제목</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="boardTitle" name="boardTitle" required="required">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="name" class="col-sm-2 col-form-label">작성자</label>
                        <div class="col-sm-10">
                            <input type="text" id="boardWriter" name="boardWriter" value="${name }" readonly="readonly" class="form-control">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="content" class="col-sm-2 col-form-label">내용</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" rows="10" id="boardContent" name="boardContent" required="required"></textarea>
                        </div>
                    </div>
                    <br>
                    <div class="col-md-12" align="center">
						<input type="submit" value="등록" class="btn btn-primary">&nbsp;&nbsp;
						<input type="button" value="목록가기" class="btn btn-primary"
							onclick="location.href='qnaList.do'">
					</div>                  
                </form><br><br>         
            </div>
        </div>
    </div>
</div>
	<script>
		document.getElementById('boardDate').value = new Date().toISOString()
				.substring(0, 10)
	</script>
</body>
</html>