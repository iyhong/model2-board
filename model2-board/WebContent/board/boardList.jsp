<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
</head>
<body>
	��ü ���� �� : ${totalRowCount} / ${list.size()}
	<table border="1">
		<thead>
			<tr>
				<th>boardTitle</th>
				<th>boardUser</th>
				<th>boardDate</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="b">
				<tr>
					<td><a href="<c:url value='/board/BoardView?boardNo=${b.boardNo}'/>">${b.boardTitle}</a></td>
					<td>${b.boardUser}</td>
					<td>${b.boardDate}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<div>
		<a href="<c:url value='/board/BoardAdd'/>">�Խñ�
			�Է�</a>
	</div>
	
	<c:if test="${currentPage > 1 }">
		<a href="<c:url value='/board/BoardList?currentPage=${currentPage-1}'/>">����</a>
	</c:if>
	
	<c:if test="${currentPage < lastPage}">
		<a href="<c:url value='/board/BoardList?currentPage=${currentPage+1}'/>">����</a>
	</c:if>
	
</body>
</html>