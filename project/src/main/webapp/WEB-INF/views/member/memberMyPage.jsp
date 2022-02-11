<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Account Settings UI Design</title>
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link rel="stylesheet" type="text/css"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="assets/css/mypagestyle.css">
</head>
<body>
	<section class="py-5 my-5">
		<div class="container">
			<h1 class="mb-5">My Page</h1>
			<div class="bg-white shadow rounded-lg d-block d-sm-flex">
				<div class="profile-tab-nav border-right">
					<div class="p-4">
						<div class="img-circle text-center mb-3">
							<img src="assets/img/member.jpg" alt="Image" class="shadow">
						</div>
						<h4 class="text-center">${name }</h4>
					</div>
					<div class="nav flex-column nav-pills" id="v-pills-tab"
						role="tablist" aria-orientation="vertical">
						<a class="nav-link active" id="account-tab" data-toggle="pill" href="#account" role="tab"
							aria-controls="account" aria-selected="true"> <i class="fa fa-user text-center mr-1"></i>
							회원정보수정</a>
							<c:if test="${author == 'micol' }">
							<a class="nav-link" id="application-tab" data-toggle="pill" href="#application" role="tab"
								aria-controls="application" aria-selected="false"> <i
									class="fa fa-tv text-center mr-1"></i>
								회원목록
							</a>
							</c:if>
						<a class="nav-link" id="security-tab" data-toggle="pill" href="#security" role="tab"
							aria-controls="security" aria-selected="false"> <i class="fa fa-home text-center mr-1"></i>
							회원탈퇴
						</a>
					</div>
				</div>
				<div class="tab-content p-4 p-md-5" id="v-pills-tabContent">
					<div class="tab-pane fade show active" id="account" role="tabpanel"
						aria-labelledby="account-tab">
							<form action="memberUpdateForm.do" method="post">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<label>아이디</label> 
										<input type="text" id="id" name="id" class="form-control" value="${id }" readonly="readonly">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>이름</label> 
										<input type="text" id="name" name="name"  class="form-control" value="${name }" >
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>비밀번호</label> 
										<input type="password" id="password" name="password"  class="form-control" value="${password }">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>전화번호</label> 
										<input type="tel" id="tel" name="tel" class="form-control" value="${tel }">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<label>주소</label> 
										<input type="text" id="address" name="address" class="form-control" value="${address }">
									</div>
								</div>
							</div>
							<div>
								<button type="submit" class="btn btn-primary">수정</button>
							</div>
						</form>
					</div>
						<div class="tab-pane fade" id="security" role="tabpanel" aria-labelledby="security-tab">
							<form action="memberDelete.do" method="post">
								<div class="mb-3 row">
									<label for="staticEmail" class="col-sm-2 col-form-label">Id</label>
									<div class="col-sm-10">
										<input type="text" readonly class="form-control-plaintext" id="id" name="id"
											value="${id }">
									</div>
								</div>
								<div class="mb-3 row">
									<label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
									<div class="col-sm-10">
										<input type="password" class="form-control" id="password" name="password"
											value=""><br>
									</div>
									<div>
										<input type="submit" class="btn btn-primary" value="회원탈퇴">
									</div>
								</div>
							</form>
						</div>
					<div class="tab-pane fade" id="application" role="tabpanel" aria-labelledby="application-tab">
						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th scope="col">Id</th>
										<th scope="col">Name</th>
										<th scope="col">Tel</th>
										<th scope="col">Address</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${memberList}" var="member">
										<tr>
											<td>${member.id }</td>
											<td>${member.name }</td>
											<td>${member.tel }</td>
											<td>${member.address }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>