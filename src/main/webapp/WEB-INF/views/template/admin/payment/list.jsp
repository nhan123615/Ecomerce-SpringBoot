<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

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
							<h1 class="text-center">Payment Manager</h1>
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
							<div id="btnPaid-error" style="color: red;margin-bottom: 5px"></div>
							<div id="btnDeliverd-error" style="color: red;margin-bottom: 5px"></div>
							<div class="card">
								<div class="card-header d-flex"  >
									<div class="mr-3">
										<button class="btn btn-success" id="btnPaid">Paid</button>
									</div>
									<div>
										<button class="btn btn-success" id="btnDeliverd">Delivered</button>
									</div>
								</div>
								<!-- /.card-header -->
								<form action="${pageContext.servletContext.contextPath}/admin/payment" method="post" id="frm">
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

																<th class="sorting  text-center" tabindex="0" aria-controls="example1"
																	rowspan="1" colspan="1">Amount</th>
																<th class="sorting  text-center" tabindex="0" aria-controls="example1"
																	rowspan="1" colspan="1">Payment Date</th>
																<th class="sorting  text-center" tabindex="0" aria-controls="example1"
																	rowspan="1" colspan="1">Payment Method</th>
																<th class="sorting  text-center" tabindex="0" aria-controls="example1"
																	rowspan="1" colspan="1">Order</th>
																<th class="sorting  text-center" tabindex="0" aria-controls="example1"
																	rowspan="1" colspan="1">Customer Details</th>
																<th class="sorting  text-center" tabindex="0" aria-controls="example1"
																	rowspan="1" colspan="1">Paid</th>
																<th class="sorting  text-center" tabindex="0" aria-controls="example1"
																	rowspan="1" colspan="1">Tracking</th>

																<th class="sorting" tabindex="0" aria-controls="example1"
																	rowspan="1" colspan="1">Action</th>
															</tr>
															</thead>
															<tbody>
															<c:forEach var="p" items="${paymentList }">
																<tr>
																	<td>
																		<div class="form-group">
																			<div class="custom-control custom-checkbox">
																				<input class="custom-control-input checkboxSendEmail" type="checkbox"
																					   id="customCheckbox${p.id}"
																					   value="${p.id}" name="id">
																				<label for="customCheckbox${p.id}"
																					   class="custom-control-label">
																					<a href="${pageContext.request.contextPath}/admin/payment/detail?id=${p.id}">${p.id}</a>
																				</label>
																			</div>
																		</div>
																	</td>

																	<td>${p.amount }</td>
																	<td ><fmt:formatDate value='${p.paymentDate }'  type='date' pattern='dd/MM/yyyy'/></td>
																	<td>${p.paymentMethod }</td>
																	<td>
																		<a href="${pageContext.servletContext.contextPath}/admin/order/detail?id=${p.customerOrder.id}">
																				#OD000${p.customerOrder.id}
																		</a>

																	</td>
																	<td>
																		<a href="${pageContext.servletContext.contextPath}/admin/user/detail?id=${p.customerOrder.customer.user.id}">
																			${p.customerOrder.customer.firstName} ${p.customerOrder.customer.lastName}
																		</a>

																	</td>
																	<td class="text-center">
																		<c:choose>
																			<c:when test="${p.status == true}">
																				<a
																						class="my-btn-state rounded-circle btn btn-sm btn-success">
																					<i class="fas fa-check"></i>
																				</a>
																			</c:when>

																			<c:otherwise>
																				<a
																						class="my-btn-state rounded-circle btn btn-sm btn-danger">
																					<i class="fas fa-minus"></i>
																				</a>
																			</c:otherwise>
																		</c:choose>
																	</td>
																	<td class="text-center">
																			${p.tracked ?'<span class="text-success"><b>Delivered</b></span>':'<span class="text-danger"><b>In-Stock</b></span>'}
																	</td>
																	<td class="project-actions text-center">
																			<%--																	<a--%>
																			<%--																	class="btn btn-primary btn-sm"--%>
																			<%--																	href="${pageContext.request.contextPath}/admin/payment/detail?id=${p.id}"><i--%>
																			<%--																		class="fas fa-folder"></i>View</a>--%>
																		<a
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
								</form>

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
		$('#btnPaid')
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
								$('#btnPaid-error')
										.html('Please select payment!');
							}else {
								$('#frm').append('<input type="hidden" name="method" value="status">')
								$('#frm').submit();
							}

						})


		$('#btnDeliverd')
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
								$('#btnDeliverd-error')
										.html('Please select payment!');
							}else {
								$('#frm').append('<input type="hidden" name="method" value="deliver">')
								$('#frm').submit();
							}

						})
	</script>
</body>
</html>