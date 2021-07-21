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
		<div class="content-wrapper" style="min-height: 1299.69px;">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-12">
							<h1 class="text-center">Subsriber Manager</h1>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-12">
							<!-- /.card -->
							<div class="card">
								<div class="card-header">
									<div id="btn-error" style="color: red;margin-bottom: 5px"></div>
									<button class="btn btn-success" id="btnRely">Send Email to Subcribers</button>
								</div>

								<!-- /.card-header -->
								<div class="card-body">
									<div id="example1_wrapper"
										class="dataTables_wrapper dt-bootstrap4">
										<form action="${pageContext.servletContext.contextPath}/admin/subscriber/rely" method="get" id="frmSubcribe">
											<div class="row">
												<div class="col-sm-12">
													<table id="example1"
														   class="table table-bordered table-striped dataTable dtr-inline"
														   role="grid" aria-describedby="example1_info">
														<thead>
														<tr role="row">
															<th class="sorting text-center" tabindex="0" aria-controls="example1"
																rowspan="1" colspan="1">
																<div class="custom-control custom-checkbox">
																	<input class="custom-control-input checkboxSendEmailAll" type="checkbox"
																		   id="customCheckboxAll"  onClick="toggle(this)">
																	<label for="customCheckboxAll"
																		   class="custom-control-label">Check All</label>
																</div>


															</th>
															<th class="sorting text-center" tabindex="0" aria-controls="example1"
																rowspan="1" colspan="1">Email</th>
															<th class="sorting text-center" tabindex="0" aria-controls="example1"
																rowspan="1" colspan="1">First name</th>
															<th class="sorting text-center" tabindex="0" aria-controls="example1"
																rowspan="1" colspan="1">Last Name</th>
														</tr>
														</thead>
														<tbody>
														<c:forEach items="${sub}" var="s">
															<tr>
																<td class="text-center">
																	<div class="form-group">
																		<div class="custom-control custom-checkbox">
																			<input class="custom-control-input checkboxSendEmail" type="checkbox"
																				   id="customCheckbox${s.id}"
																				   value="${s.id}" name="id">
																			<label for="customCheckbox${s.id}"
																				   class="custom-control-label">${s.id}</label>
																		</div>
																	</div>

																</td>
																<td class="text-center">${s.email}</td>
																<td class="text-center">${s.firstName}</td>
																<td class="text-center">${s.lastName}</td>
															</tr>
														</c:forEach>
														</tbody>
														<tfoot>
														</tfoot>
													</table>
												</div>
											</div>
										</form>

									</div>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
		</div>
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
		$(function() {
			$("#example1").DataTable(
					{
						"responsive" : true,
						"lengthChange" : false,
						"autoWidth" : false,
						"buttons" : [ "copy", "csv", "excel", "pdf", "print",
								"colvis" ]
					}).buttons().container().appendTo(
					'#example1_wrapper .col-md-6:eq(0)');
		});
	</script>
	<script>
						function toggle(source) {
							let checkboxEmail = document.querySelectorAll('.checkboxSendEmailAll');
							let sendEmail = document.querySelectorAll('.checkboxSendEmail');
							for (const cbx of checkboxEmail) {
								if (cbx.checked) {
									for (const cbxSendEmail of sendEmail) {
										cbxSendEmail.checked = source.checked
									}
								}else{
									for (const cbxSendEmail of sendEmail) {
										cbxSendEmail.checked =false
									}
								}
							}
						}
		$('#btnRely')
				.on(
						'click',
						function () {
							let checkboxEmail = document.querySelectorAll('.checkboxSendEmail');
							let hasCheck = [];

							for (const cbx of checkboxEmail) {
								if (cbx.checked) {
									hasCheck.push(1);
								}
							}

							if (hasCheck.length === 0) {
								$('#btn-error')
										.html('Please select subcriber to send email!');
							}else {
								$('#frmSubcribe').submit();
							}

						})

	</script>
</body>
</html>