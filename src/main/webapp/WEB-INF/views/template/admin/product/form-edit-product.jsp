<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="../components/head.jsp"></jsp:include>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">
		<!-- Preloader -->
		<div
			class="preloader flex-column justify-content-center align-items-center">
			<img class="animation__shake"
				src="${pageContext.servletContext.contextPath}/dist/img/angry-nerds-logo-2.png"
				alt="AdminLTELogo" height="260" width="260">

		</div>
		<jsp:include page="../components/nav-bar.jsp"></jsp:include>
		<jsp:include page="../components/side-bar.jsp"></jsp:include>
		<!-- @author: Lam Cong Hau -->
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 1342.88px;">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>Edit Product Form</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a
									href="${pageContext.servletContext.contextPath}/admin">Home</a></li>
								<li class="breadcrumb-item active">Edit Product Form</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<!-- left column -->
						<div class="col-md-12">
							<!-- general form elements -->
							<div class="card card-primary">
								<div class="card-header">
									<h3 class="card-title">Product Form</h3>
								</div>
								<!-- /.card-header -->
								<!-- form start -->
								<form id="frmEditProduct"
									action="${pageContext.servletContext.contextPath}/admin/product/update"
									method="post" enctype="multipart/form-data">
									<div class="card-body">
										<div class="row">
											<div id="col1" class="col-md-6">
												<div class="form-group">
													<label for="productName">Name</label> <input type="hidden"
														id="id" name="id" value="${product.id }"> <input
														type="text" class="form-control" id="productName"
														name="productName" placeholder="Enter name" maxlength="50"
														value="${product.productName }"> <span
														id="productName-error" class="error invalid-feedback"></span>
												</div>
												<div class="form-group">
													<label for="price">Price</label> <input type="number"
														class="form-control" id="price" name="price"
														placeholder="Enter price" value="${product.price }">
													<span id="price-error" class="error invalid-feedback"></span>
												</div>
												<div class="form-group">
													<label for="stockQuantity">Stock quantity</label> <input
														type="number" class="form-control" id="stockQuantity"
														name="stockQuantity" placeholder="Enter stock quantity"
														value="${product.stockQuantity }"> <span
														id="stockQuantity-error" class="error invalid-feedback"></span>
												</div>
												<div class="form-group">
													<label>Color</label> <select multiple="multiple"
														id="productColor" name="productColor" class="form-control">
														<option value="black"
															<c:if test="${black != null}">selected</c:if>>black</option>
														<option value="white"
															<c:if test="${white != null}">selected</c:if>>white</option>
														<option value="red"
															<c:if test="${red != null}">selected</c:if>>red</option>
														<option value="yellow"
															<c:if test="${yellow != null}">selected</c:if>>yellow</option>
													</select> <span id="productColor-error"
														class="error invalid-feedback"></span>
												</div>
												<div class="form-group">
													<label>Brand</label> <select id="brand"
														class="form-control" name="brand">
														<option value="-1" selected="selected">Select
															brand</option>
														<c:forEach var="brand" items="${brands }">
															<c:choose>
																<c:when test="${brand.id == product.brand.id}">
																	<option selected="selected" value="${brand.id }">${brand.name }</option>
																</c:when>
																<c:otherwise>
																	<option value="${brand.id }">${brand.name }</option>
																</c:otherwise>
															</c:choose>
														</c:forEach>
													</select> <span id="brand-error" class="error invalid-feedback"></span>
												</div>
												<div class="form-group">
													<label>Category</label> <select class="form-control"
														id="category" name="category" required="required">
														<option value="-1" selected="selected">Select
															category</option>
														<c:forEach var="category" items="${categories }">
															<c:choose>
																<c:when test="${category.id == product.category.id}">
																	<option selected="selected" value="${category.id }">${category.name }</option>
																</c:when>
																<c:otherwise>
																	<option value="${category.id }">${category.name }</option>
																</c:otherwise>
															</c:choose>
														</c:forEach>
													</select> <span id="category-error" class="error invalid-feedback"></span>
												</div>
												<div class="form-group">
													<label>Type</label> <select class="form-control" id="type"
														name="type">
														<option selected="selected" disabled="disabled">Select
															type</option>
														<c:forEach var="type" items="${types }">
															<c:if test="${type.id == product.type.id}">
																<option selected="selected" value="${type.id }">${type.name }</option>
															</c:if>
														</c:forEach>
													</select> <span id="type-error" class="error invalid-feedback"></span>
												</div>
											</div>
											<div class="col-md-6">
												<label for="shortDescription">Short Description</label>
												<div class="form-group">
													<textarea id="shortDescription" name="shortDescription">
												${product.shortDescription }
											</textarea>
												</div>
												<div class="form-group">
													<div id="shordescription-successful" style="color: green;"></div>
													<div id="shordescription-error" style="color: red;"></div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<div class="custom-control custom-checkbox">
														<input class="custom-control-input" type="checkbox"
															id="customCheckbox2"
															<c:if test="${product.enabled == true}">checked</c:if>
															name="enabled"> <label for="customCheckbox2"
															class="custom-control-label">Enable</label>
													</div>
												</div>
												<div class="d-flex justify-content-between">
													<div class="form-group">
														<label for="images">Image</label> <br /> <input
															type="file" id="img" name="img"
															onchange="getImagePreview(event)">
														<div id="img-successful" style="color: green;"></div>
														<div id="img-error" style="color: red;"></div>
														<div id="preview">
															<img
																src="${pageContext.request.contextPath}/admin/product/display/0&${product.id}"
																width="200" height="200" />
														</div>
													</div>
													<div class="form-group">
														<label for="images">Image</label> <br /> <input
															type="file" id="img1" name="img"
															onchange="getImagePreview1(event)">
														<div id="img1-successful" style="color: green;"></div>
														<div id="img1-error" style="color: red;"></div>
														<div id="preview1">
															<img
																src="${pageContext.request.contextPath}/admin/product/display/1&${product.id}"
																width="200" height="200" />
														</div>
													</div>
													<div class="form-group">
														<label for="images">Image</label> <br /> <input
															type="file" id="img2" name="img"
															onchange="getImagePreview2(event)">
														<div id="img2-successful" style="color: green;"></div>
														<div id="img2-error" style="color: red;"></div>
														<div id="preview2">
															<img
																src="${pageContext.request.contextPath}/admin/product/display/2&${product.id}"
																width="200" height="200" />
														</div>
													</div>
													<div class="form-group">
														<label for="images">Image</label> <br /> <input
															type="file" id="img3" name="img"
															onchange="getImagePreview3(event)">
														<div id="img3-successful" style="color: green;"></div>
														<div id="img3-error" style="color: red;"></div>
														<div id="preview3">
															<img
																src="${pageContext.request.contextPath}/admin/product/display/3&${product.id}"
																width="200" height="200" />
														</div>
													</div>
												</div>
												<div class="form-group">
													<textarea id="description" name="description">${product.description }</textarea>
												</div>
												<div class="form-group">
													<div id="description-successful" style="color: green;"></div>
													<div id="description-error" style="color: red;"></div>
												</div>
											</div>
										</div>
									</div>
									<!-- /.card-body -->
								</form>
								<div class="card-footer">
									<button id="btnEditProduct" type="submit"
										class="btn btn-primary">Submit</button>
								</div>
							</div>
							<!-- /.card -->

							<!-- general form elements -->

							<!-- /.card -->

							<!-- Input addon -->

							<!-- /.card -->
							<!-- Horizontal Form -->

							<!-- /.card -->

						</div>
						<!--/.col (left) -->
						<!-- right column -->

						<!--/.col (right) -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<jsp:include page="../components/footer.jsp"></jsp:include>
		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->
	<jsp:include page="../components/script.jsp"></jsp:include>
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

		CKEDITOR
				.replace(
						'shortDescription',
						{
							height : $("#col1").height() - 250,
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
	<script>
		var category = document.querySelector('#category');
		var type = document.querySelector('#type');
		//select box
		category.addEventListener('click', function() {
			const data = null;
			const xhr = new XMLHttpRequest();
			xhr.addEventListener("readystatechange", function() {
				if (this.readyState === this.DONE) {
					var json = JSON.parse(this.responseText);
					type.innerHTML = getSelectUser(json)
				}
			});
			xhr.open("GET",
					"${pageContext.servletContext.contextPath}/select?id_category="
							+ this.value);
			xhr.setRequestHeader('Content-type', 'application/json');
			xhr.send(data);
		});
		function getSelectUser(json) {
			var selectUser = "";
			for (let i = 0; i < json.length; i++) {
				selectUser += "<option value="+json[i].id+">" + json[i].name
						+ "</option>";
			}
			return selectUser;
		}
	</script>
	<script>
		$('#btnEditProduct')
				.on(
						'click',
						function() {
							let name = $('#productName');
							let price = $('#price');
							let stockQuantity = $('#stockQuantity');
							let productColor = $('#productColor');
							let brand = $('#brand');
							let category = $('#category');
							let type = $('#type');
							let description = $('#description');
							let img = $('#img');
							let img1 = $('#img1');
							let img2 = $('#img2');
							let img3 = $('#img3');

							let listFile = img.get(0).files;
							var numberOfFile = img.get(0).files.length;
							let totalSize = 0;
							for (let i = 0; i < numberOfFile; i++) {
								totalSize += listFile[i].size;
							}

							let listFile1 = img1.get(0).files;
							var numberOfFile1 = img1.get(0).files.length;
							let totalSize1 = 0;
							for (let i = 0; i < numberOfFile1; i++) {
								totalSize1 += listFile1[i].size;
							}

							let listFile2 = img2.get(0).files;
							var numberOfFile2 = img2.get(0).files.length;
							let totalSize2 = 0;
							for (let i = 0; i < numberOfFile2; i++) {
								totalSize2 += listFile2[i].size;
							}

							let listFile3 = img3.get(0).files;
							var numberOfFile3 = img3.get(0).files.length;
							let totalSize3 = 0;
							for (let i = 0; i < numberOfFile3; i++) {
								totalSize3 += listFile3[i].size;
							}

							let hasSubmit = [];
							if (name.val().length === 0) {
								hasSubmit.push(1);
								$('#productName').addClass(
										'form-control is-invalid');
								$('#productName-error').html(
										'Please enter name!');
							} else {
								$('#productName').removeClass(
										'form-control is-invalid');
								$('#productName').addClass(
										'form-control is-valid');
								$('#productName-error').html('');
							}

							if (price.val().length === 0) {
								hasSubmit.push(1);
								$('#price').addClass('form-control is-invalid');
								$('#price-error').html('Please enter price!');
							} else if (parseFloat(price.val()) < 0) {
								hasSubmit.push(1);
								$('#price').addClass('form-control is-invalid');
								$('#price-error').html('Price not less than 0');
							} else if (parseFloat(price.val()) > 100000) {
								hasSubmit.push(1);
								$('#price').addClass('form-control is-invalid');
								$('#price-error').html(
										'Price not greater than 100000');
							} else {
								$('#price').removeClass(
										'form-control is-invalid');
								$('#price').addClass('form-control is-valid');
								$('#price-error').html('');
							}

							if (stockQuantity.val().length === 0) {
								hasSubmit.push(1);
								$('#stockQuantity').addClass(
										'form-control is-invalid');
								$('#stockQuantity-error').html(
										'Please enter stock quantity!');
							} else if (Math.floor(stockQuantity.val()) != stockQuantity
									.val()) {
								hasSubmit.push(1);
								$('#stockQuantity').addClass(
										'form-control is-invalid');
								$('#stockQuantity-error').html(
										'Stock quantity not double!');
							} else if (parseInt(stockQuantity.val()) < 0) {
								hasSubmit.push(1);
								$('#stockQuantity').addClass(
										'form-control is-invalid');
								$('#stockQuantity-error').html(
										'Stock quantity not less than 0');
							} else if (parseInt(stockQuantity.val()) > 1000) {
								hasSubmit.push(1);
								$('#stockQuantity').addClass(
										'form-control is-invalid');
								$('#stockQuantity-error').html(
										'Stock quantity not greater than 1000');
							} else {
								$('#stockQuantity').removeClass(
										'form-control is-invalid');
								$('#stockQuantity').addClass(
										'form-control is-valid');
								$('#stockQuantity-error').html('');
							}

							if (productColor.val().length === 0) {
								hasSubmit.push(1);
								$('#productColor').addClass(
										'form-control is-invalid');
								$('#productColor-error').html(
										'Please choose color!');
							} else {
								$('#productColor').removeClass(
										'form-control is-invalid');
								$('#productColor').addClass(
										'form-control is-valid');
								$('#productColor-error').html('');
							}

							if (brand.val() === '-1') {
								hasSubmit.push(1);
								$('#brand').addClass('form-control is-invalid');
								$('#brand-error').html('Please choose brand!');
							} else {
								$('#brand').removeClass(
										'form-control is-invalid');
								$('#brand').addClass('form-control is-valid');
								$('#brand-error').html('');
							}

							if (category.val() === '-1') {
								hasSubmit.push(1);
								$('#category').addClass(
										'form-control is-invalid');
								$('#category-error').html(
										'Please choose category!');
							} else {
								$('#category').removeClass(
										'form-control is-invalid');
								$('#category')
										.addClass('form-control is-valid');
								$('#category-error').html('');
							}

							if (type.val() === null) {
								hasSubmit.push(1);
								$('#type').addClass('form-control is-invalid');
								$('#type-error')
										.html('Please choose category!');
							} else {
								$('#type').removeClass(
										'form-control is-invalid');
								$('#type').addClass('form-control is-valid');
								$('#type-error').html('');
							}

							if (totalSize > 10240000) {
								hasSubmit.push(1);
								$('#img-error').html(
										'Image size is not greater than 10MB!');
								$('#img-successful').html('');
							} else {
								$('#img-successful').html('Valid!');
								$('#img-error').html('');
							}
							if (totalSize1 > 10240000) {
								hasSubmit.push(1);
								$('#img1-error').html(
										'Image size is not greater than 10MB!');
								$('#img1-successful').html('');
							} else {
								$('#img1-successful').html('Valid!');
								$('#img1-error').html('');
							}
							if (totalSize2 > 10240000) {
								hasSubmit.push(1);
								$('#img2-error').html(
										'Image size is not greater than 10MB!');
								$('#img2-successful').html('');
							} else {
								$('#img2-successful').html('Valid!');
								$('#img2-error').html('');
							}
							if (totalSize3 > 10240000) {
								hasSubmit.push(1);
								$('#img3-error').html(
										'Image size is not greater than 10MB!');
								$('#img3-successful').html('');
							} else {
								$('#img3-successful').html('Valid!');
								$('#img3-error').html('');
							}

							let desc = CKEDITOR.instances['description']
									.getData();
							if (desc == "") {
								hasSubmit.push(1);
								$('#description-error').html(
										'Please enter description!');
								$('#description-successful').html('');
							} else {
								$('#description-error').html('');
								$('#description-successful').html('Valid!');
							}

							let shortDesc = CKEDITOR.instances['shortDescription']
									.getData();
							if (shortDesc == "") {
								hasSubmit.push(1);
								$('#shordescription-error').html(
										'Please enter short description!');
								$('#shordescription-successful').html('');
							} else {
								$('#shordescription-error').html('');
								$('#shordescription-successful').html('Valid!');
							}

							if (hasSubmit.length === 0) {
								$('#frmEditProduct').submit();
							}
						});
	</script>
	<script>
		function getImagePreview(event) {
			let image = URL.createObjectURL(event.target.files[0]);
			let imagediv = document.getElementById('preview');
			let newimg = document.createElement('img');
			imagediv.innerHTML = '';
			newimg.src = image;
			newimg.width = "200";
			newimg.height = "200";
			imagediv.appendChild(newimg);
		}
		function getImagePreview1(event) {
			let image = URL.createObjectURL(event.target.files[0]);
			let imagediv = document.getElementById('preview1');
			let newimg = document.createElement('img');
			imagediv.innerHTML = '';
			newimg.src = image;
			newimg.width = "200";
			newimg.height = "200";
			imagediv.appendChild(newimg);
		}
		function getImagePreview2(event) {
			let image = URL.createObjectURL(event.target.files[0]);
			let imagediv = document.getElementById('preview2');
			let newimg = document.createElement('img');
			imagediv.innerHTML = '';
			newimg.src = image;
			newimg.width = "200";
			newimg.height = "200";
			imagediv.appendChild(newimg);
		}
		function getImagePreview3(event) {
			let image = URL.createObjectURL(event.target.files[0]);
			let imagediv = document.getElementById('preview3');
			let newimg = document.createElement('img');
			imagediv.innerHTML = '';
			newimg.src = image;
			newimg.width = "200";
			newimg.height = "200";
			imagediv.appendChild(newimg);
		}
	</script>
</body>
</html>