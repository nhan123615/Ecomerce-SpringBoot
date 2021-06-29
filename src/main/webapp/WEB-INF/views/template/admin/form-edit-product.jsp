<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form
		action="${pageContext.servletContext.contextPath}/admin/product/update"
		method="post" enctype="multipart/form-data">
		<input type="hidden" name="id" value="${sanpham.id }"> <br />
		<input type="text" id="name" name="name" value="${sanpham.name }">
		<br />
		<textarea id="description" name="description">${sanpham.description }</textarea>
		<br /> 
		<input type="file" id="img" name="img"> <img
			src="${pageContext.request.contextPath}/admin/product/display/0&${sanpham.id}"
			width="300" height="200" />
		<br/>
		<input type="file" id="img1" name="img"> <img
			src="${pageContext.request.contextPath}/admin/product/display/1&${sanpham.id}"
			width="300" height="200" />
		<br/> 
		<input type="file" id="img2" name="img"> <img
			src="${pageContext.request.contextPath}/admin/product/display/2&${sanpham.id}"
			width="300" height="200" />
		<br/> 
		<input type="file" id="img3" name="img"> <img
			src="${pageContext.request.contextPath}/admin/product/display/3&${sanpham.id}"
			width="300" height="200" />
		<br/> 
		<input type="submit" value="Submit">
	</form>
	<script
		src="${pageContext.servletContext.contextPath}/ckeditor/ckeditor.js"></script>
	<script
		src="${pageContext.servletContext.contextPath}/ckfinder/ckfinder.js"></script>
	<script>
		CKEDITOR
				.replace(
						'description',
						{
							filebrowserBrowseUrl : '${pageContext.servletContext.contextPath}/ckfinder/ckfinder.html',
							filebrowserImageBrowseUrl : '${pageContext.servletContext.contextPath}/ckfinder/ckfinder.html?type=Images',
							filebrowserFlashBrowseUrl : '${pageContext.servletContext.contextPath}/ckfinder/ckfinder.html?type=Flash',
							filebrowserUploadUrl : '${pageContext.servletContext.contextPath}/ckfinder/core/connector/java/connector.java?command=QuickUpload&amp;type=Files',
							filebrowserImageUploadUrl : '${pageContext.servletContext.contextPath}/ckfinder/core/connector/java/connector.java?command=QuickUpload&amp;type=Images',
							filebrowserFlashUploadUrl : '${pageContext.servletContext.contextPath}/ckfinder/core/connector/java/connector.java?command=QuickUpload&amp;type=Flash'
						});
		/*Avatar start*/
		function BrowseServer(startupPath, functionData) {
			// You can use the "CKFinder" class to render CKFinder in a page:
			var finder = new CKFinder();

			// The path for the installation of CKFinder (default = "/ckfinder/").
			finder.basePath = '../';

			//Startup path in a form: "Type:/path/to/directory/"
			finder.startupPath = startupPath;

			// Name of a function which is called when a file is selected in CKFinder.
			finder.selectActionFunction = SetFileField;

			// Additional data to be passed to the selectActionFunction in a second argument.
			// We'll use this feature to pass the Id of a field that will be updated.
			finder.selectActionData = functionData;

			// Name of a function which is called when a thumbnail is selected in CKFinder. Preview img
			// finder.selectThumbnailActionFunction = ShowThumbnails;

			// Launch CKFinder
			finder.popup();
		}

		// This is a sample function which is called when a file is selected in CKFinder.
		function SetFileField(fileUrl, data) {
			document.getElementById(data["selectActionData"]).innerHTML = this
					.getSelectedFile().name;
			document.getElementById("imgpreview").src = fileUrl;
		}
		/*Avatar end*/
	</script>
</body>
</html>