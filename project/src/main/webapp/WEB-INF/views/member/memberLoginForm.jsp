<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
html, body {
	height: 100%;
	overflow: hidden
}
</style>
</head>
<body>
	<div class="container">
		<div class="row my-4 my-lg-5">
			<div
				class="col-12 col-md-8 offset-md-2 col-lg-6 offset-lg-3 text-center">
				<br> <br> <br> <br>
				<h2>회원 로그인</h2>
				<br> 
				<br> 
				<form id="frm" action="login.do" method="post">
					<div class="form-group">
						<div class="input-icon">
							<input type="text"
								class="form-control rounded-0 py-3 pl-5 font-13 sign-register-input"
								id="id" name="id" placeholder="Id" required="required">
						</div>

					</div>
					<div class="form-group">
						<div class="input-icon">
							<input type="password"
								class="form-control rounded-0 py-3 pl-5 font-13 sign-register-input"
								id="password" name="password" placeholder="Password"
								required="required">
						</div>

					</div>
					<div class="form-group">
						<button type="submit"
							class="form-control btn btn-primary rounded submit px-3">로
							그 인</button>
					</div>
					<p class="fables-forth-text-color">
						아직 회원이 아니신가요 ? <a href="registerForm.do"
							class="font-16 semi-font fables-second-text-color underline fables-main-hover-color ml-2">회원가입</a>
					</p>
				</form>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	






</body>
<script>
	
</script>



</html>