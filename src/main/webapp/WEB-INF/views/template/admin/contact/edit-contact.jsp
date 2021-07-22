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
		<!-- @author: Ton That Cao Cuong -->
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 1342.88px;">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-12">
							<h1 class="text-center">Reply Contact Form</h1>
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
								<form id="frmReplyContact"
									action="${pageContext.servletContext.contextPath}/admin/contact/update"
									method="post">
									<div class="card-body">
										<div class="form-group">
											<input type="hidden" id="id" name="id" value="${contactDetail.id}">
										</div>
										<div class="form-group">	
												<label for="name">Name</label>
											<input type="text" class="form-control" id=name name="name"
												placeholder="Enter Name"
												value="${contactDetail.name }" disabled>
											<span id="name-error" class="error invalid-feedback"></span>
										</div>
										
										<div class="form-group">
											<label for="email">Email</label>
											<input type="text" class="form-control" id=email name="email"
												placeholder="Enter Email"
												value="${contactDetail.email }" disabled><span
												id="email-error" class="error invalid-feedback"></span>
										</div>
										
										<div class="form-group">
											<label for="subject">Subject</label>
											<input type="text" class="form-control" id="subject" name="subject"
												placeholder="Enter Subject"
												value="${contactDetail.subject }" disabled><span
												id="subject-error" class="error invalid-feedback"></span>
										</div>
										
										<div class="form-group">
											<label for="message">Message</label>
<%--											<input type="text" class="form-control" id="message" name="message"--%>
<%--												placeholder="Enter Message" maxlength="20"--%>
<%--												value="${contactDetail.message }" disabled>--%>
											<textarea type="text" class="form-control" id="message" name="message"
													  placeholder="Enter Message"
													disabled>${contactDetail.message }</textarea>
											<span id="message-error" class="error invalid-feedback"></span>

										</div>

										<div class="form-group">
											<label for="reply">Sending Message Content</label>
											<textarea id="reply" name="reply"></textarea>
										</div>
										<div class="form-group">
											<div id="reply-error" style="color: red;"></div>
										</div>

									</div>
									<!-- /.card-body -->
								</form>
								<div class="card-footer">
									<button id="btnReply" type="submit" class="btn btn-primary">Submit</button>
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
	<script>
		$('#btnReply').on('click', function() {
			let name = $('#name');
			let nameError = $('#name-error');
			let email = $('#email');
			let emailError = $('#email-error');
			let subject = $('#subject');
			let subjectError = $('#subject-error');
			let message = $('#message');
			let messageError = $('#message-error');
			let replyError = $('#reply-error');
			let hasSubmit = [];


			let desc = CKEDITOR.instances['reply']
					.getData();
			if (desc == "") {
				hasSubmit.push(1);
				replyError.html(
						'Please enter message!');
			} else if (desc.length > 10000) {
				hasSubmit.push(1);
				replyError.html(
				'Message content cannot be longer than 10000 characters!');
			}


			if (hasSubmit.length === 0) {
				$('#frmReplyContact').submit();
			}

		
			
		});
	</script>
	<script src="${pageContext.servletContext.contextPath}/ckeditor/ckeditor.js"></script>
	<script src="${pageContext.servletContext.contextPath}/ckfinder/ckfinder.js"></script>
	<script>
		CKEDITOR
				.replace(
						'reply',
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
</body>
</html>