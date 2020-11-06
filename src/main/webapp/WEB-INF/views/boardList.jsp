<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>게시판</title>
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet" href="../css/board.css">
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
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<div class="container">
			<table class="table table-bordered">
				<thead>
					<tr>

						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>날짜</th>
						<th>조회수</th>
					</tr>
				</thead>

				<c:forEach items="${list}" var="boardVO">
					<tr>
						<td>${boardVO.bno}</td>
						<td><a href='/boardRead?bno=${boardVO.bno}'>${boardVO.title}</a></td>
						<td>${boardVO.userid}</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd"
								value="${boardVO.regdate}" /></td>
						<td><span class="badge bg-red">${boardVO.viewcnt}</span></td>
					</tr>
				</c:forEach>
			</table>

			<p align="right">
				<button type="submit">글쓰기</button>
			</p>




			<div class="text-center">
				<ul class="pagination">
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
				</ul>

			</div>

		</div>


		<script src="js/jquery-3.1.1.js"></script>
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="js/bootstrap.js"></script>
	</body>
</form>
</html>