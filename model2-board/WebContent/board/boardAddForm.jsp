<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<%@ include file="/module/top.jsp" %>

<script>
	window.addEventListener("load", function() {
		var btn1 = document.querySelector("#btn1");
		var btn2 = document.querySelector("#btn2");
		btn1.addEventListener("click", function(){
			if(document.querySelector("#boardPw").value==""){
				alert("��й�ȣ�� �Է��ϼ���");
			}else if(document.querySelector("#boardTitle").value==""){
				alert("������ �Է��ϼ���");
			}else if(document.querySelector("#boardContent").value==""){
				alert("������ �Է��ϼ���");
			}else if(document.querySelector("#boardName").value==""){
				alert("�̸��� �Է��ϼ���");
			}else{
				document.querySelector("#writeForm").submit();
			}
		});
	});
	
	
</script>
<body>
<h1>BOARD ADD</h1>

<form id="writeForm" action="<c:url value='/board/BoardAdd'/>" method="post">
    <div>boardPw : </div>
    <div><input id="boardPw" name="boardPw" id="boardPw" type="password"/></div>
    <span id="pwinfor"></span>
    <div>boardTitle : </div>
    <div><input id="boardTitle" name="boardTitle" id="boardTitle" type="text"/></div>
    <div>boardContent : </div>
    <div><textarea id="boardContent" name="boardContent" id="boardContent" rows="5" cols="50"></textarea></div>
    <div>boardName : </div>
    <div><input id="boardName" name="boardUser" id="boardUser" type="text"/></div>
    <div>
        <input id="btn1" type="button" value="���Է�"/>
        <input id="btn2" type="reset" value="�ʱ�ȭ"/>
        
        
    </div>
</form>
<%@ include file="/module/down.jsp" %>
