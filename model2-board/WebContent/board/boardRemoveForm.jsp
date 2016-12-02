<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ include file="/module/top.jsp" %>


<body>
<div class="row">
	<div class="col-lg-6">
	    <form role="form" action="<c:url value='/board/BoardRemove' />" method="post" >
	        <div class="form-group">
		        <input class="form-control" name="boardNo" value="${param.boardNo}" type="hidden"/>
	        </div>
	        <div class="form-group">
	        	비밀번호확인 : <input name="boardPw" type="password">
        	</div>
	        <div>
	            <input type="submit" value="삭제"/>
	            <input type="reset" value="초기화"/>
	        </div>
	    </form>
	</div>
</div>
<%@ include file="/module/down.jsp" %>