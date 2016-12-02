<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@ include file="/module/top.jsp" %>


<body>
<div class="col-lg-6">
	<div class="table-responsive">
		<table class="table table-bordered table-hover table-striped">
			<tr>
				<td>board_no : </td>
				<td>${board.boardNo}</td>
			</tr>
			<tr>
				<td>board_title : </td>
				<td>${board.boardTitle}</td>
			</tr>
			<tr>
				<td>board_content : </td>
				<td>${board.boardContent}</td>
			</tr>
			<tr>
				<td>board_user : </td>
				<td>${board.boardUser}</td>
			</tr>
			<tr>
				<td>board_date : </td>
				<td>${board.boardDate}</td>
			</tr>
		</table>
	</div>

	<div>
		<a href="<c:url value='/board/BoardModify?boardNo=${board.boardNo}'/>">수정</a>
		<a href="<c:url value='/board/BoardRemove?boardNo=${board.boardNo}'/>">삭제</a>
	</div>
</div>
<%@ include file="/module/down.jsp" %>