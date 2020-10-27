<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form>
		<br> <br> <br> <br> <Br>
		<center>
			<table>
				<tr>
					<td>&nbsp;</td>
					<td align="center">회원번호</td>
					<td><input name="unum" value="${memberVO.unum}"
						readonly="readonly" size="50" maxlength="100"></td>
					<td>&nbsp;</td>
				</tr>
				<tr height="1" bgcolor="#dddddd">
					<td colspan="4"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td align="center">아이디</td>
					<td><input name="userid" value="${memberVO.userid}" size="50"
						maxlength="50"></td>
					<td>&nbsp;</td>
				</tr>
				<tr height="1" bgcolor="#dddddd">
					<td colspan="4"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td align="center">회원이름</td>
					<td><input name="username" value="${memberVO.username}"
						size="50" maxlength="50"></td>
					<td>&nbsp;</td>
				</tr>
				<tr height="1" bgcolor="#dddddd">
					<td colspan="4"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td align="center">이메일</td>
					<td><input name="eamil" value="${memberVO.email}"
						size="50" maxlength="50"></td>
					<td>&nbsp;</td>
				</tr>
				<tr align="center">
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
			</table>
			<button type="submit" formaction="modify" formmethod="get">수정</button>
			<button type="submit" formaction="remove" formmethod="post">삭제</button>
			<button type="submit" formaction="listAll" formmethod="get">목록</button>
	</form>
</body>
</html>