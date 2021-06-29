<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Description</th>
			<th>Image</th>
			<th>Image1</th>
			<th>Image2</th>
			<th>Image3</th>
			<th>Action</th>
		</tr>
		<c:forEach var="sanpham" items="${list }">
			<tr>
				<td><a
					href="${pageContext.request.contextPath}/admin/product/detail?id=${sanpham.id}">${sanpham.id}</a></td>
				<td>${sanpham.name}</td>
				<td>${sanpham.description}</td>
				<td><img
					src="${pageContext.request.contextPath}/admin/product/display/0&${sanpham.id}"
					width="300" height="200" /></td>
				<td><img
					src="${pageContext.request.contextPath}/admin/product/display/1&${sanpham.id}"
					width="300" height="200" /></td>
				<td><img
					src="${pageContext.request.contextPath}/admin/product/display/2&${sanpham.id}"
					width="300" height="200" /></td>
				<td><img
					src="${pageContext.request.contextPath}/admin/product/display/3&${sanpham.id}"
					width="300" height="200" /></td>
				<td><a
					href="${pageContext.request.contextPath}/admin/product/edit?id=${sanpham.id}">Edit</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>