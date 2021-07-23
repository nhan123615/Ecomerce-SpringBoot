<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>





<%--Quick view product--%>
<c:forEach var="p" items="${allProducts}">

	<div class="modal fade product-quickview-open" id="product-quickview-${p.id}" tabindex="-1" role="dialog" aria-labelledby="product-quickview-${p.id}" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content"><span class="modal-close" data-dismiss="modal"><i class="icon-cross2"></i></span>
				<article class="ps-product--detail ps-product--fullwidth ps-product--quickview">
					<div class="ps-product__header">
						<div class="ps-product__thumbnail" data-vertical="false">
							<div class="ps-product__images" data-arrow="true">
								<div class="item"><img src="${pageContext.request.contextPath}/product/display/0&${p.id}" alt="" style="width: 404px;height: 404px"></div>
								<div class="item"><img src="${pageContext.request.contextPath}/product/display/1&${p.id}" alt="" style="width: 404px;height: 404px"></div>
								<div class="item"><img src="${pageContext.request.contextPath}/product/display/2&${p.id}" alt="" style="width: 404px;height: 404px"></div>
								<div class="item"><img src="${pageContext.request.contextPath}/product/display/3&${p.id}" alt="" style="width: 404px;height: 404px"></div>
							</div>
						</div>
						<div class="ps-product__info">
							<h1>${p.productName}</h1>
							<div class="ps-product__meta">
								<p>Brand: <a href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}">${p.brand.name}</a></p>
								<div class="ps-product__rating">
									<select class="ps-rating" data-read-only="true">
										<option value="1">1</option>
										<option value="1">2</option>
										<option value="1">3</option>
										<option value="1">4</option>
										<option value="2">5</option>
									</select><span>(1 review)</span>
								</div>
							</div>
							<h4 class="ps-product__price">$${p.price}</h4>
							<div class="ps-product__desc">
								<p>Sold By:<a href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}"><strong> Angry Nerds</strong></a></p>
								<div class="ps-list--dot">
										${p.shortDescription}
								</div>
							</div>
							<div class="ps-product__shopping"><a class="ps-btn ps-btn--black toCart"  value="${p.id}">Add to cart</a><a class="ps-btn buyNow" value="${p.id}">Buy Now</a>
							</div>
						</div>
					</div>
				</article>
			</div>
		</div>
	</div>

</c:forEach>
<%--Quick view product--%>

<!-- Messenger Plugin chat Code -->
<div id="fb-root"></div>

<!-- Your Plugin chat code -->
<div id="fb-customer-chat" class="fb-customerchat"></div>
<div class="ps-newsletter" >
	<div class="ps-container">
		<div class="ps-form--newsletter"  >
			<div class="row">
				<div class="col-xl-5 col-lg-12 col-md-12 col-sm-12 col-12 ">
					<div class="ps-form__left">
						<h3>Newsletter</h3>
						<p>Subcribe to get information about products and coupons</p>
					</div>
				</div>
				<div class="col-xl-7 col-lg-12 col-md-12 col-sm-12 col-12 ">
					<div class="ps-form__right">
						<form action="${pageContext.servletContext.contextPath}/subcriber" method="post" id="frmsubcriber" class="mb-3">
							<div class="ps-form__content">
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<label>First Name</label>
											<input class="form-control" type="text" placeholder="Please enter your first name..." name="firstName" id="fnameSub" maxlength="250" required>
<%--											<span id="fname-errorSub" class="error invalid-feedback"></span>--%>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<label>Last Name</label>
											<input class="form-control" type="text" placeholder="Please enter your last name..." name="lastName" id="lnameSub" maxlength="250" required>
<%--											<span id="lname-errorSub" class="error invalid-feedback"></span>--%>

										</div>
									</div>
									<div class="col-sm-12">
										<label>Email</label>
										<div class="form-group--nest">
											<input class="form-control" type="email" placeholder="Please enter your email..." name="email" id="emailSub" maxlength="250" required>
<%--											<span id="email-errorSub" class="error invalid-feedback"></span>--%>
											<button class="ps-btn" id="btnSubcribe">Subscribe</button>
										</div>
									</div>
								</div>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<footer class="ps-footer">
	<div class="ps-container">


		<div class="ps-footer__widgets">
			<aside class="widget widget_footer widget_contact-us">
				<h4 class="widget-title">Contact us</h4>
				<div class="widget_content">
					<p>Call us 24/7</p>
					<h3>1800 97 97 69</h3>
					<p>
						502 New Design Str, Melbourne, Australia <br> <a
							href="mailto:contact@martfury.co">contact@martfury.co</a>
					</p>
					<ul class="ps-list--social">
						<li><a class="facebook" ><i
								class="fa fa-facebook"></i></a></li>
						<li><a class="twitter" ><i class="fa fa-twitter"></i></a></li>
						<li><a class="google-plus" ><i
								class="fa fa-google-plus"></i></a></li>
						<li><a class="instagram" ><i
								class="fa fa-instagram"></i></a></li>
					</ul>
				</div>
			</aside>
			<aside class="widget widget_footer">
				<h4 class="widget-title">Quick links</h4>
				<ul class="ps-list--link">
					<li><a >Policy</a></li>
					<li><a >Term & Condition</a></li>
					<li><a >Shipping</a></li>
					<li><a >Return</a></li>
					<li><a href="faqs.html">FAQs</a></li>
				</ul>
			</aside>
			<aside class="widget widget_footer">
				<h4 class="widget-title">Company</h4>
				<ul class="ps-list--link">
					<li><a href="about-us.html">About Us</a></li>
					<li><a >Affilate</a></li>
					<li><a >Career</a></li>
					<li><a href="contact-us.html">Contact</a></li>
				</ul>
			</aside>
			<aside class="widget widget_footer">
				<h4 class="widget-title">Bussiness</h4>
				<ul class="ps-list--link">
					<li><a >Our Press</a></li>
					<li><a href="checkout.html">Checkout</a></li>
					<li><a href="my-account.html">My account</a></li>
					<li><a href="shop-default.html">Shop</a></li>
				</ul>
			</aside>
		</div>
		<div class="ps-footer__links">
			<p>
				<strong>Consumer Electric:</strong><a >Air Conditioners</a><a
					>Audios &amp; Theaters</a><a >Car Electronics</a><a
					>Office Electronics</a><a >TV Televisions</a><a
					>Washing Machines</a>
			</p>
			<p>
				<strong>Clothing &amp; Apparel:</strong><a >Printers</a><a
					>Projectors</a><a >Scanners</a><a >Store
					&amp; Business</a><a >4K Ultra HD TVs</a><a >LED
					TVs</a><a >OLED TVs</a>
			</p>
			<p>
				<strong>Home, Garden &amp; Kitchen:</strong><a >Cookware</a><a
					>Decoration</a><a >Furniture</a><a >Garden
					Tools</a><a >Garden Equipments</a><a >Powers And
					Hand Tools</a><a >Utensil &amp; Gadget</a>
			</p>
			<p>
				<strong>Health &amp; Beauty:</strong><a >Hair Care</a><a
					>Decoration</a><a >Hair Care</a><a >Makeup</a><a
					>Body Shower</a><a >Skin Care</a><a >Cologine</a><a
					>Perfume</a>
			</p>
			<p>
				<strong>Jewelry &amp; Watches:</strong><a >Necklace</a><a
					>Pendant</a><a >Diamond Ring</a><a >Sliver
					Earing</a><a >Leather Watcher</a><a >Gucci</a>
			</p>
			<p>
				<strong>Computer &amp; Technologies:</strong><a >Desktop
					PC</a><a >Laptop</a><a >Smartphones</a><a >Tablet</a><a
					>Game Controller</a><a >Audio &amp; Video</a><a
					>Wireless Speaker</a><a >Done</a>
			</p>
		</div>
		<div class="ps-footer__copyright">
			<p>Â© 2018 Martfury. All Rights Reserved</p>
			<p>
				<span>We Using Safe Payment For:</span><a ><img
					src="${pageContext.servletContext.contextPath}/img/payment-method/1.jpg"
					alt=""></a><a ><img
					src="${pageContext.servletContext.contextPath}/img/payment-method/2.jpg"
					alt=""></a><a ><img
					src="${pageContext.servletContext.contextPath}/img/payment-method/3.jpg"
					alt=""></a><a ><img
					src="${pageContext.servletContext.contextPath}/img/payment-method/4.jpg"
					alt=""></a><a ><img
					src="${pageContext.servletContext.contextPath}/img/payment-method/5.jpg"
					alt=""></a>
			</p>
		</div>
	</div>
</footer>
<div class="ps-popup" id="subscribe" data-time="500">
	<div class="ps-popup__content bg--cover"
		data-background="${pageContext.servletContext.contextPath}/img/bg/subscribe.jpg">
		<a class="ps-popup__close" ><i class="icon-cross"></i></a>
		<form class="ps-form--subscribe-popup" action="index.html"
			method="get">
			<div class="ps-form__content">
				<h4>
					Get <strong>25%</strong> Discount
				</h4>
				<p>
					Subscribe to the Martfury mailing list <br /> to receive updates
					on new arrivals, special offers <br /> and our promotions.
				</p>
				<div class="form-group">
					<input class="form-control" type="text" placeholder="Email Address"
						required>
					<button class="ps-btn">Subscribe</button>
				</div>
				<div class="ps-checkbox">
					<input class="form-control" type="checkbox" id="not-show"
						name="not-show"> <label for="not-show">Don't show
						this popup again</label>
				</div>
			</div>
		</form>
	</div>
</div>
<div id="back2top">
	<i class="icon icon-arrow-up"></i>
</div>
<div class="ps-site-overlay"></div>
<div id="loader-wrapper">
	<div class="loader-section section-left"></div>
	<div class="loader-section section-right"></div>
</div>
<div class="ps-search" id="site-search">
	<a class="ps-btn--close" ></a>
	<div class="ps-search__content">
		<form class="ps-form--primary-search" action="do_action" method="post">
			<input class="form-control" type="text" placeholder="Search for...">
			<button>
				<i class="aroma-magnifying-glass"></i>
			</button>
		</form>
	</div>
</div>



<!-- <script>
	var chatbox = document.getElementById('fb-customer-chat');
	chatbox.setAttribute("page_id", "107789288221368");
	chatbox.setAttribute("attribution", "biz_inbox");
	window.fbAsyncInit = function() {
		FB.init({
			xfbml : true,
			version : 'v11.0'
		});
	};

	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id))
			return;
		js = d.createElement(s);
		js.id = id;
		js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
</script> -->
<script
	src="${pageContext.servletContext.contextPath}/plugins/jquery.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins/nouislider/nouislider.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins/popper.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins/owl-carousel/owl.carousel.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins/imagesloaded.pkgd.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins/masonry.pkgd.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins/isotope.pkgd.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins/jquery.matchHeight-min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins/slick/slick/slick.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins/jquery-bar-rating/dist/jquery.barrating.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins/slick-animation.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins/lightGallery-master/dist/js/lightgallery-all.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins/sticky-sidebar/dist/sticky-sidebar.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins/select2/dist/js/select2.full.min.js"></script>
<script
	src="${pageContext.servletContext.contextPath}/plugins/gmap3.min.js"></script>
<!-- custom scripts-->
<script src="${pageContext.servletContext.contextPath}/js/main.js"></script>
<script src="${pageContext.servletContext.contextPath}/js/message.js"></script>

<script>
	/* $(document).ready(function(){ */
	// var queryOnchange="";
	// var queryFilter="";
	// var filter = document.querySelector('#filter');
	// var brand = document.querySelector('#filterBrand');
	// var part = document.querySelector('#filterPart');
	// var tblProduct = document.querySelector('#filteredProduct');
	// var totalProduct = document.querySelector('#productTotal');
	// var cbxFilter =document.querySelector('#cbxFilter');
	// var searchBrand =document.querySelector('#searchBrand');
	// var queryParams = new URLSearchParams(window.location.search);
	// var btnPrice =document.querySelector('#btnPrice');
	var countWish = document.querySelector('#countWish');
	var cookie = document.cookie;
	var arr_product;
	var products = [];
	var cartItems = [];

	window.onload = initData();
	function initData() {
		cookies();
		if (arr_product != null) {
			if (arr_product[0] != "") {
				countWish.innerHTML = arr_product.length;
			} else {
				countWish.innerHTML = 0;
			}
		}
		// initCartItem();
		initCartItemData();
		getAllProducts();
	}


	function updateWishlist() {
		cookies();
		if (arr_product != null) {
			if (arr_product[0] != "") {
				countWish.innerHTML = arr_product.length;
			} else {
				countWish.innerHTML = 0;
			}
		}
	}


	function cookies() {
		cookie = document.cookie;
		if (cookie != null) {
			matchs = cookie.match("wishlist=([^;]*)");
			if (matchs != null) {
				arr_product = matchs[1].split('a');
			}
		}
	}

	function getAllProducts() {
		const data = null;
		const xhr = new XMLHttpRequest();
		xhr.addEventListener("readystatechange", function() {
			if (this.readyState === this.DONE) {
				var json = JSON.parse(this.responseText);
				console.log(json)
				products = json
			}
		});

		xhr
				.open("GET",
						"${pageContext.servletContext.contextPath}/filter/getAllProducts");
		xhr.setRequestHeader('Content-type', 'application/json');
		xhr.send(data);
	}
	//cookie and cartItem
	/* 	var cartItems = [];
	 window.onload = initCartItem(); */
	//remove item to cart
	$(document).on("click", ".removeCartProduct", function() {
		if (cartItems.length > 0) {
			var deleteProductId = $(this).attr('value')
			var deleteProductIndex = -1;
			// alert($(this).attr('value'));
			for (let i = 0; i < cartItems.length; i++) {
				if (cartItems[i].product.id == deleteProductId) {
					deleteProductIndex = i;
					break;
				}
			}
			if (deleteProductIndex != -1) {
				cartItems.splice(deleteProductIndex, 1);
				countCartItems()
				showCartItems()
				updateCartItemsCookie(cartItems)
			}
		}
	});

	function getCartItemContent(items) {
		var user = '${user}';
		var cartItemContent = "";
		if (cartItems.length > 0) {
			var totalPrice = 0;
			for (let i = 0; i < cartItems.length; i++) {
				totalPrice += cartItems[i].totalPrice
				cartItemContent += "<div class='ps-cart__items'>";
				cartItemContent += "<div class='ps-product--cart-mobile'>"
				cartItemContent += "<div class='ps-product__thumbnail'><a href='#'><img src='${pageContext.request.contextPath}/product/display/0&"+cartItems[i].product.id+"' alt=''></a></div>"
				cartItemContent += "<div class='ps-product__content '><a class='ps-product__remove removeCartProduct ' value='"+cartItems[i].product.id+"' ><i class='icon-cross ' ></i></a><a href='product-default.html'>"
						+ cartItems[i].product.productName + "</a>"
				cartItemContent += "<p><strong>Sold by:</strong>  ANGRY NERDS</p><small>"
						+ cartItems[i].sellingQuantity
						+ " x $"
						+ cartItems[i].product.price + "</small>"
				cartItemContent += " </div> </div>"
				cartItemContent += " </div>"
			}
			cartItemContent += "<hr>"
			cartItemContent += "<div class='ps-cart__footer'>"
			cartItemContent += "<h3>Sub Total:<strong>$" + totalPrice
					+ "</strong></h3>"
			if (user !==""){
				cartItemContent += "<figure><a class='ps-btn' href='${pageContext.servletContext.contextPath}/customer/product/checkout-page'>View Cart</a><a class='ps-btn' href='${pageContext.servletContext.contextPath}/customer/product/checkout'>Checkout</a></figure>"
			}else{
				cartItemContent += "<figure><a class='ps-btn' href='${pageContext.servletContext.contextPath}/cart'>View Cart</a><a class='ps-btn' href='${pageContext.servletContext.contextPath}/customer/product/checkout'>Checkout</a></figure>"
			}
			cartItemContent += " </div>"
		}
		return cartItemContent;
	}

	function countCartItems() {
		document.getElementById('cartItemCount-1').innerHTML = cartItems.length
		document.getElementById('cartItemCount-2').innerHTML = cartItems.length
	}

	function showCartItems() {
		document.getElementById('cart-content-1').removeAttribute('style')
		document.getElementById('cart-content-2').removeAttribute('style')
		document.getElementById('cart-content-1').innerHTML = getCartItemContent(cartItems);
		document.getElementById('cart-content-2').innerHTML = getCartItemContent(cartItems);
		if (cartItems.length == 0) {
			document.getElementById('cart-content-1').setAttribute("style",
					"display: none;");
			document.getElementById('cart-content-2').setAttribute("style",
					"display: none;");
		}
	}

	function initCartItemData() {
		const data = null;
		const xhr = new XMLHttpRequest();
		xhr.addEventListener("readystatechange", function() {
			if (this.readyState === this.DONE) {
				var json = JSON.parse(this.responseText);
				console.log("initCartItem->>>")
				console.log(json)
				// if (cartItems.length >0){
				// 	cartItems.push(json)
				// }else{
				cartItems = json
				// }
			}
			countCartItems()
			showCartItems()
		});

		xhr
				.open("GET",
						"${pageContext.servletContext.contextPath}/cart/getAll");
		xhr.setRequestHeader('Content-type', 'application/json');
		xhr.send(data);
	}

	function initCartItem() {
		const data = null;
		const xhr = new XMLHttpRequest();
		xhr.addEventListener("readystatechange", function() {
			if (this.readyState === this.DONE) {
				var json = JSON.parse(this.responseText);
				console.log("initCartItem->>>")
				console.log(json)
				// if (cartItems.length >0){
				// 	cartItems.push(json)
				// }else{
					cartItems = json
				// }
			}
			// countCartItems()
			// showCartItems()
		});

		xhr
				.open("GET",
						"${pageContext.servletContext.contextPath}/cart/getAll");
		xhr.setRequestHeader('Content-type', 'application/json');
		xhr.send(data);
	}
	function updateCartItemsCookie(cartItemsArr) {
		var value = "[]";
		if (cartItemsArr.length > 0) {
			value = "["
			for (let i = 0; i < cartItemsArr.length; i++) {
				value += JSON.stringify(cartItemsArr[i]) + ","
			}
			value = value.substring(0, value.length - 1)
			value += "]"
		}

		const data = value;
		const xhr = new XMLHttpRequest();
		xhr.addEventListener("readystatechange", function() {
			if (this.readyState === this.DONE) {
				var json = JSON.parse(this.responseText);
				// if (json.length>0){
				console.log("updateCartItemsCookie->>>>>")
				console.log(json)
				cartItems = json
				// }
			}
		});

		xhr.open("POST",
				"${pageContext.servletContext.contextPath}/cart/update");
		xhr.setRequestHeader('Content-type', 'application/json');
		console.log(data)
		xhr.send(data);
	}
		 //add to Cart
		 $(document).on("click",".toCart", function(event){
			 initCartItem();
			 toCart(this.getAttribute('value'),event)
		 });

		 $(document).on("click",".buyNow", function(event){
		 	var user = '${user}'
			 initCartItem();
			 toCart(this.getAttribute('value'),event)
			 window.setTimeout(function () {
			 	if (user !==""){
					window.location.href = "${pageContext.servletContext.contextPath}/customer/product/checkout-page";
				}else{
					window.location.href = "${pageContext.servletContext.contextPath}/cart";
				}
			 },500)
		 });






	function toCart(value,event){
		if (checkStock(value,getCartProductQty(value))){
			addItemToCart("${pageContext.servletContext.contextPath}/cart/get?productId="+value)
		}else{
			event.preventDefault()
		}
	}

	function checkStock(productId,qty){
		if (qty !=null){
			for (let i = 0; i < products.length ; i++) {
				if (products[i].id == productId){
					if (qty < products[i].stockQuantity){
						return true;
					}else{
						return false;
					}
				}
			}
		}else{
			return true;
		}

		return false;
	}

	function getCartProductQty(productId){
		if (cartItems.length>0){
			for (let i = 0; i < cartItems.length; i++) {
				if (cartItems[i].product.id == productId){
					return cartItems[i].sellingQuantity
				}
			}
		}
		return null;
	}

	function addItemToCart(url){
		const data = null;
		const xhr = new XMLHttpRequest();
		xhr.addEventListener("readystatechange", function () {
			if (this.readyState === this.DONE) {
				var json = JSON.parse(this.responseText);
				console.log("JSON ->>>>")
				console.log(json)
				if (cartItems.length>0){
					var count = 0;
					for (let i = 0; i < cartItems.length; i++) {
						//if duplicate sellingQuantity +=1
						if (cartItems[i].product.id == json.product.id){
							cartItems[i].sellingQuantity += 1
							cartItems[i].totalPrice =  parseFloat(cartItems[i].product.price) *  parseInt(cartItems[i].sellingQuantity)
							count += 1
						}
					}
					if (count == 0){
						cartItems.push(json)
						// countCartItems()
					}
					updateCartItemsCookie(cartItems)
					showCartItems()
					console.log("cartItems ->>>>")
					console.log(cartItems)
				}else{
					cartItems.push(json)
					console.log("cartItems ->>>>")
					console.log(cartItems)
					// countCartItems()
					showCartItems()
					updateCartItemsCookie(cartItems)
				}
				countCartItems()
				msg("Add to cart sucessful !");

			}
		});

		xhr.open("GET", url);
		xhr.setRequestHeader('Content-type', 'application/json');
		xhr.send(data);

	}

	/* }) */
</script>

<script>
	$(document).ready(function(){
		$(document).on("keyup","#input-search", function(event){
			var categoryId =document.querySelector('.categorySearch');
			var table =document.querySelector('.tableSearch');
			var queryCategory =""
			if (categoryId.value !== ""){
				queryCategory += "&categoryId="+categoryId.value
			}
			
			const data = null;
			const xhr = new XMLHttpRequest();
			xhr.addEventListener("readystatechange", function() {
				if (this.readyState === this.DONE) {
					var json = JSON.parse(this.responseText);
					console.log(json)
					table.innerHTML = getSearchTable(json)
				}
			});

			xhr.open("GET", "${pageContext.servletContext.contextPath}/filter/search?productName="+this.value+queryCategory);
			xhr.setRequestHeader('Content-type', 'application/json');
			xhr.send(data);
		});
		
		function getSearchTable(json){
			var table =""
			for (let i = 0; i <json.length ; i++) {
				table += "<div class='ps-product ps-product--wide ps-product--search-result'>"
				table += "<div class='ps-product__thumbnail'><a href='${pageContext.servletContext.contextPath}/product/detail?id="+json[i].id+"' onclick='addProductToViewList("+json[i].id+")'><img src='${pageContext.request.contextPath}/product/display/0&"+json[i].id+"' style='width:60px;height:60px'></a></div>"
				table += "<div class='ps-product__content'><a class='ps-product__title' href='${pageContext.servletContext.contextPath}/product/detail?id="+json[i].id+"' onclick='addProductToViewList("+json[i].id+")'>"+json[i].productName+"</a>"
				table += "<p class='ps-product__price' style='font-size: 17px'>$"+json[i].price+"</p>"
				table += "</div></div>"
			}
			return table
		}

	})



	function msg(value){
		var style = value;
		var time = 1200;
		var message;
		switch(value){
			case "alert-success": message ="Successful !";break;
			case "alert_warning": message ="error warning";break;
			case "alert-danger": message = "Failed !";break;
			case "alert_info": message ="Data not found";break;
			default:
				if (value.includes("invalid")||value.includes("failed")||value.includes("only")){
					style = "alert-danger";
				}else{
					style = "alert-success";
				}
				message =value ;
		}
		var height = ($(window).height() - 45)/5;

		if ($(window).scrollTop() >=height) {
			height =($(window).scrollTop() +70)
		}


		$('<div id="promptModal">')
				.appendTo('body')
				.addClass('alert ' + style)
				.css({
					"display": "block",
					"z-index": 99999,
					"left": ($(document.body).outerWidth(true) - 200),
					"top": height ,
					"position": "absolute",
					"padding": "20px",
					"border-radius": "5px",
					"width":"200px",
					"text-align":"center",

				})
				.html(message)
				.show()
				.delay(time)
				.fadeOut(10, function () {
					$('#promptModal').remove();
				});
	}
</script>
<jsp:include page="../message/message-user.jsp"></jsp:include>
<%--<script>--%>

<%--	$("input").on("keyup", function (e) {--%>
<%--		// var value = $(this).val() || "";--%>
<%--		// var regex = /<(\/?\w+[^\n>]*\/?)>/ig;--%>
<%--		// if(regex.test(value)){--%>
<%--		// 	layer.msg("Invalid characters!");--%>
<%--		// 	$(this).val(value.replace(regex, "&lt;$1&gt;"));--%>
<%--		// 	e.preventDefault();--%>
<%--		// 	return false;--%>
<%--			if (e.shiftKey && (e.which == 188 || e.which == 190)) {--%>
<%--				e.preventDefault();--%>
<%--				alert("no ko")--%>
<%--			}--%>
<%--		// }--%>
<%--	});--%>
<%--</script>--%>


<%--<script>--%>

<%--	$('#btnSubcribe')--%>
<%--			.on(--%>
<%--					'click',--%>
<%--					function () {--%>
<%--						let fname = $('#fnameSub');--%>
<%--						let fnameError = $('#fname-errorSub');--%>
<%--						let lname = $('#lnameSub');--%>
<%--						let lnameError = $('#lname-errorSub');--%>
<%--						let email = $('#emailSub');--%>
<%--						let emailError = $('#email-errorSub');--%>
<%--						let hasSubmit = [];--%>

<%--						if (fname.val().length === 0) {--%>
<%--							hasSubmit.push(1);--%>
<%--							fname.addClass(--%>
<%--									'form-control is-invalid');--%>
<%--							fnameError.html(--%>
<%--									'Please enter First name!');--%>
<%--						}--%>

<%--						if (lname.val().length === 0) {--%>
<%--							hasSubmit.push(1);--%>
<%--							lname.addClass(--%>
<%--									'form-control is-invalid');--%>
<%--							lnameError.html(--%>
<%--									'Please enter Last name!');--%>
<%--						}--%>


<%--						if (email.val().length === 0) {--%>
<%--							hasSubmit.push(1);--%>
<%--							email.addClass(--%>
<%--									'form-control is-invalid');--%>
<%--							emailError.html(--%>
<%--									'Please enter Email!');--%>

<%--						}--%>

<%--						if (hasSubmit.length === 0) {--%>
<%--							$('#frmsubcriber').submit();--%>
<%--						}--%>

<%--					});--%>
<%--</script>--%>

</html>
