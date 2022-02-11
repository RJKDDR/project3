<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
<!DOCTYPE html>
<html lang="kr">
<head>
  <meta charset="UTF-8">
  
</head>
<body>
  <!-- Back to top button -->
  <div class="back-to-top"></div>
  
  <header>


    <div class="container" >
      <div class="page-banner">
        <div class="row justify-content-center align-items-center h-100">
          <div class="col-md-6">
      	<!--  img src="assets/img/library.jpg"-->
            <nav aria-label="Breadcrumb">
              <ul class="breadcrumb justify-content-center py-0 bg-transparent">
              </ul>
            </nav>
            <h1 class="text-center">인기도서</h1>
          </div>
        </div>
      </div>
    </div>
  </header>

  <div class="page-section">
    <div class="container">
      <div class="row">
        <div class="col-sm-10">
          <form action="#" class="form-search-blog">
            <div class="input-group">
              <div class="input-group-prepend">
                <select id="categories" class="custom-select bg-light">
                  <option>전체검색</option>
                  <option value="#">도서명 검색</option>
                  <option value="#">지은이 검색</option>
                  <option value="#">출판사 검색</option>
                </select>
              </div>
              <input type="text" class="form-control" placeholder="검색하세요..">
            </div>
          </form>
        </div>
        
        <!-- 관리자만 글쓰기 보이게 해서 인기도서 올리는 버튼 -->
        <div class="col-sm-2 text-sm-right">
         <input type="submit"  value="글쓰기" onclick="location.href='bestBookForm.do'">
        </div>
      </div>

      <div class="row my-5">
        <div class="col-lg-4 py-3">
          <div class="card-blog">
            <div class="header">
              <div class="post-thumb">
              <!-- 이미지, 도서명, 출판사명, 지은이 모두 DB와 연결하여 데이터 가져오기 -->
                <img src="assets/img/youTrue.png" alt="">
              </div>
            </div>
            <div class="body">
              <h5 class="post-title"><a href="bestBookDetail.do">당신이 옳다 : 정혜신의 적정심리학</a></h5>
              <div class="post-date">출판사 : 해냄  <a>지은이 : 정혜신</a></div>
            </div>
          </div>
        </div>
        
        
        <div class="col-lg-4 py-3">
          <div class="card-blog">
            <div class="header">
              <div class="post-thumb">
                <img src="assets/img/summer.png" alt="">
              </div>
            </div>
            <div class="body">
              <h5 class="post-title"><a href="bestBookDetail.do">바깥은<br>여름</a></h5>
              <div class="post-date">출판사 : 문학동네  <a>지은이 : 김애란</a></div>
            </div>
          </div>
        </div>

        <div class="col-lg-4 py-3">
          <div class="card-blog">
            <div class="header">
              <div class="post-thumb">
                <img src="assets/img/smile.png" alt="">
              </div>
            </div>
            <div class="body">
              <h5 class="post-title"><a href="bestBookDetail.do">무례한 사람에게 웃으며 대처하는 법</a></h5>
              <div class="post-date">출판사 : 가나출판사  <a>지은이 : 정문정</a></div>
            </div>
          </div>
        </div>
      </div>
        
 

      
 <input type="button" value="더보기" class="btn btn-primary" onclick="location.href='bookList.do'">
    </div>
  </div>

  <footer class="page-footer bg-image" style="background-image: url(../assets/img/world_pattern.svg);">
    <div class="container">
      <div class="row mb-5">
        <div class="col-lg-3 py-3">
          <h3>YEDAM Library</h3>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero amet, repellendus eius blanditiis in iusto eligendi iure.</p>

          <div class="social-media-button">
            <a href="#"><span class="mai-logo-facebook-f"></span></a>
            <a href="#"><span class="mai-logo-twitter"></span></a>
            <a href="#"><span class="mai-logo-google-plus-g"></span></a>
            <a href="#"><span class="mai-logo-instagram"></span></a>
            <a href="#"><span class="mai-logo-youtube"></span></a>
          </div>
        </div>
        <div class="col-lg-3 py-3">
          <h5>Company</h5>
          <ul class="footer-menu">
            <li><a href="#">About Us</a></li>
            <li><a href="#">Career</a></li>
            <li><a href="#">Advertise</a></li>
            <li><a href="#">Terms of Service</a></li>
            <li><a href="#">Help & Support</a></li>
          </ul>
        </div>
        <div class="col-lg-3 py-3">
          <h5>Contact Us</h5>
          <p>203 Fake St. Mountain View, San Francisco, California, USA</p>
          <a href="#" class="footer-link">+00 1122 3344 5566</a>
          <a href="#" class="footer-link">seogram@temporary.com</a>
        </div>
        <div class="col-lg-3 py-3">
          <h5>Newsletter</h5>
          <p>Get updates, news or events on your mail.</p>
          <form action="#">
            <input type="text" class="form-control" placeholder="Enter your email..">
            <button type="submit" class="btn btn-success btn-block mt-2">Subscribe</button>
          </form>
        </div>
      </div>

      <p class="text-center" id="copyright">Copyright &copy; 2022. This template design and develop by <a href="https://macodeid.com/" target="_blank">MACode ID</a></p>
    </div>
    
    
  </footer>

<script src="../assets/js/jquery-3.5.1.min.js"></script>

<script src="../assets/js/bootstrap.bundle.min.js"></script>

<script src="../assets/js/google-maps.js"></script>

<script src="../assets/vendor/wow/wow.min.js"></script>

<script src="../assets/js/theme.js"></script>

</body>
</html>