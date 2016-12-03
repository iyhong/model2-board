<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ include file="/module/top.jsp" %>


<script>
	window.addEventListener("load", function() {
		var checkPw = document.querySelector("#checkPw");
		var btn = document.querySelector("#btn");
		btn.addEventListener("click", function(){
			if(checkPw.value==""){
				alert("��й�ȣ�� �Է��ϼ���");
			}else{
				document.querySelector("#checkForm").submit();
			}
			
		});
	});

</script>
<body>
<div class="row">
	<div class="col-lg-6">
	    <form id="checkForm" role="form" action="<c:url value='/board/BoardRemove' />" method="post" >
	        <div class="form-group">
		        <input class="form-control" name="boardNo" value="${param.boardNo}" type="hidden"/>
	        </div>
	        <div class="form-group">
	        	��й�ȣȮ�� : <input id="checkPw" name="boardPw" type="password">
	        	<span style="color:red">${param.fail}</span>
        	</div>
	        <div>
	            <input id="btn" type="button" value="����"/>
	            <input type="reset" value="�ʱ�ȭ"/>
	        </div>
	    </form>
	</div>
</div>
<%@ include file="/module/down.jsp" %>