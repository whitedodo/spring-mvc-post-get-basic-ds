<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과(GET) </title>
<style>

	body{
		font-size:13px;
		font-family:'Arial';
	}

	.login_result{
		width:900px;
		border:1px solid #e2e2e2;	
	}
	
</style>
</head>
<body>
<h3>결과 - 로그인 결과(GET)</h3>
<!-- 페이지 -->
<table class="login_result">
	<tr>
		<td style="width:10%; border-right:1px solid #e2e2e2;">아이디</td>
		<td>${member.id}</td>
	</tr>
	<tr>
		<td style="width:10%; border-right:1px solid #e2e2e2;">비밀번호</td>
		<td>${member.passwd }</td>
	</tr>
</table>
<br/>

<h3>Map 결과 - 출력</h3>
<!-- 반복문 c태그 (map) -->
<table style="width:700px;">
<c:forEach items="${map}" var="map">
	<tr>
		<td style="width:50%;border:1px solid #e2e2e2">
			${map.key}
		</td>
		<td style="width:50%;border:1px solid #e2e2e2">
			${map.value }
		</td>
	</tr>
</c:forEach>
</table>
<br/>


<h3>List 결과 - 출력</h3>
<!-- 반복문 c태그 (map) -->
<table style="width:700px;">
<c:forEach items="${list}" var="list">
	<tr>
		<td style="width:20%;border:1px solid #e2e2e2">
			${list.num}
		</td>
		<td style="width:30%;border:1px solid #e2e2e2">
			${list.id }
		</td>
		<td style="width:50%;border:1px solid #e2e2e2">
			${list.passwd }
		</td>
	</tr>
</c:forEach>
</table>

</body>
</html>