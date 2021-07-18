<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page import="java.util.List"%>
<%@ page import="com.coeding.entity.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
							<h1>User Detail</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a
									href="${pageContext.servletContext.contextPath}/admin">Home</a></li>
								<li class="breadcrumb-item active">User Detail</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<!-- Default box -->
				<div class="card card-solid">
					<div class="card-body">
						<div class="row">
							<nav class="w-100 mb-3">
								<div class="nav nav-tabs" id="product-tab" role="tablist">
									<a class="nav-item nav-link active" id="product-desc-tab"
										data-toggle="tab" href="#product-desc" role="tab"
										aria-controls="product-desc" aria-selected="true">User Details</a>
									<c:if test="${userDetail.role == 'ROLE_USER'}">
										<a class="nav-item nav-link" id="product-desc-tab1"
											data-toggle="tab" href="#product-desc1" role="tab"
											aria-controls="product-desc1" aria-selected="false">Customer Details</a>
										<a class="nav-item nav-link" id="product-comments-tab"
											data-toggle="tab" href="#product-comments" role="tab"
											aria-controls="product-comments" aria-selected="false">Order Details
										</a>
										<a class="nav-item nav-link" id="product-rating-tab"
											data-toggle="tab" href="#product-rating" role="tab"
											aria-controls="product-rating" aria-selected="false">Payment Details
										</a>
									</c:if>
								</div>
							</nav>
							<div class="tab-content w-100" id="nav-tabContent">
								<div class="tab-pane fade show active" id="product-desc"
									role="tabpanel" aria-labelledby="product-desc-tab">
									<div class="card-body mt-3">
										<div class="form-group row" style="">
											<label for="name"
												class="col-sm-2 col-form-label text-sm-right required">UserName</label>
											<div class="col-xs-12 col-sm-8">
												<input type="text" id="username" name="username"
													value="${userDetail.username}"
													class="form-control form-control-sm" disabled>
											</div>
										</div>
										<div class="form-group row" style="">
											<label for="email"
												class="col-sm-2 col-form-label text-sm-right required">Email</label>
											<div class="col-xs-12 col-sm-8">
												<input type="text" id="email" name="email"
													value="${userDetail.email}"
													class="form-control form-control-sm" disabled>
											</div>
										</div>
										<div class="form-group row">
											<label for="status"
												class="col-sm-2 col-form-label text-sm-right">Status</label>
											<div class="col-xs-12 col-sm-8">
												<select id="enabled" name="enabled"
													class="custom-select custom-select-sm">
													<option>${userDetail.enabled ? "Active" :"InActive"}</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="role"
												class="col-sm-2 col-form-label text-sm-right">Role</label>
											<div class="col-xs-12 col-sm-8">
												<select id="role" name="role"
													class="custom-select custom-select-sm">
													<option>${fn:substring(userDetail.role, 5, fn:length(userDetail.role))}</option>
												</select>
											</div>
										</div>
<%--										<c:if test="${userDetail.role == 'ROLE_USER'}">--%>
<%--											<div class="form-group row">--%>
<%--												<label for="name"--%>
<%--													class="col-sm-2 col-form-label text-sm-right required">Name</label>--%>
<%--												<div class="col-xs-12 col-sm-8">--%>
<%--													<input type="text" id="name" name="name"--%>
<%--														value="${customer.firstName} ${customer.lastName}"--%>
<%--														class="form-control form-control-sm" disabled>--%>
<%--												</div>--%>
<%--											</div>--%>
<%--											<div class="form-group row">--%>
<%--												<label for="phone"--%>
<%--													class="col-sm-2 col-form-label text-sm-right required">Phone</label>--%>
<%--												<div class="col-xs-12 col-sm-8">--%>
<%--													<input type="text" id="phone" name="phone"--%>
<%--														value="${customer.phone}"--%>
<%--														class="form-control form-control-sm" disabled>--%>
<%--												</div>--%>
<%--											</div>--%>
<%--											<div class="form-group row">--%>
<%--												<label for="address"--%>
<%--													class="col-sm-2 col-form-label text-sm-right required">Address</label>--%>
<%--												<div class="col-xs-12 col-sm-8">--%>
<%--													<input type="text" id="address" name="address"--%>
<%--														value="${customer.address}"--%>
<%--														class="form-control form-control-sm" disabled>--%>
<%--												</div>--%>
<%--											</div>--%>
<%--										</c:if>--%>
									</div>
									<div class="card-footer">
										<div class="col-12 col-sm-8 offset-sm-2">
											<a class="btn btn-sm btn-danger mr-1"
												href="${pageContext.servletContext.contextPath}/admin/user">Comback
												Home</a>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="product-desc1"
									role="tabpanel" aria-labelledby="product-desc-tab1">
									<div class="card-body">
										<div class="form-group row">
											<label for="name"
												class="col-sm-2 col-form-label text-sm-right required">Name</label>
											<div class="col-xs-12 col-sm-8">
												<input type="text" id="name" name="name"
													value="${customer.firstName} ${customer.lastName}"
													class="form-control form-control-sm" disabled>
											</div>
										</div>
										<div class="form-group row">
											<label for="phone"
												class="col-sm-2 col-form-label text-sm-right required">Phone</label>
											<div class="col-xs-12 col-sm-8">
												<input type="text" id="phone" name="phone"
													value="${customer.phone}"
													class="form-control form-control-sm" disabled>
											</div>
										</div>
										<div class="form-group row">
											<label for="address"
												class="col-sm-2 col-form-label text-sm-right required">Address</label>
											<div class="col-xs-12 col-sm-8">
												<input type="text" id="address" name="address"
													value="${customer.address}"
													class="form-control form-control-sm" disabled>
											</div>
										</div>

									</div>
									<div class="card-footer">
										<div class="col-12 col-sm-8 offset-sm-2">
											<a class="btn btn-sm btn-danger mr-1"
												href="${pageContext.servletContext.contextPath}/admin/user">Comback
												Home</a>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="product-comments" role="tabpanel"
									aria-labelledby="product-comments-tab">
									<table id="example1"
										class="table table-bordered table-striped dataTable dtr-inline"
										role="grid" aria-describedby="example1_info">
										<thead>
											<tr role="row">
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1">Order Id</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1">Product Details</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1">Order Date</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1">Amount</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1">Status</th>
											</tr>
										</thead>
										<tbody>
											<c:if
												test="${not empty customerOrders || customerOrders !=null}">
												<c:forEach items="${customerOrders}" var="order">
													<tr>
														<td><a
															href="${pageContext.servletContext.contextPath}/admin/order/detail?id=${order.id}">${order.id}</a></td>
														<td><c:forEach items="${order.cartItems}" var="items"
																varStatus="loop">
																<a
																	href="${pageContext.servletContext.contextPath}/admin/product/detail?id=${items.product.id}">${items.product.productName}</a>
																<c:if test="${not loop.last}">,&nbsp</c:if>
															</c:forEach></td>
														<td><fmt:formatDate value='${order.orderDate}'
																type='date' pattern='dd/MM/yyyy' /></td>
														<td>$ <fmt:formatNumber type="number"
																value="${order.totalPrice}" /></td>
														<c:choose>
															<c:when test="${order.status == true}">
																<td class='ps-tag ps-tag--in-stock '
																	style='color: #669900'>Success</td>
															</c:when>
															<c:otherwise>
																<td class='ps-tag ps-tag--in-stock text-danger'>Cancel</td>
															</c:otherwise>
														</c:choose>
													</tr>
												</c:forEach>
											</c:if>
										</tbody>
										<tfoot>
										</tfoot>
									</table>
								</div>
								<div class="tab-pane fade" id="product-rating" role="tabpanel"
									aria-labelledby="product-rating-tab">
									<table id="example2"
										class="table table-bordered table-striped dataTable dtr-inline"
										role="grid" aria-describedby="example2_info">
										<thead>
											<tr role="row">
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1">Id</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1">Payment Method</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1">Amount</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1">Payment Date</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1">Status</th>
											</tr>
										</thead>
										<tbody>
											<c:if test="${payments != null}">
												<c:forEach items="${payments}" var="payment">
													<tr>
														<td><a
															href="${pageContext.servletContext.contextPath}/admin/payment/detail?id=${payment.id}">${payment.id}</a></td>
														<td>${payment.paymentMethod }</td>
														<td>$ <fmt:formatNumber type="number"
																value="${payment.amount}" /></td>
														<td><fmt:formatDate value='${payment.paymentDate}'
																type='date' pattern='dd/MM/yyyy' /></td>
														<c:choose>
															<c:when test="${payment.status == true}">
																<td class='ps-tag ps-tag--in-stock '
																	style='color: #669900'>Success</td>
															</c:when>
															<c:otherwise>
																<td class='ps-tag ps-tag--in-stock text-danger'>Cancel</td>
															</c:otherwise>
														</c:choose>
													</tr>
												</c:forEach>
											</c:if>
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

			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<jsp:include page="../components/footer.jsp"></jsp:include>
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
		$(function() {
			$("#example2").DataTable(
					{
						"responsive" : true,
						"lengthChange" : false,
						"autoWidth" : false,
						"buttons" : [ "copy", "csv", "excel", "pdf", "print",
								"colvis" ]
					}).buttons().container().appendTo(
					'#example2_wrapper .col-md-6:eq(0)');
		});
	</script>
</body>
</html>