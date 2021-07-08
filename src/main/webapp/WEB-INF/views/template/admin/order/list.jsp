`<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<jsp:include page="../components/head.jsp"></jsp:include>
<jsp:include page="../components/nav-bar.jsp"></jsp:include>
<jsp:include page="../components/side-bar.jsp"></jsp:include>
<%@ page import="java.util.List"%>
<%@ page import="com.coeding.entity.CustomerOrder"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="content-wrapper" style="min-height: 116.365px;">
	<!-- Content Header (Page header) -->
	<div class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1 class="m-0 text-dark">Order Manager :: List</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- /.content-header -->

	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
		<!-- Message -->
			<!-- <div class="alert alert-success alert-dismissible">
				<button type="button" class="close" data-dismiss="alert"
					aria-hidden="true">x</button>
				<h5>
					Success!
				</h5>
				<ul class="list-unstyled mb-0">
					<li class="text-black">Update Success!</li>
				</ul>
			</div> -->
		<!-- end Message -->
			<!-- List -->
			<div class="card card-info card-outline">
				<div class="card-header">
					<h4 class="card-title">List</h4>
					<div class="card-tools">
						<a href="${pageContext.servletContext.contextPath}/admin/user"
							class="btn btn-tool"><i class="fas fa-sync"></i></a>
						<button type="button" class="btn btn-tool"
							data-card-widget="collapse" data-toggle="tooltip"
							title="Collapse">
							<i class="fas fa-minus"></i>
						</button>
					</div>
				</div>
				<div class="card-body">
					<!-- Control -->
					<div
						class="d-flex flex-wrap align-items-center justify-content-between mb-2">
						<div class="mb-1">
							<form action="" method="GET" name="search-form">
								<div class="input-group">
									<input type="text" class="form-control form-control-sm"
										name="search_value" placeholder="Search..." value=""
										style="min-width: 200px">
									<div class="input-group-append">
										<button type="button" class="btn btn-sm btn-danger"
											id="btn-clear-search">Clear</button>
										<button type="submit" class="btn btn-sm btn-info"
											id="btn-search">Search</button>
									</div>
								</div>
							</form>
						</div>
						<div class="mb-2">
							<a href="" class="btn btn-sm btn-info"> Copy </a> <a href=""
								class="btn btn-sm btn-info"> CSV </a> <a href=""
								class="btn btn-sm btn-info"> Excel </a> <a href=""
								class="btn btn-sm btn-info"> PDF </a> <a href=""
								class="btn btn-sm btn-info"> Print </a>
						</div>
					</div>
					<!-- List Content -->
					<form action="" method="GET" class="table-responsive"
						id="form-table">
						<table
							class="table table-bordered table-hover text-nowrap btn-table mb-0">
							<thead>
								<tr>
									<th class="text-center">ID</th>
									<th class="text-center">Delivery Custom Address</th>
									<th class="text-center">Delivery Custom Name</th>
									<th class="text-center">Delivery Custom Phone</th>
									<th class="text-center">Order Date</th>
									<th class="text-center">Status</th>
									<th class="text-center">Total Price</th>
									<th class="text-center">Custom Id</th>
									<th class="text-center">Action</th>
								</tr>
							</thead>
							<tbody>
								<!-- SHOW DỮ LIỆU  -->
								<%
									List<CustomerOrder> orderList = (List<CustomerOrder>)request.getAttribute("orderList");
									System.out.print(orderList);
								%>

								<c:forEach items="${orderList}" var="o">
									<tr>
										<td class="text-center">${o.id}</td>
										<td class="text-center">${o.deliverCustomerAddress}</td>
										<td class="text-center">${o.deliverCustomerName}</td>
										<td class="text-center">${o.deliverCustomerPhone}</td>
										<td class="text-center">${o.orderDate}</td>
										<td class="text-center position-relative">
											<c:choose>
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
											</c:choose>
										</td>
										<td class="text-center">${o.totalPrice}</td>
										<td class="text-center">${o.customer.id}</td>
										<td class="text-center">
											<a href="${pageContext.servletContext.contextPath}/admin/order/detail?id=${o.id}" class="rounded-circle btn btn-sm btn-primary" title="Change Password">
												<i class="far fa-eye"></i>
											</a> 
											<a href="#" id="${u.id}" class="rounded-circle btn btn-sm btn-info" title="Edit">
												<i class="fas fa-pencil-alt"></i>
											</a>
										</td>
									</tr>
								</c:forEach>



								<!-- END SHOW DỮ LIỆU  -->
							</tbody>
						</table>
					</form>
				</div>
				<ul style="padding: 20px"
					class="pagination pagination-sm m-0 float-right">
					<li class="page-item"><a href="" class="page-link"><i
							class="fas fa-angle-double-left"></i></a></li>
					<li class="page-item"><a href="" class="page-link"><i
							class="fas fa-angle-left"></i></a></li>
					<li class="page-item active"><a class="page-link" href="#"
						onclick="javascript:changePage(1)">1</a></li>
					<a class="page-link" href="#" onclick="javascript:changePage(2)">2</a>
					<a class="page-link" href="#" onclick="javascript:changePage(3)">3</a>
					<li class="page-item"><a class="page-link"
						onclick="javascript:changePage(2)" href="#"><i
							class="fas fa-angle-right"></i></a></li>
					<li class="page-item"><a class="page-link" href="#"
						onclick="javascript:changePage(3)"><i
							class="fas fa-angle-double-right"></i></a></li>
					<div style="margin-left: 20px" class="limit">Page 1 of 3</div>
				</ul>
			</div>
		</div>
	</section>
	<!-- /.content -->
</div>

<jsp:include page="../components/footer.jsp"></jsp:include>