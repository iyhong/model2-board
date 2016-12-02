<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<%@ include file="/module/top.jsp" %>


<body>
<div class="row">
	<div class="col-lg-6">
		<form role="form" action="<c:url value='/board/BoardModify'/>" method="post">
			<div class="form-group">boardNo
				<input name="boardNo" value="${board.boardNo}" type="text" readonly="readonly" />
			</div>
			<div class="form-group">비밀번호확인:
				<input name="boardPw" id="boardPw" type="password" />
			</div>
			<div class="form-group">boardTitle :
				<input name="boardTitle" value="${board.boardTitle}" id="boardTitle" type="text" />
			</div>
			<div class="form-group">boardContent :
				<textarea name="boardContent" id="boardContent" rows="5" cols="50">${board.boardContent}</textarea>
			</div>
			<div>
				<input type="submit" value="글수정" /> <input type="reset" value="초기화" />
			</div>
		</form>
	</div>
</div>
<%@ include file="/module/down.jsp" %>
