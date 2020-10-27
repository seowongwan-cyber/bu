<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/blog.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/font.css">
<link rel="stylesheet" href="css/images.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>SeoWonGwan</title>
</head>
<body>
	<nav>
		<ul class="nav-container">
			<li class="nav-item"><a href="login">Seo Won Gwan</a></li>
			<li class="nav-item"><a href="portfolio">Portfolio</a></li>
			<li class="nav-item"><a href="blog">Blog</a></li>
			<li class="nav-item"><a href="about">About</a></li>
			<li class="nav-item"><a href="listAll">${member.username}님</a></li>
		</ul>
	</nav>
	<section class="sec">
		<div class="sec-container">
			<div class="sec-box1">
				<p>Daecheongho</p>
				<div class="sec-box1-img1">
					<p>March 10, 2019</p>
					<div style="text-align: left">
						I went to Daecheong Lake in Daejeon for the first time. I knew for
						the first time that there was such a big lake in Daejeon, and I
						felt very hollow. <br>(The picture above was taken with
						analog film.)
					</div>

				</div>
			</div>
			<Br> <br> <br>
			<div class="sec-box1">
				<p>Jeju lsland</p>
				<div class="sec-box2-img2">
					<p>February 20, 2020</p>
					<div style="text-align: left">Today, I came to Cheongju
						Airport to go to Jeju Island. I am so excited, excited and nervous
						to travel with my father for the first time.</div>

				</div>
			</div>
			<Br> <br> <br>
			<div class="sec-box1">
				<p>The sun rises in Jeju Island.</p>
				<div class="sec-box3-img3">
					<p>February 21, 2020</p>
					<div style="text-align: left">
						The second day in Jeju Island was bright. Today, I decided to go
						to Mt. Halla for a massage with my father, <br>so I am
						looking forward to it.
					</div>

				</div>
			</div>
			<br> <br> <br>
			<div class="sec-box1">
				<p>Jeju Hueilro cafe</p>
				<div class="sec-box4-img4">
					<p>February 21, 2020</p>
					<div style="text-align: left">
						Day 2 of Jeju Island<br> While visiting a scenic cafe to
						enjoy a rest with my father, I visited the cafe on a holiday, and
						the view was so good that it was healing all the time I sat down
						and drank coffee.
					</div>

				</div>
			</div>
			<br> <br> <br>
			<div class="sec-box1">
				<p>BanSuck Trail</p>
				<div class="sec-box5-img5">
					<p>April 3, 2020</p>
					<div style="text-align: left">After lunch, I walked along the
						walkway around the company with company people. The cherry
						blossoms bloomed beautifully and the weather was so nice.</div>

				</div>
			</div>
			<br> <br> <br>

			<div class="sec-box1">
				<p>Donghaksa</p>
				<div class="sec-box6-img6">
					<p>April 5, 2020</p>
					<div style="text-align: left">The picture above is the
						picture of cherry blossoms in Donghaksa Temple. I went to see
						cherry blossoms with my college friends. I am sorry that I
						couldn't capture all the beauty in the picture, but I feel so good
						because I remember it in my eyes.</div>

				</div>

			</div>
			<br> <br> <br>
		</div>
	</section>



</body>
<div class="footer">
	<div class="footer-content">
		<div class="footer-section about"></div>
		<div class="footer-section links"></div>
		<li><i class="fa fa-instagram" aria-hidden="true"
			onclick="location.href='https://www.instagram.com/seoo._.wg/?hl=ko'"
			style="cursor: pointer;"> seoo._.wg</i></li>

		<div class="footer-section contact-form"></div>
	</div>
	<div class="footer-bottom"></div>
</div>
</html>