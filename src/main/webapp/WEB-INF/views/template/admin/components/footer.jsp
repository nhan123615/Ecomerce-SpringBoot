<footer class="main-footer">
	<strong>Copyright &copy; 2014-2021 <a
		href="https://adminlte.io">AdminLTE.io</a>.
	</strong> All rights reserved.
	<div class="float-right d-none d-sm-inline-block">
		<b>Version</b> 3.1.0
	</div>
</footer>

<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-dark">
	<!-- Control sidebar content goes here -->
</aside>
<!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script
	src="${pageContext.servletContext.contextPath}/plugins-admin/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script
	src="${pageContext.servletContext.contextPath}/plugins-admin/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
	$.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script
	src="${pageContext.servletContext.contextPath}/plugins-admin/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables -->
<script
	src="${pageContext.servletContext.contextPath}/plugins-admin/datatables/jquery.dataTables.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins-admin/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins-admin/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins-admin/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins-admin/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins-admin/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins-admin/jszip/jszip.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins-admin/pdfmake/pdfmake.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins-admin/pdfmake/vfs_fonts.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins-admin/datatables-buttons/js/buttons.html5.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins-admin/datatables-buttons/js/buttons.print.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins-admin/datatables-buttons/js/buttons.colVis.min.js"></script>
<!-- ChartJS -->
<script
	src="${pageContext.servletContext.contextPath}/plugins-admin/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script
	src="${pageContext.servletContext.contextPath}/plugins-admin/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script
	src="${pageContext.servletContext.contextPath}/plugins-admin/jqvmap/jquery.vmap.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins-admin/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script
	src="${pageContext.servletContext.contextPath}/plugins-admin/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script
	src="${pageContext.servletContext.contextPath}/plugins-admin/moment/moment.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins-admin/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script
	src="${pageContext.servletContext.contextPath}/plugins-admin/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script
	src="${pageContext.servletContext.contextPath}/plugins-admin/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script
	src="${pageContext.servletContext.contextPath}/plugins-admin/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script
	src="${pageContext.servletContext.contextPath}/dist/js/adminlte.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.servletContext.contextPath}/dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script
	src="${pageContext.servletContext.contextPath}/dist/js/pages/dashboard.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/dist/js/pages/dashboard3.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/ckeditor/ckeditor.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/ckfinder/ckfinder.js"></script>
<script>
	$(function() {
		$("#example1").DataTable({
			"responsive" : true,
			"lengthChange" : false,
			"autoWidth" : false,
			"buttons" : [ "copy", "csv", "excel", "pdf", "print", "colvis" ]
		}).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
	});
	CKEDITOR
			.replace(
					'description',
					{
						filebrowserBrowseUrl : '${pageContext.servletContext.contextPath}/ckfinder/ckfinder.html',
						filebrowserImageBrowseUrl : '${pageContext.servletContext.contextPath}/ckfinder/ckfinder.html?type=Images',
						filebrowserFlashBrowseUrl : '${pageContext.servletContext.contextPath}/ckfinder/ckfinder.html?type=Flash',
						filebrowserUploadUrl : '${pageContext.servletContext.contextPath}/ckfinder/core/connector/java/connector.java?command=QuickUpload&amp;type=Files',
						filebrowserImageUploadUrl : '${pageContext.servletContext.contextPath}/ckfinder/core/connector/java/connector.java?command=QuickUpload&amp;type=Images',
						filebrowserFlashUploadUrl : '${pageContext.servletContext.contextPath}/ckfinder/core/connector/java/connector.java?command=QuickUpload&amp;type=Flash'
					});

	CKEDITOR
			.replace(
					'shortDescription',
					{
						height : $("#col1").height() - 250,
						filebrowserBrowseUrl : '${pageContext.servletContext.contextPath}/ckfinder/ckfinder.html',
						filebrowserImageBrowseUrl : '${pageContext.servletContext.contextPath}/ckfinder/ckfinder.html?type=Images',
						filebrowserFlashBrowseUrl : '${pageContext.servletContext.contextPath}/ckfinder/ckfinder.html?type=Flash',
						filebrowserUploadUrl : '${pageContext.servletContext.contextPath}/ckfinder/core/connector/java/connector.java?command=QuickUpload&amp;type=Files',
						filebrowserImageUploadUrl : '${pageContext.servletContext.contextPath}/ckfinder/core/connector/java/connector.java?command=QuickUpload&amp;type=Images',
						filebrowserFlashUploadUrl : '${pageContext.servletContext.contextPath}/ckfinder/core/connector/java/connector.java?command=QuickUpload&amp;type=Flash'
					});
	/*Avatar start*/

	function BrowseServer(startupPath, functionData) {
		// You can use the "CKFinder" class to render CKFinder in a page:
		var finder = new CKFinder();

		// The path for the installation of CKFinder (default = "/ckfinder/").
		finder.basePath = '../';

		//Startup path in a form: "Type:/path/to/directory/"
		finder.startupPath = startupPath;

		// Name of a function which is called when a file is selected in CKFinder.
		finder.selectActionFunction = SetFileField;

		// Additional data to be passed to the selectActionFunction in a second argument.
		// We'll use this feature to pass the Id of a field that will be updated.
		finder.selectActionData = functionData;

		// Name of a function which is called when a thumbnail is selected in CKFinder. Preview img
		// finder.selectThumbnailActionFunction = ShowThumbnails;

		// Launch CKFinder
		finder.popup();
	}

	// This is a sample function which is called when a file is selected in CKFinder.
	function SetFileField(fileUrl, data) {
		document.getElementById(data["selectActionData"]).innerHTML = this
				.getSelectedFile().name;
		document.getElementById("imgpreview").src = fileUrl;
	}
	/*Avatar end*/
</script>
<script>
	var category = document.querySelector('#category');
	var type = document.querySelector('#type');
	//select box
	category.addEventListener('click', function() {
		const data = null;
		const xhr = new XMLHttpRequest();
		xhr.addEventListener("readystatechange", function() {
			if (this.readyState === this.DONE) {
				var json = JSON.parse(this.responseText);
				type.innerHTML = getSelectUser(json)
			}
		});
		xhr.open("GET",
				"${pageContext.servletContext.contextPath}/select?id_category="
						+ this.value);
		xhr.setRequestHeader('Content-type', 'application/json');
		xhr.send(data);
	});
	function getSelectUser(json) {
		var selectUser = "";
		for (let i = 0; i < json.length; i++) {
			selectUser += "<option value="+json[i].id+">" + json[i].name
					+ "</option>";
		}
		return selectUser;
	}
</script>
<script>
	$(document).ready(function() {
		$('.product-image-thumb').on('click', function() {
			var $image_element = $(this).find('img')
			$('.product-image').prop('src', $image_element.attr('src'))
			$('.product-image-thumb.active').removeClass('active')
			$(this).addClass('active')
		})
	})
</script>
<script>
	$('#btnType').on('click', function() {
		let name = $('#nameType');
		let category = $('#categoryType');
		let hasSubmit = [];
		if (name.val().length === 0) {
			hasSubmit.push(1);
			$('#nameType').addClass('form-control is-invalid');
			$('#nameType-error').html('Please enter name!');
		} else {
			$('#nameType').removeClass('form-control is-invalid');
			$('#nameType').addClass('form-control is-valid');
			$('#nameType-error').html('');
		}
		if (category.val() === '-1') {
			hasSubmit.push(1);
			$('#categoryType').addClass('form-control is-invalid');
			$('#categoryType-error').html('Please choose category!');
		} else {
			$('#categoryType').removeClass('form-control is-invalid');
			$('#categoryType').addClass('form-control is-valid');
			$('#categoryType-error').html('');
		}
		if (hasSubmit.length === 0) {
			$('#frmType').submit();
		}
	});
</script>
<script>
	$('#btnAddProduct').on(
			'click',
			function() {
				let name = $('#productName');
				let price = $('#price');
				let stockQuantity = $('#stockQuantity');
				let productColor = $('#productColor');
				let brand = $('#brand');
				let category = $('#category');
				let type = $('#type');
				let description = $('#description');
				let img = $('#img');
				let listFile = img.get(0).files;
				var numberOfFile = img.get(0).files.length;
				let totalSize = 0;
				for (let i = 0; i < numberOfFile; i++) {
					totalSize += listFile[i].size;
				}
				let hasSubmit = [];
				if (name.val().length === 0) {
					hasSubmit.push(1);
					$('#productName').addClass('form-control is-invalid');
					$('#productName-error').html('Please enter name!');
				} else {
					$('#productName').removeClass('form-control is-invalid');
					$('#productName').addClass('form-control is-valid');
					$('#productName-error').html('');
				}

				if (price.val().length === 0) {
					hasSubmit.push(1);
					$('#price').addClass('form-control is-invalid');
					$('#price-error').html('Please enter price!');
				} else if (parseFloat(price.val()) < 0) {
					hasSubmit.push(1);
					$('#price').addClass('form-control is-invalid');
					$('#price-error').html('Price not less than 0');
				} else if (parseFloat(price.val()) > 100000) {
					hasSubmit.push(1);
					$('#price').addClass('form-control is-invalid');
					$('#price-error').html('Price not greater than 100000');
				} else {
					$('#price').removeClass('form-control is-invalid');
					$('#price').addClass('form-control is-valid');
					$('#price-error').html('');
				}

				if (stockQuantity.val().length === 0) {
					hasSubmit.push(1);
					$('#stockQuantity').addClass('form-control is-invalid');
					$('#stockQuantity-error').html(
							'Please enter stock quantity!');
				} else if (Math.floor(stockQuantity.val()) != stockQuantity
						.val()) {
					hasSubmit.push(1);
					$('#stockQuantity').addClass('form-control is-invalid');
					$('#stockQuantity-error')
							.html('Stock quantity not double!');
				} else if (parseInt(stockQuantity.val()) < 0) {
					hasSubmit.push(1);
					$('#stockQuantity').addClass('form-control is-invalid');
					$('#stockQuantity-error').html(
							'Stock quantity not less than 0');
				} else if (parseInt(stockQuantity.val()) > 1000) {
					hasSubmit.push(1);
					$('#stockQuantity').addClass('form-control is-invalid');
					$('#stockQuantity-error').html(
							'Stock quantity not greater than 1000');
				} else {
					$('#stockQuantity').removeClass('form-control is-invalid');
					$('#stockQuantity').addClass('form-control is-valid');
					$('#stockQuantity-error').html('');
				}

				if (productColor.val().length === 0) {
					hasSubmit.push(1);
					$('#productColor').addClass('form-control is-invalid');
					$('#productColor-error').html('Please choose color!');
				} else {
					$('#productColor').removeClass('form-control is-invalid');
					$('#productColor').addClass('form-control is-valid');
					$('#productColor-error').html('');
				}

				if (brand.val() === '-1') {
					hasSubmit.push(1);
					$('#brand').addClass('form-control is-invalid');
					$('#brand-error').html('Please choose brand!');
				} else {
					$('#brand').removeClass('form-control is-invalid');
					$('#brand').addClass('form-control is-valid');
					$('#brand-error').html('');
				}

				if (category.val() === '-1') {
					hasSubmit.push(1);
					$('#category').addClass('form-control is-invalid');
					$('#category-error').html('Please choose category!');
				} else {
					$('#category').removeClass('form-control is-invalid');
					$('#category').addClass('form-control is-valid');
					$('#category-error').html('');
				}

				if (type.val() === null) {
					hasSubmit.push(1);
					$('#type').addClass('form-control is-invalid');
					$('#type-error').html('Please choose category!');
				} else {
					$('#type').removeClass('form-control is-invalid');
					$('#type').addClass('form-control is-valid');
					$('#type-error').html('');
				}

				if (numberOfFile > 4 || numberOfFile < 4) {
					hasSubmit.push(1);
					$('#img-error').html('Please choose 4 image!');
				} else if (totalSize > 40960000) {
					hasSubmit.push(1);
					$('#img-error')
							.html('Image size is not greater than 40MB!');
				} else {
					$('#img-successful').html('Valid!');
					$('#img-error').html('');
				}

				let desc = CKEDITOR.instances['description'].getData();
				if (desc == "") {
					hasSubmit.push(1);
					$('#description-error').html('Please enter description!');
					$('#description-successful').html('');
				} else {
					$('#description-error').html('');
					$('#description-successful').html('Valid!');
				}

				let shortDesc = CKEDITOR.instances['shortDescription']
						.getData();
				if (shortDesc == "") {
					hasSubmit.push(1);
					$('#shordescription-error').html(
							'Please enter short description!');
					$('#shordescription-successful').html('');
				} else {
					$('#shordescription-error').html('');
					$('#shordescription-successful').html('Valid!');
				}

				if (hasSubmit.length === 0) {
					$('#frmAddProduct').submit();
				}
			});
	$('#btnEditProduct').on(
			'click',
			function() {
				let name = $('#productName');
				let price = $('#price');
				let stockQuantity = $('#stockQuantity');
				let productColor = $('#productColor');
				let brand = $('#brand');
				let category = $('#category');
				let type = $('#type');
				let description = $('#description');
				let img = $('#img');
				let img1 = $('#img1');
				let img2 = $('#img2');
				let img3 = $('#img3');

				let listFile = img.get(0).files;
				var numberOfFile = img.get(0).files.length;
				let totalSize = 0;
				for (let i = 0; i < numberOfFile; i++) {
					totalSize += listFile[i].size;
				}

				let listFile1 = img1.get(0).files;
				var numberOfFile1 = img1.get(0).files.length;
				let totalSize1 = 0;
				for (let i = 0; i < numberOfFile1; i++) {
					totalSize1 += listFile1[i].size;
				}

				let listFile2 = img2.get(0).files;
				var numberOfFile2 = img2.get(0).files.length;
				let totalSize2 = 0;
				for (let i = 0; i < numberOfFile2; i++) {
					totalSize2 += listFile2[i].size;
				}

				let listFile3 = img3.get(0).files;
				var numberOfFile3 = img3.get(0).files.length;
				let totalSize3 = 0;
				for (let i = 0; i < numberOfFile3; i++) {
					totalSize3 += listFile3[i].size;
				}

				let hasSubmit = [];
				if (name.val().length === 0) {
					hasSubmit.push(1);
					$('#productName').addClass('form-control is-invalid');
					$('#productName-error').html('Please enter name!');
				} else {
					$('#productName').removeClass('form-control is-invalid');
					$('#productName').addClass('form-control is-valid');
					$('#productName-error').html('');
				}

				if (price.val().length === 0) {
					hasSubmit.push(1);
					$('#price').addClass('form-control is-invalid');
					$('#price-error').html('Please enter price!');
				} else if (parseFloat(price.val()) < 0) {
					hasSubmit.push(1);
					$('#price').addClass('form-control is-invalid');
					$('#price-error').html('Price not less than 0');
				} else if (parseFloat(price.val()) > 100000) {
					hasSubmit.push(1);
					$('#price').addClass('form-control is-invalid');
					$('#price-error').html('Price not greater than 100000');
				} else {
					$('#price').removeClass('form-control is-invalid');
					$('#price').addClass('form-control is-valid');
					$('#price-error').html('');
				}

				if (stockQuantity.val().length === 0) {
					hasSubmit.push(1);
					$('#stockQuantity').addClass('form-control is-invalid');
					$('#stockQuantity-error').html(
							'Please enter stock quantity!');
				} else if (Math.floor(stockQuantity.val()) != stockQuantity
						.val()) {
					hasSubmit.push(1);
					$('#stockQuantity').addClass('form-control is-invalid');
					$('#stockQuantity-error')
							.html('Stock quantity not double!');
				} else if (parseInt(stockQuantity.val()) < 0) {
					hasSubmit.push(1);
					$('#stockQuantity').addClass('form-control is-invalid');
					$('#stockQuantity-error').html(
							'Stock quantity not less than 0');
				} else if (parseInt(stockQuantity.val()) > 1000) {
					hasSubmit.push(1);
					$('#stockQuantity').addClass('form-control is-invalid');
					$('#stockQuantity-error').html(
							'Stock quantity not greater than 1000');
				} else {
					$('#stockQuantity').removeClass('form-control is-invalid');
					$('#stockQuantity').addClass('form-control is-valid');
					$('#stockQuantity-error').html('');
				}

				if (productColor.val().length === 0) {
					hasSubmit.push(1);
					$('#productColor').addClass('form-control is-invalid');
					$('#productColor-error').html('Please choose color!');
				} else {
					$('#productColor').removeClass('form-control is-invalid');
					$('#productColor').addClass('form-control is-valid');
					$('#productColor-error').html('');
				}

				if (brand.val() === '-1') {
					hasSubmit.push(1);
					$('#brand').addClass('form-control is-invalid');
					$('#brand-error').html('Please choose brand!');
				} else {
					$('#brand').removeClass('form-control is-invalid');
					$('#brand').addClass('form-control is-valid');
					$('#brand-error').html('');
				}

				if (category.val() === '-1') {
					hasSubmit.push(1);
					$('#category').addClass('form-control is-invalid');
					$('#category-error').html('Please choose category!');
				} else {
					$('#category').removeClass('form-control is-invalid');
					$('#category').addClass('form-control is-valid');
					$('#category-error').html('');
				}

				if (type.val() === null) {
					hasSubmit.push(1);
					$('#type').addClass('form-control is-invalid');
					$('#type-error').html('Please choose category!');
				} else {
					$('#type').removeClass('form-control is-invalid');
					$('#type').addClass('form-control is-valid');
					$('#type-error').html('');
				}

				if (totalSize > 10240000) {
					hasSubmit.push(1);
					$('#img-error')
							.html('Image size is not greater than 10MB!');
					$('#img-successful').html('');
				} else {
					$('#img-successful').html('Valid!');
					$('#img-error').html('');
				}
				if (totalSize1 > 10240000) {
					hasSubmit.push(1);
					$('#img1-error').html(
							'Image size is not greater than 10MB!');
					$('#img1-successful').html('');
				} else {
					$('#img1-successful').html('Valid!');
					$('#img1-error').html('');
				}
				if (totalSize2 > 10240000) {
					hasSubmit.push(1);
					$('#img2-error').html(
							'Image size is not greater than 10MB!');
					$('#img2-successful').html('');
				} else {
					$('#img2-successful').html('Valid!');
					$('#img2-error').html('');
				}
				if (totalSize3 > 10240000) {
					hasSubmit.push(1);
					$('#img3-error').html(
							'Image size is not greater than 10MB!');
					$('#img3-successful').html('');
				} else {
					$('#img3-successful').html('Valid!');
					$('#img3-error').html('');
				}

				let desc = CKEDITOR.instances['description'].getData();
				if (desc == "") {
					hasSubmit.push(1);
					$('#description-error').html('Please enter description!');
					$('#description-successful').html('');
				} else {
					$('#description-error').html('');
					$('#description-successful').html('Valid!');
				}

				let shortDesc = CKEDITOR.instances['shortDescription']
						.getData();
				if (shortDesc == "") {
					hasSubmit.push(1);
					$('#shordescription-error').html(
							'Please enter short description!');
					$('#shordescription-successful').html('');
				} else {
					$('#shordescription-error').html('');
					$('#shordescription-successful').html('Valid!');
				}

				if (hasSubmit.length === 0) {
					$('#frmEditProduct').submit();
				}
			});
</script>
<script>
	if ($(location).attr('pathname') === '/admin') {
		$('#dashboard').addClass('nav-item menu-open');
		$('#linkdashboard').addClass('nav-link active');
		$('#home').addClass('nav-link active');
	}
	if ($(location).attr('pathname') === '/admin/product/new') {
		$('#managerproduct').addClass('nav-item menu-is-opening menu-open');
		$('#linkproduct').addClass('nav-link active');
		$('#newproduct').addClass('nav-link active');
	}
	if ($(location).attr('pathname') === '/admin/type/new') {
		$('#managertype').addClass('nav-item menu-is-opening menu-open');
		$('#linktype').addClass('nav-link active');
		$('#newtype').addClass('nav-link active');
	}
	if ($(location).attr('pathname') === '/admin/product') {
		$('#managerproduct').addClass('nav-item menu-is-opening menu-open');
		$('#linkproduct').addClass('nav-link active');
		$('#productlist').addClass('nav-link active');
	}
	if ($(location).attr('pathname') === '/admin/type') {
		$('#managertype').addClass('nav-item menu-is-opening menu-open');
		$('#linktype').addClass('nav-link active');
		$('#typelist').addClass('nav-link active');
	}
</script>
<script>
	function getImagePreview(event) {
		let image = URL.createObjectURL(event.target.files[0]);
		let imagediv = document.getElementById('preview');
		let newimg = document.createElement('img');
		imagediv.innerHTML = '';
		newimg.src = image;
		newimg.width = "200";
		newimg.height = "200";
		imagediv.appendChild(newimg);
	}
	function getImagePreview1(event) {
		let image = URL.createObjectURL(event.target.files[0]);
		let imagediv = document.getElementById('preview1');
		let newimg = document.createElement('img');
		imagediv.innerHTML = '';
		newimg.src = image;
		newimg.width = "200";
		newimg.height = "200";
		imagediv.appendChild(newimg);
	}
	function getImagePreview2(event) {
		let image = URL.createObjectURL(event.target.files[0]);
		let imagediv = document.getElementById('preview2');
		let newimg = document.createElement('img');
		imagediv.innerHTML = '';
		newimg.src = image;
		newimg.width = "200";
		newimg.height = "200";
		imagediv.appendChild(newimg);
	}
	function getImagePreview3(event) {
		let image = URL.createObjectURL(event.target.files[0]);
		let imagediv = document.getElementById('preview3');
		let newimg = document.createElement('img');
		imagediv.innerHTML = '';
		newimg.src = image;
		newimg.width = "200";
		newimg.height = "200";
		imagediv.appendChild(newimg);
	}
</script>
</body>
</html>
