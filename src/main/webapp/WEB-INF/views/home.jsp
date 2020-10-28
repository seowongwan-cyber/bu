<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width" ,  initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navbar-hedder">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse -1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">JSP 웹 사이트</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="login">Home</a></li>
				<li><a href="listAll">회원리스트</a></li>
				<li><a href="signup">회원가입</a></li>
				<li><a href="BoardlistAll">게시판</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>
<!-- 					<ul class="dropdown-menu"> -->
<!-- 						<li class="active"><a href="login">로그인</a></li> -->
<!-- 						<li><a href="join">회원가입</a></li> -->
<!-- 					</ul> -->
					</li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
					<c:if test="${member == null }">
				<form role="form" method="post" autocomplete="off" action="/login">
					<h3 style="text-align: center;">로그인 화면</h3>
						<div class="form-group">
							<input type="text" id="userid" name="userid"
								placeholder="Please enter your ID." maxlength="40">
						</div>

						<div class="form-group">
							<input type="password" id="userpw" name="userpw"
								placeholder="Please enter your Password." maxlength="40">
						</div>
						<input type="submit" class="btn btn-primary form-control"
							value="로그인">
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
		</div>
		<div class="col-lg-4"></div>
	</div>
	>
</body>
</html>

