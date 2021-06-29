<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${sanpham.id } || ${sanpham.description } ||
	<img
		src="${pageContext.request.contextPath}/admin/product/display/0&${sanpham.id}"
		width="300" height="200" />
	<img
		src="${pageContext.request.contextPath}/admin/product/display/1&${sanpham.id}"
		width="300" height="200" />
	<img
		src="${pageContext.request.contextPath}/admin/product/display/2&${sanpham.id}"
		width="300" height="200" />
	<img
		src="${pageContext.request.contextPath}/admin/product/display/3&${sanpham.id}"
		width="300" height="200" />
</body>
</html>