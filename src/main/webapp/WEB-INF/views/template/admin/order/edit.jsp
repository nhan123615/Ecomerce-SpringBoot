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
		<div class="content-wrapper" style="min-height: 59.3646px;">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0 text-dark">User Manager : Edit</h1>
						</div>
					</div>
				</div>
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<section class="content">
						<div class="container-fluid">
							<!-- SHOW ERRORS FORM -->
							<!-- END SHOW ERRORS FORM -->
							<div class="card card-info card-outline">
								<form id="editUser"
									action="${pageContext.servletContext.contextPath}/admin/order/saveUpdate"
									method="post">
									<input type="hidden" id="id" name="id" value="${orderDetail.id}">
									<div classd="card-body">
										<div class="form-group row" style="">
											<label for="name"
												class="col-sm-2 col-form-label text-sm-right required">Deliver Customer Name</label>
											<div class="col-xs-12 col-sm-8">
												<input type="text" id="username" name="username"
													value="${orderDetail.deliverCustomerName}"
													class="form-control form-control-sm" disabled>
											</div>
										</div>
										<div class="form-group row" style="">
											<label for="email"
												class="col-sm-2 col-form-label text-sm-right required">Deliver Customer Address</label>
											<div class="col-xs-12 col-sm-8">
												<input type="text" id="email" name="email"
													value="${orderDetail.deliverCustomerAddress}"
													class="form-control form-control-sm" disabled>
											</div>
										</div>
										<div class="form-group row" style="">
											<label for="email"
												class="col-sm-2 col-form-label text-sm-right required">Order Date</label>
											<div class="col-xs-12 col-sm-8">
												<input type="text" id="email" name="email"
													value="${orderDetail.orderDate}"
													class="form-control form-control-sm" disabled>
											</div>
										</div>
										<div class="form-group row">
											<label for="status"
												class="col-sm-2 col-form-label text-sm-right">Status</label>
											<div class="col-xs-12 col-sm-8">
												<select id="status" name="status"
													class="custom-select custom-select-sm">
													<option value="default">- Select Status -</option>
													<c:choose>
														<c:when test="${orderDetail.status == true}">
															<option value="1" selected="selected">Active</option>
															<option value="0">Inactive</option>
														</c:when>

														<c:otherwise>
															<option value="0" selected="selected">Inactive</option>
															<option value="1">Active</option>
														</c:otherwise>
													</c:choose>
												</select>
											</div>
										</div>
									</div>
									<div class="card-footer">
										<div class="col-12 col-sm-8 offset-sm-2">
											<button class="btn btn-sm btn-success mr-1" href="#">Save</button>
											<a class="btn btn-sm btn-danger mr-1"
												href="${pageContext.servletContext.contextPath}/admin/user">Cancel</a>
										</div>
									</div>
								</form>
							</div>
						</div>
					</section>
				</div>
			</section>
			<!-- /.content -->
		</div>
		<jsp:include page="../components/footer.jsp"></jsp:include>
	</div>
	<!-- ./wrapper -->
	<jsp:include page="../components/script.jsp"></jsp:include>
</body>
</html>