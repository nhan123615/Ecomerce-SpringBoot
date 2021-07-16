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
<script>
	function addClass(id1, id2, id3) {
		$(id1).addClass('nav-item menu-is-opening menu-open');
		$(id2).addClass('nav-link active');
		$(id3).addClass('nav-link active');
	}
	function addClass1(id1, id2) {
		$(id1).addClass('nav-item menu-is-opening menu-open');
		$(id2).addClass('nav-link active');
	}

	if ($(location).attr('pathname') === '/admin') {
		addClass('#dashboard', '#linkdashboard', '#home');
	}
	if ($(location).attr('pathname') === '/admin/product/new') {
		addClass('#managerproduct', '#linkproduct', '#newproduct');
	}
	if ($(location).attr('pathname') === '/admin/type/new') {
		addClass('#managertype', '#linktype', '#newtype');
	}
	if ($(location).attr('pathname') === '/admin/product') {
		addClass('#managerproduct', '#linkproduct', '#productlist');
	}
	if ($(location).attr('pathname') === '/admin/product/detail'
			|| $(location).attr('pathname') === '/admin/product/edit') {
		addClass1('#managerproduct', '#linkproduct');
	}
	if ($(location).attr('pathname') === '/admin/type') {
		addClass('#managertype', '#linktype', '#typelist');
	}
	if ($(location).attr('pathname') === '/admin/type/edit') {
		addClass1('#managertype', '#linktype');
	}
	if ($(location).attr('pathname') === '/admin/user') {
		addClass('#manageruser', '#linkuser', '#userlist');
	}
	if ($(location).attr('pathname') === '/admin/user/detail'
			|| $(location).attr('pathname') === '/admin/user/edit') {
		addClass1('#manageruser', '#linkuser');
	}
	if ($(location).attr('pathname') === '/admin/subscriber') {
		addClass('#managersubscriber', '#linksubscriber', '#subscriberlist');
	}
	if ($(location).attr('pathname') === '/admin/order') {
		addClass('#managerorder', '#linkorder', '#orderlist');
	}
	if ($(location).attr('pathname') === '/admin/order/detail') {
		addClass1('#managerorder', '#linkorder');
	}
	if ($(location).attr('pathname') === '/admin/payment') {
		addClass('#managerpayment', '#linkpayment', '#paymentlist');
	}
	if ($(location).attr('pathname') === '/admin/payment/detail') {
		addClass1('#managerpayment', '#linkpayment');
	}
	if ($(location).attr('pathname') === '/admin/banner') {
		addClass('#managerbanner', '#linkbanner', '#bannerlist');
	}
	if ($(location).attr('pathname') === '/admin/banner/new') {
		addClass('#managerbanner', '#linkbanner', '#newbanner');
	}
	if ($(location).attr('pathname') === '/admin/banner/edit') {
		addClass('#managerbanner', '#linkbanner');
	}
	if ($(location).attr('pathname') === '/admin/brand') {
		addClass('#managerbrand', '#linkbrand', '#brandlist');
	}
	if ($(location).attr('pathname') === '/admin/brand/new') {
		addClass('#managerbrand', '#linkbrand', '#newbrand');
	}
	if ($(location).attr('pathname') === '/admin/brand/edit') {
		addClass('#managerbrand', '#linkbrand');
	}
	if ($(location).attr('pathname') === '/admin/category') {
		addClass('#managercategory', '#linkcategory', '#categorylist');
	}
	if ($(location).attr('pathname') === '/admin/category/new') {
		addClass('#managercategory', '#linkcategory', '#newcategory');
	}
	if ($(location).attr('pathname') === '/admin/category/edit') {
		addClass('#managercategory', '#linkcategory');
	}
</script>


<script>
	jQuery(document).ready(function () {
		var value = '${sessionScope.message}';
		alert(value)
	})



	function alert(str){
		switch(str){
			case "alert-success": success_prompt("Submit Successful");break;
			case "alert_warning": warning_prompt("error warning");break;
			case "alert-danger": fail_prompt("Submission failed");break;
			case "alert_info": info_prompt("Data not found");break;
			default:alert_prompt("Data not found");
		}

	}

	/**
	 * Pop-up prompt box, default 1.2 seconds to disappear automatically
	 * @param message prompt message
	 * @param style prompt style, there are alert-success, alert-danger, alert-warning, alert-info
	 * @param time disappearing time
	 */
	var prompt = function (message, style, time)
	{
		style = (style === undefined) ? 'alert-success' : style;
		time = (time === undefined) ? 1200 : time;
		$('<div id="promptModal">')
				.appendTo('body')
				.addClass('alert '+ style)
				.css({"display":"block",
					"z-index":99999,
					"left":($(document.body).outerWidth(true) - 180) ,

					"top":($(window).height() - 45)/13 ,
					"position": "absolute",
					"padding": "20px",
					"border-radius": "5px"})
				.html(message)
				.show()
				.delay(time)
				.fadeOut(10,function(){
					$('#promptModal').remove();
				});
	};
	// "left":($(document.body).outerWidth(true) - 120) / 2,
	// "top":($(window).height() - 45) / 2,
	// success prompt
	var success_prompt = function(message, time)
	{
		prompt(message, 'alert-success', time);
	};

	// failure prompt
	var fail_prompt = function(message, time)
	{
		prompt(message, 'alert-danger', time);
	};

	// remind
	var warning_prompt = function(message, time)
	{
		prompt(message, 'alert-warning', time);
	};

	// message notification
	var info_prompt = function(message, time)
	{
		prompt(message, 'alert-info', time);
	};

	// message notification
	var alert_prompt = function(message, time)
	{
		prompt(message, 'alert-pormpt', time);
	};
</script>
