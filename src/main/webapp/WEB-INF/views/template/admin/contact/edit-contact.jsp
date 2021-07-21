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
						<div class="col-sm-6">
							<h1>Reply Contact Form</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a
									href="${pageContext.servletContext.contextPath}/admin">Home</a></li>
								<li class="breadcrumb-item active">Reply Contact Form</li>
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
									<h3 class="card-title">Reply Contact Form</h3>
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
											<input type="hidden" id="name" name="name" value="${contactDetail.name }">
											<input type="text" class="form-control" id=name name="name"
												placeholder="Enter Name" maxlength="20"
												value="${contactDetail.name }" disabled><span
												id="nameType-error" class="error invalid-feedback"></span>
										</div>
										
										<div class="form-group">
											<label for="email">Email</label>
											<input type="hidden" id="email" name="email" value="${contactDetail.email }">
											<input type="text" class="form-control" id=email name="email"
												placeholder="Enter Email" maxlength="20"
												value="${contactDetail.email }" disabled><span
												id="nameType-error" class="error invalid-feedback"></span>
										</div>
										
										<div class="form-group">
											<label for="subject">Subject</label>
											<input type="hidden" id="subject" name="subject" value="${contactDetail.subject }">
											<input type="text" class="form-control" id="subject" name="subject"
												placeholder="Enter Subject" maxlength="20"
												value="${contactDetail.subject }" disabled><span
												id="nameType-error" class="error invalid-feedback"></span>
										</div>
										
										<div class="form-group">
											<label for="message">Message</label>
											<input type="hidden" id="message" name="message" value="${contactDetail.message }">
											<input type="text" class="form-control" id="message" name="message"
												placeholder="Enter Message" maxlength="20"
												value="${contactDetail.message }" disabled><span
												id="nameType-error" class="error invalid-feedback"></span>
										</div>
										
										<div class="form-group">
											<label for="reply">Reply</label>
											<input type="hidden" id="reply" name="reply" value="${contactDetail.reply }">
											<input type="text" class="form-control" id="reply" name="reply"
												placeholder="Enter reply" maxlength="20"
												value="${contactDetail.reply }" ><span
												id="nameType-error" class="error invalid-feedback"></span>
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
			let email = $('#email');
			let subject = $('#subject');
			let message = $('#message');
			let reply = $('#reply');
			
			
			$('#frmReplyContact').submit();
		
			
		});
	</script>
</body>
</html>