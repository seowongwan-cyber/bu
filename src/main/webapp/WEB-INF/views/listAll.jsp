<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>회원 목록</title>
</head>
<form action="signup" method="get">
	<body>
		<Br>
		<Br>
		<Br>
		<Br>
		<Br>
		<Br>
		<div class="container">

			<table class="table table-bordered">
				<thead>
					<tr>
						<th>회원번호</th>
						<th>아이디</th>
						<th>이름</th>
						<th>이메일</th>
						<th>작성일</th>
					</tr>
				</thead>
				<c:forEach items="${list}" var="memberVO">
					<tr>
						<td>${memberVO.unum}</td>
						<td><a href='/read?unum=${memberVO.unum}'>${memberVO.userid}</a></td>
						<td>${memberVO.username}</td>
						<td>${memberVO.email}</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
								value="${memberVO.rdate}" /></td>
					</tr>
				</c:forEach>
			</table>
		</div>
	<div align="center">
			<button type="submit">회원가입하기</button>
	</div>
	</body>
</form>
</html>