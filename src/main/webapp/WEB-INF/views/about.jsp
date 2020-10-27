<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav>
		<ul class="nav-container">
			<li class="nav-item"><a href="index.html">Seo Won Gwan</a></li>
			<li class="nav-item"><a href="portfolio.html">Portfolio</a></li>
			<li class="nav-item"><a href="blog.html">Blog</a></li>
			<li class="nav-item"><a href="about.html">About</a></li>
			<li class="nav-item"><a href="listAll">${member.username}님</a></li>
		</ul>
	</nav>
	<div class="space">

		<div class="planet">
			<div class="mars">
				<div class="img-map"></div>
			</div>
		</div>

	</div>
</body>
</html>