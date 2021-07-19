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
		<!-- @author: Lam Cong Hau -->
		<div class="content-wrapper" style="min-height: 1602px;">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>Product Detail</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a
									href="${pageContext.servletContext.contextPath}/admin">Home</a></li>
								<li class="breadcrumb-item active">Product Detail</li>
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
							<div class="col-12 col-sm-6">
								<h3 class="d-inline-block d-sm-none">${product.productName }</h3>
								<div class="col-12">
									<img
										src="${pageContext.request.contextPath}/admin/product/display/0&${product.id}"
										class="product-image" alt="Product Image"
										style="width: 1200px; height: 500px">
								</div>
								<div class="col-12 product-image-thumbs">
									<div class="product-image-thumb">
										<img
											src="${pageContext.request.contextPath}/admin/product/display/0&${product.id}"
											alt="Product Image">
									</div>
									<div class="product-image-thumb">
										<img
											src="${pageContext.request.contextPath}/admin/product/display/1&${product.id}"
											alt="Product Image">
									</div>
									<div class="product-image-thumb">
										<img
											src="${pageContext.request.contextPath}/admin/product/display/2&${product.id}"
											alt="Product Image">
									</div>
									<div class="product-image-thumb">
										<img
											src="${pageContext.request.contextPath}/admin/product/display/3&${product.id}"
											alt="Product Image">
									</div>
								</div>
							</div>
							<div class="col-12 col-sm-6">
								<h3 class="my-3">${product.productName }</h3>
								<hr>
								<h4>Available Colors</h4>
								<div class="btn-group btn-group-toggle" data-toggle="buttons">
									<c:if test="${black != null}">
										<label class="btn btn-default text-center"> <input
											type="radio" name="color_option" id="color_option_a1"
											autocomplete="off"> Black <br> <i
											class="fas fa-circle fa-2x text-black"></i>
										</label>
									</c:if>
									<c:if test="${white != null}">
										<label class="btn btn-default text-center"> <input
											type="radio" name="color_option" id="color_option_a1"
											autocomplete="off"> White <br> <i
											class="fas fa-circle fa-2x text-white"></i>
										</label>
									</c:if>
									<c:if test="${red != null}">
										<label class="btn btn-default text-center"> <input
											type="radio" name="color_option" id="color_option_a1"
											autocomplete="off"> Red <br> <i
											class="fas fa-circle fa-2x text-red"></i>
										</label>
									</c:if>
									<c:if test="${yellow != null}">
										<label class="btn btn-default text-center"> <input
											type="radio" name="color_option" id="color_option_a1"
											autocomplete="off"> Yellow <br> <i
											class="fas fa-circle fa-2x text-yellow"></i>
										</label>
									</c:if>
								</div>
								<div class="mt-3">
									<h4>Short Description</h4>
									<div class="col-12 mt-3" style="border: 1px solid;">
										${product.shortDescription }</div>
								</div>

								<div class="bg-gray py-2 px-3 mt-4">
									<h2 class="mb-0">Price: $${product.price }</h2>
								</div>

								<div class="bg-gray py-2 px-3 mt-4">
									<h2 class="mb-0">Stock quantity: ${product.stockQuantity }</h2>
								</div>
							</div>
						</div>
						<div class="row mt-4">
							<nav class="w-100">
								<div class="nav nav-tabs" id="product-tab" role="tablist">
									<a class="nav-item nav-link active" id="product-desc-tab"
										data-toggle="tab" href="#product-desc" role="tab"
										aria-controls="product-desc" aria-selected="true">Description</a>
								</div>
							</nav>
							<div class="tab-content p-3" id="nav-tabContent">
								<div class="tab-pane fade active show" id="product-desc"
									role="tabpanel" aria-labelledby="product-desc-tab">${product.description }</div>
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
		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->
	<jsp:include page="../components/script.jsp"></jsp:include>
	<script>
		$(document).ready(function() {
			$('.product-image-thumb').on('click', function() {
				var $image_element = $(this).find('img')
				$('.product-image').prop('src', $image_element.attr('src'))
				$('.product-image-thumb.active').removeClass('active')
				$(this).addClass('active')
			})
		});
	</script>
</body>
</html>