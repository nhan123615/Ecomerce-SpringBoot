<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="components/head.jsp"></jsp:include>
<jsp:include page="components/nav-bar.jsp"></jsp:include>
<jsp:include page="components/side-bar.jsp"></jsp:include>
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
						<form
							action="${pageContext.servletContext.contextPath}/admin/product/new"
							method="post" enctype="multipart/form-data">
							<div class="card-body">
								<div class="form-group">
									<label for="productName">Name</label> <input type="text"
										class="form-control" id="productName" name="productName"
										placeholder="Enter name" maxlength="20" required="required">
								</div>
								<div class="form-group">
									<label for="price">Price</label> <input type="number"
										class="form-control" id="price" name="price"
										placeholder="Enter price" min="0" step="any"
										pattern="[-+]?[0-9]*[.,]?[0-9]+" required="required">
								</div>
								<div class="form-group">
									<label for="stockQuantity">Stock quantity</label> <input
										type="number" class="form-control" id="stockQuantity"
										name="stockQuantity" placeholder="Enter stock quantity"
										min="0" required="required">
								</div>
								<div class="form-group">
									<label>Color</label> <select multiple="multiple"
										name="productColor" class="form-control">
										<option value="black">black</option>
										<option value="white">white</option>
										<option value="red">red</option>
										<option value="yellow">yellow</option>
									</select>
								</div>
								<div class="form-group">
									<label>Brand</label> <select class="form-control"
										name="brand">
										<option selected="selected" disabled="disabled">Select brand</option>
										<c:forEach var="brand" items="${brands }">
											<option value="${brand.id }">${brand.name }</option>
										</c:forEach>
									</select>
								</div>
								<div class="form-group">
									<label>Category</label> <select class="form-control" id="category"
										name="category" required="required">
										<option selected="selected" disabled="disabled">Select category</option>
										<c:forEach var="category" items="${categories }">
											<option value="${category.id }">${category.name }</option>
										</c:forEach>
									</select>
								</div>
								<div class="form-group">
									<label>Type</label>
									<select class="form-control" id="type" name="type">
										<option selected="selected" disabled="disabled">Select type</option>
									</select>
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
										name="img" required="required" multiple="multiple">
								</div>
								<div class="form-group">
									<textarea id="description" name="description"></textarea>
								</div>

							</div>
							<!-- /.card-body -->

							<div class="card-footer">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</form>
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
 <jsp:include page="components/footer.jsp"></jsp:include>