<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <style>
    body {
      min-height: 100vh;

      background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
      background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
    }

    .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
  </style>
</head>
<body>
	<div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">회원가입</h4>
        <form class="validation-form" novalidate id="frm" action="register.do" method="post">
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">아이디</label>
              <input type="text" class="form-control" id="id" name="id" placeholder="Id" value="" required>
              <div class="invalid-feedback">
                아이디를 입력해주세요.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="nickname">비밀번호</label>
              <input type="password" class="form-control" id="password" name="password" placeholder="Password" value="" required>
              <div class="invalid-feedback">
                비밀번호를 입력해주세요.
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">이름</label>
              <input type="text" class="form-control" id="name" name="name" placeholder="Name" value="" required>
              <div class="invalid-feedback">
                이름을 입력해주세요.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="nickname">전화번호</label>
              <input type="tel" class="form-control" id="tel" name="tel" placeholder="Tel" value="" required>
              <div class="invalid-feedback">
                전화번호를 입력해주세요.
              </div>
            </div>
          </div>

          <div class="mb-3">
            <label for="address">주소</label>
            <input type="text" class="form-control" id="address" name="address" placeholder="대구광역시 중구" required>
            <div class="invalid-feedback">
              주소를 입력해주세요.
            </div>
          </div>

          <hr class="mb-4">
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="aggrement" required>
            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
          </div>
          <div class="mb-4"></div>
          <button class="btn btn-primary btn-lg btn-block" type="submit">가입 완료</button>
        </form>
      </div>
    </div>
    <footer class="my-3 text-center text-small">
      <p class="mb-1">&copy; 2022 YEDAM</p>
    </footer>
  </div>
  <script>
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  </script>
</body>
</html>