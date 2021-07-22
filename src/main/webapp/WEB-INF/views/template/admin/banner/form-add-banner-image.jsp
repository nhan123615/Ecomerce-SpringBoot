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
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>New Banner Image</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a
									href="${pageContext.servletContext.contextPath}/admin">Home</a></li>
								<li class="breadcrumb-item active">New Banner Image</li>
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
						<!-- column -->
						<div class="col-md-12">
							<!-- general form elements -->
							<div class="card card-primary">
								<div class="card-header">
									<h3 class="card-title">Form Banner Image</h3>
								</div>
								<!-- /.card-header -->
								<!-- form start -->
								<form id="frmAddBanner"
									action="${pageContext.servletContext.contextPath}/admin/banner/new"
									method="post" enctype="multipart/form-data">
									<div class="card-body">
										<div class="form-group">
											<label for="exampleInputFile">Image</label>
											<div class="input-group">
												<div class="custom-file">
													<input type="file" class="custom-file-input"
														id="exampleInputFile" name="image" multiple="multiple">
													<label class="custom-file-label" for="exampleInputFile">Choose
														file</label>
												</div>
											</div>
											<div id="img-successful" style="color: green;"></div>
											<div id="img-error" style="color: red;"></div>
										</div>
									</div>
									<!-- /.card-body -->
								</form>
								<div class="card-footer">
									<button id="btnAddBanner" type="submit" class="btn btn-primary">Submit</button>
								</div>
							</div>
							<!-- /.card -->
						</div>
						<!--/.column-->
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
	<!-- bs-custom-file-input -->
	<script
		src="${pageContext.servletContext.contextPath}/plugins-admin/bs-custom-file-input/bs-custom-file-input.min.js"></script>
	<script>
		$(function() {
			bsCustomFileInput.init();
		});
	</script>
	<script>
		$('#btnAddBanner').on('click', function() {
			let img = $('#exampleInputFile');
			let listFile = img.get(0).files;
			var numberOfFile = img.get(0).files.length;
			let totalSize = 0;
			for (let i = 0; i < numberOfFile; i++) {
				totalSize += listFile[i].size;
			}
			let hasSubmit = [];

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
			} else if (numberOfFile == 0) {
				hasSubmit.push(1);
				$('#img-error').html('Please choose image!');
				$('#img-successful').html('');
			} else if (totalSize > 1024000) {
				hasSubmit.push(1);
				$('#img-error').html('Image size is not greater than 1MB!');
				$('#img-successful').html('');
			} else {
				$('#img-successful').html('Valid!');
				$('#img-error').html('');
			}
			
			if (hasSubmit.length === 0) {
				$('#frmAddBanner').submit();
			}
		});
	</script>
</body>
</html>