<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
<!DOCTYPE html>
<html lang="kr">
<head>
  <meta charset="UTF-8">
  
</head>
<body>

	<div align="center"><br><br>	
   <h1>인기도서</h1>
	</div>
      <div align="right" class="col-sm-12 ">
      		 <input type="button" value="더보기" class="btn btn-primary" onclick="location.href='bookList.do'">       
       </div>
       <br>
       <br>
      <div class="row">
        <div class="col-sm-3 ">
          <div class="card-blog">
            <div class="header">
              <div class="post-thumb">
              <!-- 이미지, 도서명, 출판사명, 지은이 모두 DB와 연결하여 데이터 가져오기 -->
                <a href="#">
                <img src="assets/img/book/매일 읽는 헨리 데이비드 소로.jpg" alt="">
                </a>
              </div>
            </div>
            <div class="body">
              <h5 class="post-title">매일 읽는 헨리 데이비드 소로</h5>
              <div class="post-date">출판사 : 니케북스  지은이 : 헨리 데이비드 소로</div>
            </div>
          </div>
        </div><br>
        
       
        <div class="col-sm-3 ">
          <div class="card-blog">
            <div class="header">
              <div class="post-thumb">
                <a href="#">
                <img src="assets/img/book/럭키 드로우.jpg" alt="">
                </a>
              </div>
            </div>
            <div class="body">
               <h5 class="post-title">럭키 드로우 나만의 길을 찾을 때까지 인생의 레버를 당기는 법</h5>
              <div class="post-date">출판사 : 다산북스  <a>지은이 : 드로우앤드류 </a></div>
            </div>
          </div>
        </div> <br>

        <div class="col-sm-3 ">
          <div class="card-blog">
            <div class="header">
              <div class="post-thumb">
                <a href="#">
                <img src="assets/img/book/세븐테크.jpg" alt="">
                </a>
              </div>
            </div>
            <div class="body">
              <h5 class="post-title">세븐 테크 3년 후 당신의 미래를 바꿀 7가지 기술</h5>
              <div class="post-date">출판사 : 웅진지식하우스   <a>지은이 : 김미경 , 김상균 , 김세규</a></div>
            </div>
          </div>
        </div>
        
        <div class="col-sm-3">
          <div class="card-blog">
            <div class="header">
              <div class="post-thumb">
              <a href="#">
                <img src="assets/img/book/10년 후 100배 오를 암호화폐에 투자하라.jpg" alt="">
                </a>
              </div>
            </div>
            <div class="body">
              <h5 class="post-title">10년 후 100배 오를 암호화폐에 투자하라</h5>
              <div class="post-date">출판사 : 나비의활주로  지은이 : 박종한 </div>
            </div>
          </div>
        </div>
        </div>
        	<br><br>
         <div class="row">
        <div class="col-sm-3 ">
          <div class="card-blog">
            <div class="header">
              <div class="post-thumb">
                <a href="#">
                <img src="assets/img/book/엑시트 EXIT 플래너.jpg" alt="">
                </a>
              </div>
            </div>
            <div class="body">
              <h5 class="post-title">엑시트 EXIT 플래너</h5>
              <div class="post-date">출판사 : 지혜로  <a>지은이 : 송희창</a> </div>
            </div>
          </div>
        </div>
        
        <div class="col-sm-3">
          <div class="card-blog">
            <div class="header">
              <div class="post-thumb">
                <a href="#">
                <img src="assets/img/book/슈가레인 카페 디저트 클래스.jpg" alt="">
                </a>
              </div>
            </div>
            <div class="body">
              <h5 class="post-title">슈가레인 카페 디저트 클래스</h5>
              <div class="post-date">출판사 : 비타북스  지은이 : 조한빛 </div>
            </div>
          </div>
        </div>
        
        <div class="col-sm-3 ">
          <div class="card-blog">
            <div class="header">
              <div class="post-thumb">
               <a href="#">
                <img src="assets/img/book/어서 오세요, 휴남동 서점입니다.jpg" alt="">
                </a>
              </div>
            </div>
            <div class="body">
              <h5 class="post-title">어서 오세요, 휴남동 서점입니다</h5>
              <div class="post-date">출판사 : 클레이하우스  지은이 : 황보름</div>
            </div>
          </div>
        </div>
        
        <div class="col-sm-3">
          <div class="card-blog">
            <div class="header">
              <div class="post-thumb">
              <a href="#">
                <img src="assets/img/book/코스모사피엔스 - 우주의 기원 그리고 인간의 진화.jpg" alt="">
                </a>
              </div>
            </div>
            <div class="body">
              <h5 class="post-title">코스모사피엔스 - 우주의 기원 그리고 인간의 진화</h5>
              <div class="post-date">출판사 : ㈜소미미디어  지은이 : 존 핸즈</div>
            </div>
          </div>
        </div>
      </div>
      <br>
        


<script src="../assets/js/jquery-3.5.1.min.js"></script>

<script src="../assets/js/bootstrap.bundle.min.js"></script>

<script src="../assets/js/google-maps.js"></script>

<script src="../assets/vendor/wow/wow.min.js"></script>

<script src="../assets/js/theme.js"></script>

</body>
</html>