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
						<div class="col-sm-6">
							<h1>Payment list</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a
									href="${pageContext.servletContext.contextPath}/admin">Home</a></li>
								<li class="breadcrumb-item active">Payment List</li>
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
						<div class="col-12">
							<!-- /.card -->
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">Payment list</h3>
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
															<th class="sorting" tabindex="0" aria-controls="example1"
																rowspan="1" colspan="1">Id</th>
															<th class="sorting" tabindex="0" aria-controls="example1"
																rowspan="1" colspan="1">Amount</th>
															<th class="sorting" tabindex="0" aria-controls="example1"
																rowspan="1" colspan="1">Payment Detail</th>
															<th class="sorting" tabindex="0" aria-controls="example1"
																rowspan="1" colspan="1">Payment Method</th>
															<th class="sorting" tabindex="0" aria-controls="example1"
																rowspan="1" colspan="1">Status</th>
															<th class="sorting" tabindex="0" aria-controls="example1"
																rowspan="1" colspan="1">Customer ID</th>
															<th class="sorting" tabindex="0" aria-controls="example1"
																rowspan="1" colspan="1">Action</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach var="p" items="${paymentList }">
															<tr>
																<td>${p.id }</td>
																<td>${p.amount }</td>
																<td>${p.paymentDate }</td>
																<td>${p.paymentMethod }</td>
																<td>
																	<c:choose>
																		<c:when test="${p.status == true}">
																			<a href=""
																				class="my-btn-state rounded-circle btn btn-sm btn-success">
																				<i class="fas fa-check"></i>
																			</a>
																		</c:when>
				
																		<c:otherwise>
																			<a href=""
																				class="my-btn-state rounded-circle btn btn-sm btn-danger">
																				<i class="fas fa-minus"></i>
																			</a>
																		</c:otherwise>
																	</c:choose>
																</td>
																<td>${p.customerOrder.customer.id}</td>
																<td class="project-actions text-center"><a
																	class="btn btn-primary btn-sm"
																	href="${pageContext.request.contextPath}/admin/payment/detail?id=${p.id}"><i
																		class="fas fa-folder"></i>View</a> <a
																	class="btn btn-info btn-sm"
																	href="${pageContext.servletContext.contextPath}/admin/payment/edit?id=${p.id}"><i
																		class="fas fa-pencil-alt"></i>Edit</a></td>
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
</body>
</html>