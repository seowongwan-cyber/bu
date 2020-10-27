<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/footer.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Seo Won Gwan</title>
</head>
<body>
	<nav>
		<ul class="nav-container">
				<li class="nav-item"><a href="login">Seo Won Gwan</a></li>
				<li class="nav-item"><a href="portfolio">Portfolio</a></li>
				<li class="nav-item"><a href="blog">Blog</a></li>
				<li class="nav-item"><a href="food">Food</a></li>
				<li class="nav-item"><a href="listAll">${member.username}님</a></li>
		</ul>
	</nav>

</body>
</html>