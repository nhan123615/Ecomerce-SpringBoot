<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<h1>Edit Product Form</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">Edit Product Form</li>
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
							action="${pageContext.servletContext.contextPath}/admin/product/update"
							method="post" enctype="multipart/form-data">
							<div class="card-body">

								<div class="form-group">
									<label for="productName">Name</label> <input type="hidden"
										id="id" name="id" value="${product.id }"> <input
										type="text" class="form-control" id="productName"
										name="productName" placeholder="Enter name" maxlength="20"
										required="required" value="${product.productName }">
								</div>
								<div class="form-group">
									<label for="price">Price</label> <input type="number"
										class="form-control" id="price" name="price"
										placeholder="Enter price" min="0" step="any"
										pattern="[-+]?[0-9]*[.,]?[0-9]+" required="required"
										value="${product.price }">
								</div>
								<div class="form-group">
									<label for="stockQuantity">Stock quantity</label> <input
										type="number" class="form-control" id="stockQuantity"
										name="stockQuantity" placeholder="Enter stock quantity"
										min="0" required="required" value="${product.stockQuantity }">
								</div>
								<div class="form-group">
									<label>Color</label> <select multiple="multiple"
										name="productColor" class="form-control">
										<option value="black"
											<c:if test="${black != null}">selected</c:if>>black</option>
										<option value="white"
											<c:if test="${white != null}">selected</c:if>>white</option>
										<option value="red"
											<c:if test="${red != null}">selected</c:if>>red</option>
										<option value="yellow"
											<c:if test="${yellow != null}">selected</c:if>>yellow</option>
									</select>
								</div>
								<div class="form-group">
									<label>Brand</label> <select class="form-control" name="brand">
										<option selected="selected" disabled="disabled">Select
											brand</option>
										<c:forEach var="brand" items="${brands }">
											<c:choose>
												<c:when test="${brand.id == product.brand.id}">
													<option selected="selected" value="${brand.id }">${brand.name }</option>
												</c:when>
												<c:otherwise>
													<option value="${brand.id }">${brand.name }</option>
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</select>
								</div>
								<div class="form-group">
									<label>Category</label> <select class="form-control"
										id="category" name="category" required="required">
										<option selected="selected" disabled="disabled">Select
											category</option>
										<c:forEach var="category" items="${categories }">
											<c:choose>
												<c:when test="${category.id == product.category.id}">
													<option selected="selected" value="${category.id }">${category.name }</option>
												</c:when>
												<c:otherwise>
													<option value="${category.id }">${category.name }</option>
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</select>
								</div>
								<div class="form-group">
									<label>Type</label> <select class="form-control" id="type"
										name="type">
										<option selected="selected" disabled="disabled">Select
											type</option>
										<c:forEach var="type" items="${types }">
											<c:if test="${type.id == product.type.id}">
												<option selected="selected" value="${type.id }">${type.name }</option>
											</c:if>
										</c:forEach>
									</select>
								</div>
								<div class="form-group">
									<div class="custom-control custom-checkbox">
										<input class="custom-control-input" type="checkbox"
											id="customCheckbox2"
											<c:if test="${product.enabled == true}">checked</c:if>
											name="enabled"> <label for="customCheckbox2"
											class="custom-control-label">Enable</label>
									</div>
								</div>
								<div class="form-group">
									<label for="images">Image</label> <br /> <input type="file" id="img"
										name="img" > <img
										src="${pageContext.request.contextPath}/admin/product/display/0&${product.id}"
										width="200" height="200" />
								</div>
								<div class="form-group">
									<label for="images">Image</label> <br /> <input type="file" id="img1"
										name="img" > <img
										src="${pageContext.request.contextPath}/admin/product/display/1&${product.id}"
										width="200" height="200" />
								</div>
								<div class="form-group">
									<label for="images">Image</label> <br /> <input type="file" id="img2"
										name="img" > <img
										src="${pageContext.request.contextPath}/admin/product/display/2&${product.id}"
										width="200" height="200" />
								</div>
								<div class="form-group">
									<label for="images">Image</label> <br /> <input type="file" id="img3"
										name="img" > <img
										src="${pageContext.request.contextPath}/admin/product/display/3&${product.id}"
										width="200" height="200" />
								</div>
								<div class="form-group">
									<textarea id="description" name="description">${product.description }</textarea>
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