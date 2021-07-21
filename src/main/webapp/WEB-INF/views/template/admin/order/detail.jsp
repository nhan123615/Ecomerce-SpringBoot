<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page import="java.util.List"%>
<%@ page import="com.coeding.entity.User"%>
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
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>Order ID</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a >Home</a></li>
								<li class="breadcrumb-item active">Order Detail</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<!-- Default box -->
				<div class="card">
					<div class="card-header">
						<h3 class="card-title">Order Detail</h3>

						<div class="card-tools">
							<button type="button" class="btn btn-tool"
								data-card-widget="collapse" data-toggle="tooltip"
								title="Collapse">
								<i class="fas fa-minus"></i>
							</button>
							<button type="button" class="btn btn-tool"
								data-card-widget="remove" data-toggle="tooltip" title="Remove">
								<i class="fas fa-times"></i>
							</button>
						</div>
					</div>
					<div class="card-body">
						<div class="row">
							<div class="col-12 col-md-12 col-lg-8 order-2 order-md-1">
								<div class="row">
									<div class="col-12">
										<h4>Order ID</h4>
										<div class="post">
											<p>ID: ${orderDetail.id}
											<p>
											<p>Order Date: ${orderDetail.orderDate}</p>
										</div>

										<h4>Customer Infomation</h4>
										<div class="post">
											<p>ID: ${orderDetail.customer.id}</p>
											<p>Name:
												${orderDetail.deliverCustomerName}</p>
											<p>Phone: ${orderDetail.deliverCustomerPhone}</p>
											<p>Address:
												${orderDetail.deliverCustomerAddress}</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col-12 col-md-12 col-lg-4 order-1 order-md-2">
								<h3 class="text-primary">
									<i class="fas fa-paint-brush"></i> Order Detail
								</h3>
								<div class="text-muted">
									<c:forEach items="${orderDetail.cartItems}" var="od">
										<p class="text-sm">${od.product.productName}:
											${od.sellingQuantity} pcs</p>
									</c:forEach>
								</div>

								<ul class="list-unstyled">
									<li>Payment Method</br> <b>Cash</b>
									</li>
									</br>
									<li>Status</br> <b> <c:choose>
												<c:when test="${orderDetail.status == false}">
													<p>Inactive</p>
												</c:when>

												<c:otherwise>
													<p>Active</p>
												</c:otherwise>
											</c:choose>
									</b>
									</li>
								</ul>
								<div class="text-center mt-5 mb-3">
									<a href="${pageContext.servletContext.contextPath}/admin/order"
										class="btn btn-sm btn-warning">Back To Order List</a>
								</div>
							</div>
						</div>
					</div>
					<!-- /.card-body -->
				</div>
				<!-- /.card -->
			</section>
			<!-- /.content -->
		</div>
		<jsp:include page="../components/footer.jsp"></jsp:include>
	</div>
	<!-- ./wrapper -->
	<jsp:include page="../components/script.jsp"></jsp:include>
</body>
</html>