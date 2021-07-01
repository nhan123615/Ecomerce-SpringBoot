<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../components/head.jsp"></jsp:include>
<jsp:include page="../components/nav-bar.jsp"></jsp:include>
<jsp:include page="../components/side-bar.jsp"></jsp:include>
<!-- @author: Lam Cong Hau -->
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper" style="min-height: 1342.88px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>Add Product Form</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">Add Product Form</li>
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
				<!-- left column -->
				<div class="col-md-12">
					<!-- general form elements -->
					<div class="card card-primary">
						<div class="card-header">
							<h3 class="card-title">Product Form</h3>
						</div>
						<!-- /.card-header -->
						<!-- form start -->
						<form id="frmAddProduct"
							action="${pageContext.servletContext.contextPath}/admin/product/new"
							method="post" enctype="multipart/form-data">
							<div class="card-body">
								<div class="form-group">
									<label for="productName">Name</label> <input type="text"
										class="form-control" id="productName" name="productName"
										placeholder="Enter name" maxlength="50"> <span
										id="productName-error" class="error invalid-feedback"></span>
								</div>
								<div class="form-group">
									<label for="price">Price</label> <input type="number"
										class="form-control" id="price" name="price"
										placeholder="Enter price"> <span
										id="price-error" class="error invalid-feedback"></span>
								</div>
								<div class="form-group">
									<label for="stockQuantity">Stock quantity</label> <input
										type="number" class="form-control" id="stockQuantity"
										name="stockQuantity" placeholder="Enter stock quantity"> <span
										id="stockQuantity-error" class="error invalid-feedback"></span>
								</div>
								<div class="form-group">
									<label>Color</label> <select multiple="multiple"
										id="productColor" name="productColor" class="form-control">
										<option value="black">black</option>
										<option value="white">white</option>
										<option value="red">red</option>
										<option value="yellow">yellow</option>
									</select> <span id="productColor-error" class="error invalid-feedback"></span>
								</div>
								<div class="form-group">
									<label>Brand</label> <select id="brand" class="form-control"
										name="brand">
										<option value="-1" selected="selected">Select brand</option>
										<c:forEach var="brand" items="${brands }">
											<option value="${brand.id }">${brand.name }</option>
										</c:forEach>
									</select> <span id="brand-error" class="error invalid-feedback"></span>
								</div>
								<div class="form-group">
									<label>Category</label> <select class="form-control"
										id="category" name="category" required="required">
										<option value="-1" selected="selected">Select
											category</option>
										<c:forEach var="category" items="${categories }">
											<option value="${category.id }">${category.name }</option>
										</c:forEach>
									</select> <span id="category-error" class="error invalid-feedback"></span>
								</div>
								<div class="form-group">
									<label>Type</label> <select class="form-control" id="type"
										name="type">
									</select> <span id="type-error" class="error invalid-feedback"></span>
								</div>
								<div class="form-group">
									<div class="custom-control custom-checkbox">
										<input class="custom-control-input" type="checkbox"
											id="customCheckbox2" checked name="enabled"> <label
											for="customCheckbox2" class="custom-control-label">Enable</label>
									</div>
								</div>
								<div class="form-group">
									<label for="images">Image</label> <br /> <input type="file"
										id="img" name="img" multiple="multiple">
									<div id="img-successful" style="color: green;"></div>
									<div id="img-error" style="color: red;"></div>
								</div>
								<div class="form-group">
									<textarea id="description" name="description"></textarea>
								</div>

							</div>
							<!-- /.card-body -->
						</form>
						<div class="card-footer">
							<button id="btnAddProduct" type="submit" class="btn btn-primary">Submit</button>
						</div>
					</div>
					<!-- /.card -->

					<!-- general form elements -->

					<!-- /.card -->

					<!-- Input addon -->

					<!-- /.card -->
					<!-- Horizontal Form -->

					<!-- /.card -->

				</div>
				<!--/.col (left) -->
				<!-- right column -->

				<!--/.col (right) -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->
<jsp:include page="../components/footer.jsp"></jsp:include>