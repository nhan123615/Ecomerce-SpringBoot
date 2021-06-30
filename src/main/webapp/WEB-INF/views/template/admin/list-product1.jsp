<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="components/head.jsp"></jsp:include>
<jsp:include page="components/nav-bar.jsp"></jsp:include>
<jsp:include page="components/side-bar.jsp"></jsp:include>
<div class="content-wrapper" style="min-height: 1299.69px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>Product list</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">Product list</li>
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
							<h3 class="card-title">Product list</h3>
						</div>
						<!-- /.card-header -->
						<div class="card-body">
							<div id="example1_wrapper"
								class="dataTables_wrapper dt-bootstrap4">
								<div class="row">
									<div class="col-sm-3">
										<a
											href="${pageContext.servletContext.contextPath}/admin1/product/new"
											class="btn btn-success">Add product</a>
									</div>
									<div class="col-sm-12">
										<table id="example1"
											class="table table-bordered table-striped dataTable dtr-inline"
											role="grid" aria-describedby="example1_info">
											<thead>
												<tr role="row">
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1">Id</th>
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1">Name</th>
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1">Status</th>
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1">Price</th>
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1">Color</th>
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1">Stock quantity</th>
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1">Date update</th>
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1">Brand</th>
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1">Category</th>
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1">Type</th>
													<th class="sorting" tabindex="0" aria-controls="example1"
														rowspan="1" colspan="1">Action</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="product" items="${list }">
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
															class="btn btn-primary btn-sm" href="${pageContext.request.contextPath}/admin1/product/detail?id=${product.id}"><i
																class="fas fa-folder"></i>View</a> <a
															class="btn btn-info btn-sm" href="${pageContext.request.contextPath}/admin1/product/edit?id=${product.id}"><i
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
<jsp:include page="components/footer.jsp"></jsp:include>