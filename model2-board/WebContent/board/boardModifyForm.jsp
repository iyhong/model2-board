<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<%@ include file="/module/top.jsp" %>
<script>

	window.addEventListener("load", function() {
		var checkPw = document.querySelector("#checkPw");
		checkPw.focus();
		checkPw.addEventListener("blur", function(){
			if (checkPw.value == ""){
				document.querySelector("#helpPw").innerHTML = "비밀번호를 입력하세요";
				checkPw.focus();
			}else{
				document.querySelector("#helpPw").innerHTML = "";
			}
		});
		var checkTitle = document.querySelector("#checkTitle");
		checkTitle.addEventListener("blur", function(){
			if (checkTitle.value == ""){
				document.querySelector("#helpTitle").innerHTML = "제목을 입력하세요";
				checkTitle.focus();
			}else{
				document.querySelector("#helpTitle").innerHTML = "";
			}
		});
		var checkContent = document.querySelector("#checkContent");
		checkContent.addEventListener("blur", function(){
			if (checkContent.value == ""){
				document.querySelector("#helpContent").innerHTML = "제목을 입력하세요";
				checkContent.focus();
			}else{
				document.querySelector("#helpContent").innerHTML = "";
			}
		});
		
		let btn = document.querySelector("#btn");
		btn.addEventListener("click", function(){
			if(checkPw.value != ""&&checkTitle.value != ""&&checkContent.value != ""){
				document.querySelector("#checkForm").submit();
			}
		})
	});

</script>

<body>
<div class="row">
	<div class="col-lg-6">
		<form id="checkForm" role="form" action="<c:url value='/board/BoardModify'/>" method="post">
			<div class="form-group">boardNo
				<input name="boardNo" value="${board.boardNo}" type="text" readonly="readonly" />
			</div>
			<div class="form-group">비밀번호확인:
				<input id="checkPw" name="boardPw" id="boardPw" type="password" />
				<span id="helpPw" style="color:red">${param.fail}</span>
			</div>
			<div class="form-group">boardTitle :
				<input id="checkTitle" name="boardTitle" value="${board.boardTitle}" id="boardTitle" type="text" />
				<span id="helpTitle" style="color:red"></span>
			</div>
			<div class="form-group">boardContent :
				<textarea id="checkContent" name="boardContent" id="boardContent" rows="5" cols="50">${board.boardContent}</textarea>
				<div id="helpContent" style="color:red"></div>
			</div>
			<div>
				<input id="btn" type="button" value="글수정" /> <input type="reset" value="초기화" />
			</div>
		</form>
	</div>
</div>
<%@ include file="/module/down.jsp" %>
