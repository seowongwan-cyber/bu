<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Home</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/home.css">
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">WebSiteName</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="login">Home</a></li>
				<li><a href="listAll">회원리스트</a></li>
				<li><a href="signup">회원가입</a></li>
				<li><a href="BoardlistAll">게시판</a></li>
			</ul>
		</div>
	</nav>
	<div class="login" align="center">
		<c:if test="${member == null }">
			<form role="form" method="post" autocomplete="off" action="/login">
				<p>
					<label for="userid">ID</label> <input type="text" id="userid"
						name="userid" placeholder="Please enter your ID."  />
				</p>
				<p>
					<label for="userpw">PW</label> <input type="password" id="userpw"
						name="userpw" placeholder="Please enter your Password." />
				</p>

				<p>
					<button type="submit">로그인</button>
				</p>
			</form>
		</c:if>
		<c:if test="${msg ==false }">
			<p style="color: #f00;">로그인에 실패했습니다.</p>
		</c:if>
		<c:if test="${member != null}">
			<p>${member.username}님환영합니다.</p>

			<a href="/logout">로그아웃</a>
		</c:if>
	</div>
</body>
</html>

