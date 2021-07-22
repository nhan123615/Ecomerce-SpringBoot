<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="components/head.jsp"></jsp:include>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">
		<!-- Preloader -->
		<div
			class="preloader flex-column justify-content-center align-items-center">
			<img class="animation__shake"
				src="${pageContext.servletContext.contextPath}/dist/img/angry-nerds-logo-2.png"
				alt="AdminLTELogo" height="260" width="260">

		</div>
		<jsp:include page="components/nav-bar.jsp"></jsp:include>
		<jsp:include page="components/side-bar.jsp"></jsp:include>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">Dashboard</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a
									href="${pageContext.servletContext.contextPath}/admin">Home</a></li>
								<li class="breadcrumb-item active">Dashboard</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<!-- Small boxes (Stat box) -->
					<div class="row">
						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box bg-info">
								<div class="inner">
									<h3>${numberNewOrder }</h3>

									<p>New Orders</p>
								</div>
								<div class="icon">
									<i class="ion ion-bag"></i>
								</div>
								<a href="${pageContext.servletContext.contextPath}/admin/order"
									class="small-box-footer">More info <i
									class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box bg-success">
								<div class="inner">
									<h3>${numberContact }</h3>

									<p>Total Contact</p>
								</div>
								<div class="icon">
									<i class="ion ion-stats-bars"></i>
								</div>
								<a href="${pageContext.servletContext.contextPath}/admin/contact"  class="small-box-footer">More info <i
									class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box bg-warning">
								<div class="inner">
									<h3>${numberUser }</h3>

									<p>Total User</p>
								</div>
								<div class="icon">
									<i class="ion ion-person-add"></i>
								</div>
								<a href="${pageContext.servletContext.contextPath}/admin/user"
									class="small-box-footer">More info <i
									class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box bg-danger">
								<div class="inner">
									<h3>${numberSub }</h3>

									<p>Total Subscribers</p>
								</div>
								<div class="icon">
									<i class="ion ion-pie-graph"></i>
								</div>
								<a
									href="${pageContext.servletContext.contextPath}/admin/subscriber"
									class="small-box-footer">More info <i
									class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
					</div>
					<!-- /.row -->
					<!-- Main row -->
					<div class="row">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-header border-0">
									<div class="d-flex justify-content-between">
										<h3 class="card-title">Sales</h3>
									</div>
								</div>
								<div class="card-body">
									<div class="d-flex">
										<p class="d-flex flex-column">
											<span class="text-bold text-lg">$${totalSales }</span> <span>Sales
												Over Time In This Year</span>
										</p>
										<p class="ml-auto d-flex flex-column text-right">
											<c:choose>
												<c:when test="${comparerByMonth > 0}">
													<span class="text-success"> <i
														class="fas fa-arrow-up"></i> ${comparerByMonth }%
													</span>
												</c:when>
												<c:when test="${comparerByMonth < 0}">
													<span class="text-success"> <i
														class="fas fa-arrow-down"></i> ${comparerByMonth }%
													</span>
												</c:when>
												<c:otherwise>
													<span class="text-success"> <i class="fas"></i>
														${comparerByMonth }%
													</span>
												</c:otherwise>
											</c:choose>
											<span class="text-muted">Since last month</span>
										</p>
									</div>
									<!-- /.d-flex -->
									<input type="hidden" id="priceLastYear"
										value="${priceLastYear }"> <input type="hidden"
										id="priceThisYear" value="${priceThisYear }">
									<div class="position-relative mb-4">
										<canvas id="sales-chart" height="200"></canvas>
									</div>

									<div class="d-flex flex-row justify-content-end">
										<span class="mr-2"> <i
											class="fas fa-square text-primary"></i> This year
										</span> <span> <i class="fas fa-square text-gray"></i> Last
											year
										</span>
									</div>
								</div>
							</div>
							<!-- /.card -->
						</div>
					</div>
					<!-- /.row (main row) -->
					<div class="row">
						<div class="col-12">
							<!-- /.card -->
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">Top 5 best selling products</h3>
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
															<th class="" tabindex="0" aria-controls="example1"
																rowspan="1" colspan="1">Id</th>
															<th class="" tabindex="0" aria-controls="example1"
																rowspan="1" colspan="1">Name</th>
															<th class="" tabindex="0" aria-controls="example1"
																rowspan="1" colspan="1">Status</th>
															<th class="" tabindex="0" aria-controls="example1"
																rowspan="1" colspan="1">Price</th>
															<th class="" tabindex="0" aria-controls="example1"
																rowspan="1" colspan="1">Color</th>
															<th class="" tabindex="0" aria-controls="example1"
																rowspan="1" colspan="1">Stock quantity</th>
															<th class="" tabindex="0" aria-controls="example1"
																rowspan="1" colspan="1">Date update</th>
															<th class="" tabindex="0" aria-controls="example1"
																rowspan="1" colspan="1">Brand</th>
															<th class="" tabindex="0" aria-controls="example1"
																rowspan="1" colspan="1">Category</th>
															<th class="" tabindex="0" aria-controls="example1"
																rowspan="1" colspan="1">Type</th>
															<th class="" tabindex="0" aria-controls="example1"
																rowspan="1" colspan="1">Action</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach var="product" items="${topProducts }">
															<tr>
																<td>${product.id }</td>
																<td>${product.productName }</td>
																<td>${product.enabled }</td>
																<td>${product.price }</td>
																<td>${product.productColor }</td>
																<td>${product.stockQuantity }</td>
																<td>${product.updated }</td>
																<td>${product.brand.name }</td>
																<td>${product.category.name }</td>
																<td>${product.type.name }</td>
																<td class="project-actions text-center"><a
																	class="btn btn-primary btn-sm"
																	href="${pageContext.request.contextPath}/admin/product/detail?id=${product.id}"><i
																		class="fas fa-folder"></i>View</a> <a
																	class="btn btn-info btn-sm"
																	href="${pageContext.request.contextPath}/admin/product/edit?id=${product.id}"><i
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
		<!-- /.content-wrapper -->
		<jsp:include page="components/footer.jsp"></jsp:include>
		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->
	<jsp:include page="components/script.jsp"></jsp:include>
	<!-- ChartJS -->
	<script
		src="${pageContext.servletContext.contextPath}/plugins-admin/chart.js/Chart.min.js"></script>
	<script>
		$(function() {
			'use strict'

			var ticksStyle = {
				fontColor : '#495057',
				fontStyle : 'bold'
			}
			var mode = 'index'
			var intersect = true

			var priceLastYear = $('#priceLastYear');
			var arrLastYear = priceLastYear[0].value.replace("[", "").replace(
					"]", "").split(",");

			var priceThisYear = $('#priceThisYear');
			var arrThisYear = priceThisYear[0].value.replace("[", "").replace(
					"]", "").split(",");

			var $salesChart = $('#sales-chart');
			// eslint-disable-next-line no-unused-vars
			var salesChart = new Chart($salesChart, {
				type : 'bar',
				data : {
					labels : [ 'JAN', 'FEB', 'MAR', 'APR', 'MAY', 'JUN', 'JUL',
							'AGU', 'SEP', 'OCT', 'NOV', 'DEC' ],
					datasets : [
							{
								backgroundColor : '#007bff',
								borderColor : '#007bff',
								data : [ arrThisYear[0], arrThisYear[1],
										arrThisYear[2], arrThisYear[3],
										arrThisYear[4], arrThisYear[5],
										arrThisYear[6], arrThisYear[7],
										arrThisYear[8], arrThisYear[9],
										arrThisYear[10], arrThisYear[11] ]
							},
							{
								backgroundColor : '#ced4da',
								borderColor : '#ced4da',
								data : [ arrLastYear[0], arrLastYear[1],
										arrLastYear[2], arrLastYear[3],
										arrLastYear[4], arrLastYear[5],
										arrLastYear[6], arrLastYear[7],
										arrLastYear[8], arrLastYear[9],
										arrLastYear[10], arrLastYear[11] ]
							} ]
				},
				options : {
					maintainAspectRatio : false,
					tooltips : {
						mode : mode,
						intersect : intersect
					},
					hover : {
						mode : mode,
						intersect : intersect
					},
					legend : {
						display : false
					},
					scales : {
						yAxes : [ {
							// display: false,
							gridLines : {
								display : true,
								lineWidth : '4px',
								color : 'rgba(0, 0, 0, .2)',
								zeroLineColor : 'transparent'
							},
							ticks : $.extend({
								beginAtZero : true,

								// Include a dollar sign in the ticks
								callback : function(value) {
									if (value >= 1000) {
										value /= 1000
										value += 'k'
									}

									return '$' + value
								}
							}, ticksStyle)
						} ],
						xAxes : [ {
							display : true,
							gridLines : {
								display : false
							},
							ticks : ticksStyle
						} ]
					}
				}
			})
		});
	</script>
	<script>
		$(function() {
			$("#example1").DataTable(
					{
						"sort" : false,
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