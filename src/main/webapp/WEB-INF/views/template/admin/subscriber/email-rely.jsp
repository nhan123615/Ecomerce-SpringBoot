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
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<div class="container-fluid">
						<div class="row mb-2">
							<div class="col-sm-12">
								<h1 class="text-center">Send Email to Subcribers</h1>
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
									</div>
									<!-- /.card-header -->
									<!-- form start -->
									<form id="frmAddProduct"
										action="${pageContext.servletContext.contextPath}/admin/subscriber/rely"
										method="post" >
										<!-- card-body -->
										<div class="card-body">
											<div class="row">
												<div class="col-md-12">
													<div class="form-group">
														<div id="email-error"
															 style="color: red;"></div>
														<label>Email Subcribers</label>
														<select class="duallistbox" multiple="multiple" name="email" id="email">
															<c:forEach items="${subcribers}" var="s">
																<option value="${s.id}" selected >${s.email}</option>
															</c:forEach>

														</select>
													</div>
													<!-- /.form-group -->
													<br>

													<div class="form-group">
														<label for="subject">Subject</label>
														<input type="text" class="form-control" id="subject" name="subject" placeholder="Enter subject" maxlength="255">
														<span id="subject-error" class="error invalid-feedback"></span>
													</div>
													
													<div class="form-group">
														<label for="description">Sending Message Content</label>
														<textarea id="description" name="description"></textarea>
													</div>
													<div class="form-group">
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
			/* function SetFileField(fileUrl, data) {
				document.getElementById(data["selectActionData"]).innerHTML = this
					.getSelectedFile().name;
				document.getElementById("imgpreview").src = fileUrl;
			} */
		/*Avatar end*/
		</script>
		<script>
			$('#btnAddProduct')
				.on(
					'click',
					function () {
						let email = $('#email');
						let emailError = $('#email-error');
						let subject = $('#subject');
						let subjectError = $('#subject-error');

						let hasSubmit = [];



						let desc = CKEDITOR.instances['description']
							.getData();
						if (desc == "") {
							hasSubmit.push(1);
							$('#description-error').html(
								'Please enter description!');
						} else if (desc.length > 10000) {
							hasSubmit.push(1);
							$('#description-error').html(
							'Message content cannot be longer than 10000 characters!');
						}

						if (email.val().length === 0) {
							hasSubmit.push(1);
							email.addClass(
									'form-control is-invalid');
							emailError.html(
									'Please select email send to subcribers!');
						}

						if (subject.val().length === 0) {
							hasSubmit.push(1);
							subject.addClass(
									'form-control is-invalid');
							subjectError.html(
									'Please enter subject!');
						}

						if (hasSubmit.length === 0) {
							$('#frmAddProduct').submit();
						}
					});
		</script>
		<script src="${pageContext.servletContext.contextPath}/plugins-admin/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
		<script>
			$(document).ready(function () {
				$('.duallistbox').bootstrapDualListbox()
			})

		</script>
	</body>

	</html>