<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title></title>
</head>
<body>
<div class="container text-center">
	<form action="<c:url value='/board/BoardModify'/>" method="post">
		<div>boardNo</div>
		<div>
			<input name="boardNo" value="${board.boardNo}" type="text" readonly="readonly" />
		</div>
		<div>비밀번호확인:</div>
		<div>
			<input name="boardPw" id="boardPw" type="password" />
		</div>
		<div>boardTitle :</div>
		<div>
			<input name="boardTitle" value="${board.boardTitle}" id="boardTitle" type="text" />
		</div>
		<div>boardContent :</div>
		<div>
			<textarea name="boardContent" id="boardContent" rows="5" cols="50">${board.boardContent}</textarea>
		</div>
		<div>
			<input type="submit" value="글수정" /> <input type="reset" value="초기화" />
		</div>
	</form>
</div>
</body>
</html>