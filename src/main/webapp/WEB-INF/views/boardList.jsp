<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<%
	request.setCharacterEncoding("euc-kr");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>게시판 목록</title>
</head>
<form action="boardRegist" method="get">
	<body>

		<nav>
			<ul class="nav-container">
				<li class="nav-item"><a href="login">Seo Won Gwan</a></li>
				<li class="nav-item"><a href="portfolio">Portfolio</a></li>
				<li class="nav-item"><a href="blog">Blog</a></li>
				<li class="nav-item"><a href="food">Food</a></li>
				<li class="nav-item"><a href="boardList">Board</a></li>
				<li class="nav-item"><a href="listAll">${member.username}님</a></li>
			</ul>
		</nav>

		<Br>
		<Br>
		<Br>
		<Br>
		<Br>
		<Br>
		<Br>
		<div class="container">
			<br> <br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>글번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<c:forEach items="${list}" var="boardVO">
					<tr>
						<td>${boardVO.bno}</td>
						<td><a href='/boardRead?bno=${boardVO.bno}'>${boardVO.title}</a></td>
						<td>${boardVO.userid}</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
								value="${boardVO.regdate}" /></td>
						<td><span class="badge bg-red">${boardVO.viewcnt}</span></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<center>
			<button type="submit">글쓰기</button>
		</center>
	</body>
</form>
</html>