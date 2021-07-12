<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<!DOCTYPE html>
	<html lang="en">
	<jsp:include page="../components/head.jsp"></jsp:include>

	<body class="hold-transition sidebar-mini layout-fixed">
		<div class="wrapper">
			<!-- Preloader -->
			<div class="preloader flex-column justify-content-center align-items-center">
				<img class="animation__shake"
					src="${pageContext.servletContext.contextPath}/dist/img/angry-nerds-logo-2.png" alt="AdminLTELogo"
					height="260" width="260">

			</div>
			<jsp:include page="../components/nav-bar.jsp"></jsp:include>
			<jsp:include page="../components/side-bar.jsp"></jsp:include>
			<!-- @author: Lam Cong Hau -->
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<div class="container-fluid">
						<div class="row mb-2">
							<div class="col-sm-6">
								<h1>Add Product Form</h1>
							</div>
							<div class="col-sm-6">
								<ol class="breadcrumb float-sm-right">
									<li class="breadcrumb-item"><a
											href="${pageContext.servletContext.contextPath}/admin">Home</a></li>
									<li class="breadcrumb-item active">Add Product Form</li>
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
									<form id="frmAddProduct"
										action="${pageContext.servletContext.contextPath}/admin/product/new"
										method="post" enctype="multipart/form-data">
										<!-- card-body -->
										<div class="card-body">
											<div class="row">
												<div id="col1" class="col-md-6">
													<div class="form-group">
														<label for="productName">Name</label> <input type="text"
															class="form-control" id="productName" name="productName"
															placeholder="Enter name" maxlength="50"> <span
															id="productName-error"
															class="error invalid-feedback"></span>
													</div>
													<div class="form-group">
														<label for="price">Price</label> <input type="number"
															class="form-control" id="price" name="price"
															placeholder="Enter price"> <span id="price-error"
															class="error invalid-feedback"></span>
													</div>
													<div class="form-group">
														<label for="stockQuantity">Stock quantity</label> <input
															type="number" class="form-control" id="stockQuantity"
															name="stockQuantity" placeholder="Enter stock quantity">
														<span id="stockQuantity-error"
															class="error invalid-feedback"></span>
													</div>
													<div class="form-group">
														<label>Color</label> <select multiple="multiple"
															id="productColor" name="productColor" class="form-control">
															<option value="black">black</option>
															<option value="white">white</option>
															<option value="red">red</option>
															<option value="yellow">yellow</option>
														</select> <span id="productColor-error"
															class="error invalid-feedback"></span>
													</div>
													<div class="form-group">
														<label>Brand</label> <select id="brand" class="form-control"
															name="brand">
															<option value="-1" selected="selected">Select
																brand</option>
															<c:forEach var="brand" items="${brands }">
																<option value="${brand.id }">${brand.name }</option>
															</c:forEach>
														</select> <span id="brand-error"
															class="error invalid-feedback"></span>
													</div>
													<div class="form-group">
														<label>Category</label> <select class="form-control"
															id="category" name="category" required="required">
															<option value="-1" selected="selected">Select
																category</option>
															<c:forEach var="category" items="${categories }">
																<option value="${category.id }">${category.name }
																</option>
															</c:forEach>
														</select> <span id="category-error"
															class="error invalid-feedback"></span>
													</div>
													<div class="form-group">
														<label>Type</label> <select class="form-control" id="type"
															name="type">
														</select> <span id="type-error"
															class="error invalid-feedback"></span>
													</div>
												</div>
												<div class="col-md-6">
													<label for="shortDescription">Short Description</label>
													<div class="form-group">
														<textarea id="shortDescription"
															name="shortDescription"></textarea>
													</div>
													<div class="form-group">
														<div id="shordescription-successful" style="color: green;">
														</div>
														<div id="shordescription-error" style="color: red;"></div>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<div class="form-group">
														<div class="custom-control custom-checkbox">
															<input class="custom-control-input" type="checkbox"
																id="customCheckbox2" checked name="enabled"> <label
																for="customCheckbox2"
																class="custom-control-label">Enable</label>
														</div>
													</div>
													<div class="form-group">
														<label for="images">Image</label> <br /> <input type="file"
															id="img" name="img" multiple="multiple">
														<div id="img-successful" style="color: green;"></div>
														<div id="img-error" style="color: red;"></div>
													</div>

													<div class="form-group">
														<label for="description">Description</label>
														<textarea id="description" name="description"></textarea>
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
										<button id="btnAddProduct" type="submit" class="btn btn-primary">Submit</button>
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
		<script src="${pageContext.servletContext.contextPath}/ckeditor/ckeditor.js"></script>
		<script src="${pageContext.servletContext.contextPath}/ckfinder/ckfinder.js"></script>
		<script>
			CKEDITOR
				.replace(
					'description',
					{
						filebrowserBrowseUrl: '${pageContext.servletContext.contextPath}/ckfinder/ckfinder.html',
						filebrowserImageBrowseUrl: '${pageContext.servletContext.contextPath}/ckfinder/ckfinder.html?type=Images',
						filebrowserFlashBrowseUrl: '${pageContext.servletContext.contextPath}/ckfinder/ckfinder.html?type=Flash',
						filebrowserUploadUrl: '${pageContext.servletContext.contextPath}/ckfinder/core/connector/java/connector.java?command=QuickUpload&amp;type=Files',
						filebrowserImageUploadUrl: '${pageContext.servletContext.contextPath}/ckfinder/core/connector/java/connector.java?command=QuickUpload&amp;type=Images',
						filebrowserFlashUploadUrl: '${pageContext.servletContext.contextPath}/ckfinder/core/connector/java/connector.java?command=QuickUpload&amp;type=Flash'
					});

			CKEDITOR
				.replace(
					'shortDescription',
					{
						height: $("#col1").height() - 250,
						filebrowserBrowseUrl: '${pageContext.servletContext.contextPath}/ckfinder/ckfinder.html',
						filebrowserImageBrowseUrl: '${pageContext.servletContext.contextPath}/ckfinder/ckfinder.html?type=Images',
						filebrowserFlashBrowseUrl: '${pageContext.servletContext.contextPath}/ckfinder/ckfinder.html?type=Flash',
						filebrowserUploadUrl: '${pageContext.servletContext.contextPath}/ckfinder/core/connector/java/connector.java?command=QuickUpload&amp;type=Files',
						filebrowserImageUploadUrl: '${pageContext.servletContext.contextPath}/ckfinder/core/connector/java/connector.java?command=QuickUpload&amp;type=Images',
						filebrowserFlashUploadUrl: '${pageContext.servletContext.contextPath}/ckfinder/core/connector/java/connector.java?command=QuickUpload&amp;type=Flash'
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
			category.addEventListener('click', function () {
				const data = null;
				const xhr = new XMLHttpRequest();
				xhr.addEventListener("readystatechange", function () {
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
					selectUser += "<option value=" + json[i].id + ">"
						+ json[i].name + "</option>";
				}
				return selectUser;
			}
		</script>
		<script>
			$('#btnAddProduct')
				.on(
					'click',
					function () {
						let name = $('#productName');
						let price = $('#price');
						let stockQuantity = $('#stockQuantity');
						let productColor = $('#productColor');
						let brand = $('#brand');
						let category = $('#category');
						let type = $('#type');
						let description = $('#description');
						let img = $('#img');
						let listFile = img.get(0).files;
						var numberOfFile = img.get(0).files.length;
						let totalSize = 0;
						for (let i = 0; i < numberOfFile; i++) {
							totalSize += listFile[i].size;
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
						
						function validate() {
							for (var i = 0; i < listFile.length; i++) {
								var sFileName = listFile[i].name;
								regex = new RegExp("(.*?)\.(jpg|jpeg|bmp|gif|png)$");
								if (!regex.test(sFileName)) {
									return false;
								}
							}
							return true;
						}
						if (!validate()) {
							hasSubmit.push(1);
							$('#img-error').html('Please choose image!');
							$('#img-successful').html('');
						} else if (numberOfFile > 4 || numberOfFile < 4) {
							hasSubmit.push(1);
							$('#img-error').html('Please choose 4 image!');
							$('#img-successful').html('');
						} else if (totalSize > 40960000) {
							hasSubmit.push(1);
							$('#img-error').html(
								'Image size is not greater than 40MB!');
							$('#img-successful').html('');
						} else {
							$('#img-successful').html('Valid!');
							$('#img-error').html('');
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
							$('#frmAddProduct').submit();
						}
					});
		</script>
	</body>

	</html>