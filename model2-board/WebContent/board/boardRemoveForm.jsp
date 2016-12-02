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
	        	��й�ȣȮ�� : <input name="boardPw" type="password">
        	</div>
	        <div>
	            <input type="submit" value="����"/>
	            <input type="reset" value="�ʱ�ȭ"/>
	        </div>
	    </form>
	</div>
</div>
<%@ include file="/module/down.jsp" %>