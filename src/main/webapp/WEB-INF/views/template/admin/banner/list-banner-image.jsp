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

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-12">
							<h1 class="text-center" >Banner Image Manager</h1>
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
										<a
												href="${pageContext.servletContext.contextPath}/admin/banner/new"
												class="btn btn-success">Add Banner</a>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<div id="example1_wrapper"
										class="dataTables_wrapper dt-bootstrap4">
										<div class="row">

											<div class="col-sm-12">
												<table id="example1"
													class="table table-bordered table-striped dataTable dtr-inline"
													role="grid" aria-describedby="example1_info">
													<thead>
														<tr role="row">
															<th class="sorting text-center" tabindex="0" aria-controls="example1"
																rowspan="1" colspan="1">Id</th>
															<th class="sorting text-center" tabindex="0" aria-controls="example1"
																rowspan="1" colspan="1">Image</th>
															<th class="sorting text-center" tabindex="0" aria-controls="example1"
																rowspan="1" colspan="1">Action</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach var="b" items="${listBanner }">
															<tr>
																<td class="text-center">${b.id }</td>
																<td class="text-center"><img
																	src="${pageContext.request.contextPath}/banner/display/${b.id}"
																	width="100px" height="100px"></td>
																<td class="project-actions text-center d-flex" style="justify-content: center">
																	<a
																	class="btn btn-info btn-sm"
																	href="${pageContext.request.contextPath}/admin/banner/edit?id=${b.id}"><i
																		class="fas fa-pencil-alt"></i>
																		Edit
																	</a>
																	&nbsp;&nbsp;
																	<form action="${pageContext.request.contextPath}/admin/banner/delete" method="post">
																		<input type="hidden" name="id" value="${b.id}">
																		<button
																				class="btn btn-info btn-sm btn-danger"
																			>
																			<i class="fas fa-trash-alt"></i>
																			Delete
																		</button>
																	</form>

																</td>
															</tr>
														</c:forEach>
													</tbody>
													<tfoot>
													</tfoot>
												</table>
											</div>
										</div>
									</div>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>
						<!-- /.col -->
					</div>
				</div>
			</section>
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
</body>
</html>