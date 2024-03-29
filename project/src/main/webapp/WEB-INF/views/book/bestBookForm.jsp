<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<style type="text/css">
html, body {

  height:100%; 
  overflow:hidden


}

</style>

</head>
<body>
<div class="container">
  <div class="container-fluid mt-4">
      <div class="row">
        <div class="col-lg-6 mb-5 mb-lg-0">
        <br>
            <h2 class="mb-4 font-weight-medium text-secondary">도서정보입력</h2>
            <br>
              <br>
            <form action="${pageContext.request.contextPath}/bestBookInsert.do" method="post">
            <div class="row form-group">
               <!-- input에 id(jsp)와 name(Java)에서 사용될 값을 지정해줌 DB로 요청할 command 작성시 vo객체 만들 때 값이 들어간다. -->
              <div class="col-md-6 mb-3 mb-md-0">
                <label class="text-black" for="fname">책 이름</label>
                <input type="text" id="bookName" name="bookName" class="form-control">
              </div>
              <div class="col-md-6">
                <label class="text-black" for="lname">지은이</label>
                <input type="text" id="bookWriter" name="bookWriter" class="form-control">
              </div>
            </div>
    
            <div class="row form-group">
              <div class="col-md-12">
                <label class="text-black" for="email">책 소개</label>
                <textarea id="bookStory" name="bookStory" class="form-control" rows="10" cols="40"></textarea>
              </div>
            </div>
            
            <div class="row form-group">
              <div class="col-md-12">
                <label class="text-black" for="email">출판사</label>
               <input type="text" id="bookCompany" name="bookCompany" class="form-control">
              </div>
            </div>
    
            <div class="row form-group">
    
              <div class="col-md-12">
                <label class="text-black" for="subject">이미지</label>
                <input type="file" id="bookImage" name="bookImage" class="form-control" accept="image/*" >
              </div>
            </div>
    
    
            <div class="row form-group mt-4">
              <div class="col-md-12">
              <!-- href란에 html로만 만들어 놓은 bestBook란에 command해야 넘어가진다. -->
                 <input type="submit" value="등록" class="btn btn-primary">
                <input type="button" value="목록" onclick="history.back(-1);" class="btn btn-primary">
              </div>
            </div>
            </form>
        </div>
       </div>
     </div>
     </div>
     <br>
     <br>
  	  <br>
</body>
</html>