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
						<h1 class="text-center">Order Manager</h1>
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
														rowspan="1" colspan="1">Deliver Name</th>
													<th class="sorting text-center" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1">Deliver Address</th>
													<th class="sorting text-center" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1">Deliver Phone</th>
													<th class="sorting text-center" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1">Order Date</th>
													<th class="sorting text-center" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1">Status</th>
													<th class="sorting text-center" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1">Total Price</th>
													<th class="sorting text-center" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1">Customer Details</th>
													<%--															<th class="sorting text-center" tabindex="0" aria-controls="example1"--%>
													<%--																rowspan="1" colspan="1">Action</th>--%>
												</tr>
												</thead>
												<tbody>
												<c:forEach items="${orderList}" var="o">
													<tr>
														<td class="text-center">${o.id}</td>
														<td class="text-center">
															<a href="${pageContext.servletContext.contextPath}/admin/order/detail?id=${o.id}">${o.deliverCustomerName}</a>
														</td>
														<td class="text-center">${o.deliverCustomerAddress}</td>
														<td class="text-center">${o.deliverCustomerPhone}</td>
														<td class="text-center"><fmt:formatDate value='${o.orderDate}'  type='date' pattern='dd/MM/yyyy'/></td>
														<td class="text-center position-relative"><c:choose>
															<c:when test="${o.status == true}">
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
														</c:choose></td>
														<td class="text-center">${o.totalPrice}</td>
														<td class="text-center">
															<a href="${pageContext.servletContext.contextPath}/admin/user/detail?id=${o.customer.user.id}">
																	${o.customer.firstName} ${o.customer.lastName}
															</a>

														</td>
															<%--																<td class="text-center">--%>
															<%--&lt;%&ndash;																	<a&ndash;%&gt;--%>
															<%--&lt;%&ndash;																	href="${pageContext.servletContext.contextPath}/admin/order/detail?id=${o.id}"&ndash;%&gt;--%>
															<%--&lt;%&ndash;																	class="rounded-circle btn btn-sm btn-primary"&ndash;%&gt;--%>
															<%--&lt;%&ndash;																	title="Change Password"> <i class="far fa-eye"></i>&ndash;%&gt;--%>
															<%--&lt;%&ndash;																</a>&ndash;%&gt;--%>
															<%--																	<a  id="${u.id}"--%>
															<%--																	class="rounded-circle btn btn-sm btn-info" title="Edit">--%>
															<%--																		<i class="fas fa-pencil-alt"></i>--%>
															<%--																</a></td>--%>

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
						<!-- List Content -->
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