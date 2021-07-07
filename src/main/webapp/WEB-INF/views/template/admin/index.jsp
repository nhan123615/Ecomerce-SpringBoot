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
									<h3>150</h3>

									<p>New Orders</p>
								</div>
								<div class="icon">
									<i class="ion ion-bag"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i
									class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box bg-success">
								<div class="inner">
									<h3>53</h3>

									<p>New Contact</p>
								</div>
								<div class="icon">
									<i class="ion ion-stats-bars"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i
									class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box bg-warning">
								<div class="inner">
									<h3>44</h3>

									<p>User Registrations</p>
								</div>
								<div class="icon">
									<i class="ion ion-person-add"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i
									class="fas fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box bg-danger">
								<div class="inner">
									<h3>65</h3>

									<p>New Subscribers</p>
								</div>
								<div class="icon">
									<i class="ion ion-pie-graph"></i>
								</div>
								<a href="#" class="small-box-footer">More info <i
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
										<a href="javascript:void(0);">View Report</a>
									</div>
								</div>
								<div class="card-body">
									<div class="d-flex">
										<p class="d-flex flex-column">
											<span class="text-bold text-lg">$18,230.00</span> <span>Sales
												Over Time</span>
										</p>
										<p class="ml-auto d-flex flex-column text-right">
											<span class="text-success"> <i class="fas fa-arrow-up"></i>
												33.1%
											</span> <span class="text-muted">Since last month</span>
										</p>
									</div>
									<!-- /.d-flex -->

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
	<script
		src="${pageContext.servletContext.contextPath}/dist/js/pages/dashboard3.js"></script>
</body>
</html>