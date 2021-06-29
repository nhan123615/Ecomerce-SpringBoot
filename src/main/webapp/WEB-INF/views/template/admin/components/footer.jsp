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
	src="${pageContext.servletContext.contextPath}/ckeditor/ckeditor.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/ckfinder/ckfinder.js"></script>
<script>
	$(function() {
		$("#example1").DataTable({
			"responsive" : true,
			"lengthChange" : true,
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
    category.addEventListener('change', function() {
        const data = null;
        const xhr = new XMLHttpRequest();
        xhr.addEventListener("readystatechange", function () {
            if (this.readyState === this.DONE) {
                var json = JSON.parse(this.responseText);
                type.innerHTML = getSelectUser(json)
            }
        });
		xhr.open("GET", "${pageContext.servletContext.contextPath}/select?id_category="+this.value);
        xhr.setRequestHeader('Content-type', 'application/json');
        xhr.send(data);
    });
    function  getSelectUser(json) {
        var selectUser =""
        for (let i = 0; i <json.length; i++) {
            selectUser +=   " <option value="+json[i].id+">"+json[i].name+"</option>"
        }
        return selectUser;
    }
</script>
</body>
</html>
