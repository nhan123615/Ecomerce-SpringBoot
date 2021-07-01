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
					<h1>Add Type Form</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">Add Type Form</li>
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
							<h3 class="card-title">Type Form</h3>
						</div>
						<!-- /.card-header -->
						<!-- form start -->
						<form id="frmType"
							action="${pageContext.servletContext.contextPath}/admin/type/new"
							method="post">
							<div class="card-body">
								<div class="form-group">
									<label for="name">Name</label> <input type="text"
										class="form-control" id="nameType" name="name"
										placeholder="Enter name" maxlength="20"> <span
										id="nameType-error" class="error invalid-feedback"></span>
								</div>
								<div class="form-group">
									<label>Category</label> <select class="form-control"
										id="categoryType" name="category">
										<option value="-1" selected="selected">Select category</option>
										<c:forEach var="category" items="${categories }">
											<option value="${category.id }">${category.name }</option>
										</c:forEach>
									</select> <span id="categoryType-error" class="error invalid-feedback"></span>
								</div>
							</div>
							<!-- /.card-body -->
						</form>
						<div class="card-footer">
							<button id="btnType" type="submit" class="btn btn-primary">Submit</button>
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