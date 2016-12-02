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
	<div>board_no : ${board.boardNo}</div>
	<div>board_title : ${board.boardTitle}</div>
	<div>board_content : ${board.boardContent}</div>
	<div>board_user : ${board.boardUser}</div>
	<div>board_date : ${board.boardDate}</div>
	<div>
		<a href="<c:url value='/board/BoardModify?boardNo=${board.boardNo}'/>">수정</a>
		<a href="<c:url value='/board/BoardRemove?boardNo=${board.boardNo}'/>">삭제</a>
	</div>
</div>
</body>
</html>