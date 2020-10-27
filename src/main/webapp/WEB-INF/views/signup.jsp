<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/signup.css">
<title>회원가입</title>
</head>
<form method="post">
	<body>
		<center>
			<br> <br> <br> <br> <br>
			<div class="container">
				<form>
					<div class="form-group">
						<label for="usr">ID:</label> <input name="userid" type="text"
							class="form-control" placeholder="Please enter your ID.">
					</div>
					<div class="form-group">
						<label for="pwd">Password:</label> <input name="userpw"
							type="password" class="form-control"
							placeholder="Please enter your Password.">
					</div>

					<div class="form-group">
						<label for="name">Name:</label> <input name="username" type="text"
							class="form-control" placeholder="Please enter your Name.">
					</div>

					<div class="form-group">
						<label for="email">email:</label> <input name="email" type="text"
							class="form-control" placeholder="Please enter your Email.">
					</div>
				</form>
			</div>
			<button type="submit">가입</button>
</form>
</center>
<script type="text/javascript">
	$(document)
			.ready(
					function(e) {

						var idx = false;

						$('#signUp')
								.click(
										function() {
											if ($.trim($('#userid').val()) == '') {
												alert("아이디 입력.");
												$('#userid').focus();
												return;
											} else if ($.trim($('#userpw')
													.val()) == '') {
												alert("패스워드 입력.");
												$('#userpw').focus();
												return;
											}
											//패스워드 확인
											else if ($('#passwd').val() != $(
													'#passwdCheck').val()) {
												alert('패스워드가 다릅니다.');
												$('#passwd').focus();
												return;
											}

											if (idx == false) {
												alert("아이디 중복체크를 해주세요.");
												return;
											} else {
												$('#signFrm').submit();
											}
										});

						$('#check')
								.click(
										function() {
											$
													.ajax({
														url : "${pageContext.request.contextPath}/idCheck.do",
														type : "GET",
														data : {
															"userid" : $(
																	'#userid')
																	.val()
														},
														success : function(data) {
															if (data == 0
																	&& $
																			.trim($(
																					'#userid')
																					.val()) != '') {
																idx = true;
																$('#userid')
																		.attr(
																				"readonly",
																				true);
																var html = "<tr><td colspan='3' style='color: green'>사용가능</td></tr>";
																$('#idCheck')
																		.empty();
																$('#idCheck')
																		.append(
																				html);
															} else {

																var html = "<tr><td colspan='3' style='color: red'>사용불가능한 아이디 입니다.</td></tr>";
																$('#idCheck')
																		.empty();
																$('#idCheck')
																		.append(
																				html);
															}
														},
														error : function() {
															alert("서버에러");
														}
													});

										});

					});
</script>
</body>
</html>
