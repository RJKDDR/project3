<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div class="container-fluid mt-4">
      <div class="row">
        <div class="col-lg-6 mb-5 mb-lg-0">
          <form method="post" action="bestBook.jsp" enctype="multipart/form-data" class="contact-form py-5 px-lg-5">
            <h2 class="mb-4 font-weight-medium text-secondary">도서정보입력</h2>
            <div class="row form-group">
              <div class="col-md-6 mb-3 mb-md-0">
                <label class="text-black" for="fname">책 이름</label>
                <input type="text" id="bookName" class="form-control">
              </div>
              <div class="col-md-6">
                <label class="text-black" for="lname">지은이</label>
                <input type="text" id="bookWriter" class="form-control">
              </div>
            </div>
    
            <div class="row form-group">
              <div class="col-md-12">
                <label class="text-black" for="email">책 소개</label>
                <textarea name="content" id="bookStory" class="form-control"></textarea>
              </div>
            </div>
    
            <div class="row form-group">
    
              <div class="col-md-12">
                <label class="text-black" for="subject">이미지</label>
                <input type="file" id="bookImage" class="form-control" accept="image/*" >
              </div>
            </div>
    
    
            <div class="row form-group mt-4">
              <div class="col-md-12">
              <!-- href란에 html로만 만들어 놓은 bestBook란에 command해야 넘어가진다. -->
                 <input type="submit" value="Send Message" class="btn btn-primary" onclick="loacation.href='bestBook.'">
              </div>
            </div>
          </form>
        </div>
       </div>
     </div>
</body>
</html>