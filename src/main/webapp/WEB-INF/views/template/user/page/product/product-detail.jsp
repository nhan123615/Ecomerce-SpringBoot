<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../../components/head.jsp"></jsp:include>
<body>
	<jsp:include page="../../components/header.jsp"></jsp:include>
	<jsp:include page="../../components/sidebar.jsp"></jsp:include>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="ps-page--product">
		<div class="ps-container">
			<div class="ps-page__container">
				<div class="ps-page__left">
					<div class="ps-product--detail ps-product--fullwidth">
						<div class="ps-product__header">
							<div class="ps-product__thumbnail" data-vertical="true">
								<figure>
									<div class="ps-wrapper">
										<div class="ps-product__gallery" data-arrow="true">
											<div class="item">
												<a
													href="${pageContext.request.contextPath}/product/display/1&${product.id}"><img
													src="${pageContext.request.contextPath}/product/display/1&${product.id}"
													alt="" style="width: 489px; height: 489px"></a>
											</div>
											<div class="item">
												<a
													href="${pageContext.request.contextPath}/product/display/2&${product.id}"><img
													src="${pageContext.request.contextPath}/product/display/2&${product.id}"
													alt="" style="width: 489px; height: 489px"></a>
											</div>
											<div class="item">
												<a
													href="${pageContext.request.contextPath}/product/display/3&${product.id}"><img
													src="${pageContext.request.contextPath}/product/display/3&${product.id}"
													alt="" style="width: 489px; height: 489px"></a>
											</div>
										</div>
									</div>
								</figure>
								<div class="ps-product__variants" data-item="4" data-md="4"
									data-sm="4" data-arrow="false">
									<div class="item">
										<img
											src="${pageContext.request.contextPath}/product/display/1&${product.id}"
											alt="" style="width: 60px; height: 60px">
									</div>
									<div class="item">
										<img
											src="${pageContext.request.contextPath}/product/display/2&${product.id}"
											alt="" style="width: 60px; height: 60px">
									</div>
									<div class="item">
										<img
											src="${pageContext.request.contextPath}/product/display/3&${product.id}"
											alt="" style="width: 60px; height: 60px">
									</div>
								</div>
							</div>
							<div class="ps-product__info">
								<h1>${product.productName }</h1>
								<div class="ps-product__meta">
									<p>
										Brand:<a href="shop-default.html">${product.brand.name }</a>
									</p>
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
								<h4 class="ps-product__price">$${product.price }</h4>
								<div class="ps-product__desc">
									<p>
										Sold By:<a href="${pageContext.servletContext.contextPath}/"><strong>
												Angry-Nerds Shop</strong></a>
									</p>
									<div class="ps-list--dot">${product.shortDescription }</div>
								</div>
								<div class="ps-product__variations">
									<figure>
										<figcaption>Color</figcaption>
										<c:if test="${black != null}">
											<div class="ps-variant ps-variant--color color--1">
												<span class="ps-variant__tooltip">Black</span>
											</div>
										</c:if>
										<c:if test="${white != null}">
											<div class="ps-variant ps-variant--color color--2">
												<span class="ps-variant__tooltip">White</span>
											</div>
										</c:if>
										<c:if test="${red != null}">
											<div class="ps-variant ps-variant--color color--3">
												<span class="ps-variant__tooltip">Red</span>
											</div>
										</c:if>
										<c:if test="${yellow != null}">
											<div class="ps-variant ps-variant--color color--4">
												<span class="ps-variant__tooltip">Yellow</span>
											</div>
										</c:if>
									</figure>
								</div>
								<div class="ps-product__shopping">
									<figure>
										<figcaption>Quantity</figcaption>
										<div class="form-group--number">
											<button class="up">
												<i class="fa fa-plus"></i>
											</button>
											<button class="down">
												<i class="fa fa-minus"></i>
											</button>
											<input class="form-control" type="text" placeholder="1">
										</div>
									</figure>
									<a class="ps-btn ps-btn--black" href="#">Add to cart</a><a
										class="ps-btn" href="#">Buy Now</a>
									<div class="ps-product__actions">
										<a onClick="addToWishList(${product.id})" data-toggle="tooltip"
											data-placement="top" title="Add to Wishlist"><i
											class="icon-heart"></i></a>
									</div>
								</div>
							</div>
						</div>
						<div class="ps-product__content ps-tab-root">
							<ul class="ps-tab-list">
								<li class="active"><a href="#tab-1">Description</a></li>
								<li><a href="#tab-4">Reviews</a></li>
							</ul>
							<div class="ps-tabs">
								<div class="ps-tab active" id="tab-1">
									<div class="ps-document">${product.description }</div>
								</div>
								<div class="ps-tab" id="tab-4">
									<div class="row">
										<div class="col-xl-5 col-lg-5 col-md-12 col-sm-12 col-12 ">
											<div class="ps-block--average-rating">
												<div class="ps-block__header">
													<h3>4.00</h3>
													<select class="ps-rating" data-read-only="true">
														<option value="1">1</option>
														<option value="1">2</option>
														<option value="1">3</option>
														<option value="1">4</option>
														<option value="2">5</option>
													</select><span>1 Review</span>
												</div>
												<div class="ps-block__star">
													<span>5 Star</span>
													<div class="ps-progress" data-value="100">
														<span></span>
													</div>
													<span>100%</span>
												</div>
												<div class="ps-block__star">
													<span>4 Star</span>
													<div class="ps-progress" data-value="0">
														<span></span>
													</div>
													<span>0</span>
												</div>
												<div class="ps-block__star">
													<span>3 Star</span>
													<div class="ps-progress" data-value="0">
														<span></span>
													</div>
													<span>0</span>
												</div>
												<div class="ps-block__star">
													<span>2 Star</span>
													<div class="ps-progress" data-value="0">
														<span></span>
													</div>
													<span>0</span>
												</div>
												<div class="ps-block__star">
													<span>1 Star</span>
													<div class="ps-progress" data-value="0">
														<span></span>
													</div>
													<span>0</span>
												</div>
											</div>
										</div>
										<div class="col-xl-7 col-lg-7 col-md-12 col-sm-12 col-12 ">
											<form class="ps-form--review" action="index.html"
												method="get">
												<h4>Submit Your Review</h4>
												<p>
													Your email address will not be published. Required fields
													are marked<sup>*</sup>
												</p>
												<div class="form-group form-group__rating">
													<label>Your rating of this product</label> <select
														class="ps-rating" data-read-only="false">
														<option value="0">0</option>
														<option value="1">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4</option>
														<option value="5">5</option>
													</select>
												</div>
												<div class="form-group">
													<textarea class="form-control" rows="6"
														placeholder="Write your review here"></textarea>
												</div>
												<div class="row">
													<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12  ">
														<div class="form-group">
															<input class="form-control" type="text"
																placeholder="Your Name">
														</div>
													</div>
													<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12  ">
														<div class="form-group">
															<input class="form-control" type="email"
																placeholder="Your Email">
														</div>
													</div>
												</div>
												<div class="form-group submit">
													<button class="ps-btn">Submit Review</button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="ps-page__right">
					<aside class="widget widget_product widget_features">
						<p>
							<i class="icon-network"></i> Shipping worldwide
						</p>
						<p>
							<i class="icon-3d-rotate"></i> Free 7-day return if eligible, so
							easy
						</p>
						<p>
							<i class="icon-receipt"></i> Supplier give bills for this
							product.
						</p>
						<p>
							<i class="icon-credit-card"></i> Pay online or when receiving
							goods
						</p>
					</aside>
					<aside class="widget widget_sell-on-site">
						<p>
							<i class="icon-store"></i> Sell on Martfury?<a href="#">
								Register Now !</a>
						</p>
					</aside>
					<aside class="widget widget_ads">
						<a href="#"><img
							src="${pageContext.request.contextPath}/img/ads/product-ads.png"
							alt=""></a>
					</aside>
					<aside class="widget widget_same-brand">
						<h3>Same Brand</h3>
						<div class="widget__content">
							<div class="ps-product">
								<div class="ps-product__thumbnail">
									<a href="product-default.html"><img
										src="${pageContext.request.contextPath}/img/products/shop/5.jpg"
										alt=""></a>
									<div class="ps-product__badge">-37%</div>
									<ul class="ps-product__actions">
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title="Add To Cart"><i
												class="icon-bag2"></i></a></li>
										<li><a href="#" data-placement="top" title="Quick View"
											data-toggle="modal" data-target="#product-quickview"><i
												class="icon-eye"></i></a></li>
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title="Add to Whishlist"><i
												class="icon-heart"></i></a></li>
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title="Compare"><i
												class="icon-chart-bars"></i></a></li>
									</ul>
								</div>
								<div class="ps-product__container">
									<a class="ps-product__vendor" href="#">Robert's Store</a>
									<div class="ps-product__content">
										<a class="ps-product__title" href="product-default.html">Grand
											Slam Indoor Of Show Jumping Novel</a>
										<div class="ps-product__rating">
											<select class="ps-rating" data-read-only="true">
												<option value="1">1</option>
												<option value="1">2</option>
												<option value="1">3</option>
												<option value="1">4</option>
												<option value="2">5</option>
											</select><span>01</span>
										</div>
										<p class="ps-product__price sale">
											$32.99
											<del>$41.00 </del>
										</p>
									</div>
									<div class="ps-product__content hover">
										<a class="ps-product__title" href="product-default.html">Grand
											Slam Indoor Of Show Jumping Novel</a>
										<p class="ps-product__price sale">
											$32.99
											<del>$41.00 </del>
										</p>
									</div>
								</div>
							</div>
							<div class="ps-product">
								<div class="ps-product__thumbnail">
									<a href="product-default.html"><img
										src="${pageContext.request.contextPath}/img/products/shop/6.jpg"
										alt=""></a>
									<div class="ps-product__badge">-5%</div>
									<ul class="ps-product__actions">
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title="Add To Cart"><i
												class="icon-bag2"></i></a></li>
										<li><a href="#" data-placement="top" title="Quick View"
											data-toggle="modal" data-target="#product-quickview"><i
												class="icon-eye"></i></a></li>
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title="Add to Whishlist"><i
												class="icon-heart"></i></a></li>
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title="Compare"><i
												class="icon-chart-bars"></i></a></li>
									</ul>
								</div>
								<div class="ps-product__container">
									<a class="ps-product__vendor" href="#">Youngshop</a>
									<div class="ps-product__content">
										<a class="ps-product__title" href="product-default.html">Sound
											Intone I65 Earphone White Version</a>
										<div class="ps-product__rating">
											<select class="ps-rating" data-read-only="true">
												<option value="1">1</option>
												<option value="1">2</option>
												<option value="1">3</option>
												<option value="1">4</option>
												<option value="2">5</option>
											</select><span>01</span>
										</div>
										<p class="ps-product__price sale">
											$100.99
											<del>$106.00 </del>
										</p>
									</div>
									<div class="ps-product__content hover">
										<a class="ps-product__title" href="product-default.html">Sound
											Intone I65 Earphone White Version</a>
										<p class="ps-product__price sale">
											$100.99
											<del>$106.00 </del>
										</p>
									</div>
								</div>
							</div>
						</div>
					</aside>
				</div>
			</div>

			<div class="ps-section--default">
				<div class="ps-section__header">
					<h3>Products that you have viewed</h3>
				</div>
				<div class="ps-section__content">
					<div class="ps-carousel--nav owl-slider" data-owl-auto="true"
						data-owl-loop="false" data-owl-speed="10000" data-owl-gap="30"
						data-owl-nav="true" data-owl-dots="true" data-owl-item="6"
						data-owl-item-xs="2" data-owl-item-sm="2" data-owl-item-md="3"
						data-owl-item-lg="4" data-owl-item-xl="5" data-owl-duration="1000"
						data-owl-mousedrag="on">
						<c:if test="${viewlist != null}">
							<c:forEach var="p" items="${viewlist}">
								<div class="ps-product">
									<div class="ps-product__thumbnail">
										<a
											href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}" onClick="addProductToViewList(${p.id})"><img
											src="${pageContext.request.contextPath}/product/display/0&${p.id}"
											alt="" width="203px" height="203px"></a>
										<ul class="ps-product__actions">
											<li><a href="#" data-toggle="tooltip"
												data-placement="top" title="Add To Cart"><i
													class="icon-bag2"></i></a></li>
											<li><a href="#" data-placement="top" title="Quick View"
												data-toggle="modal" data-target="#product-quickview-${p.id}"><i
													class="icon-eye"></i></a></li>
											<li><a onClick="addToWishList(${p.id})"
												data-toggle="tooltip" data-placement="top"
												title="Add to Wishlist"><i class="icon-heart"></i></a></li>
										</ul>
									</div>
									<div class="ps-product__container">
										<div class="ps-product__content">
											<a class="ps-product__title"
												href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}">${p.productName}</a>
											<div class="ps-product__rating">
												<select class="ps-rating" data-read-only="true">
													<option value="1">1</option>
													<option value="1">2</option>
													<option value="1">3</option>
													<option value="1">4</option>
													<option value="2">5</option>
												</select><span>(1 review)</span>
											</div>
											<p class="ps-product__price">$${p.price}</p>
										</div>
										<div class="ps-product__content hover">
											<a class="ps-product__title"
												href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}">${p.productName}</a>
											<p class="ps-product__price">$${p.price}</p>
										</div>
									</div>
								</div>
							</c:forEach>
						</c:if>
					</div>
				</div>
			</div>

			<div class="ps-section--default">
				<div class="ps-section__header">
					<h3>Related products</h3>
				</div>
				<div class="ps-section__content">
					<div class="ps-carousel--nav owl-slider" data-owl-auto="true"
						data-owl-loop="false" data-owl-speed="10000" data-owl-gap="30"
						data-owl-nav="true" data-owl-dots="true" data-owl-item="6"
						data-owl-item-xs="2" data-owl-item-sm="2" data-owl-item-md="3"
						data-owl-item-lg="4" data-owl-item-xl="5" data-owl-duration="1000"
						data-owl-mousedrag="on">
						<c:if test="${listProductByCategory != null}">
							<c:forEach var="p" items="${listProductByCategory}">
								<div class="ps-product">
									<div class="ps-product__thumbnail">
										<a
											href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}" onClick="addProductToViewList(${p.id})"><img
											src="${pageContext.request.contextPath}/product/display/0&${p.id}"
											alt="" width="203px" height="203px"></a>
										<ul class="ps-product__actions">
											<li><a href="#" data-toggle="tooltip"
												data-placement="top" title="Add To Cart"><i
													class="icon-bag2"></i></a></li>
											<li><a href="#" data-placement="top" title="Quick View"
												data-toggle="modal" data-target="#product-quickview-${p.id}"><i
													class="icon-eye"></i></a></li>
											<li><a onClick="addToWishList(${p.id})"
												data-toggle="tooltip" data-placement="top"
												title="Add to Wishlist"><i class="icon-heart"></i></a></li>
										</ul>
									</div>
									<div class="ps-product__container">
										<div class="ps-product__content">
											<a class="ps-product__title"
												href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}">${p.productName}</a>
											<div class="ps-product__rating">
												<select class="ps-rating" data-read-only="true">
													<option value="1">1</option>
													<option value="1">2</option>
													<option value="1">3</option>
													<option value="1">4</option>
													<option value="2">5</option>
												</select><span>(1 review)</span>
											</div>
											<p class="ps-product__price">$${p.price}</p>
										</div>
										<div class="ps-product__content hover">
											<a class="ps-product__title"
												href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}">${p.productName}</a>
											<p class="ps-product__price">$${p.price}</p>
										</div>
									</div>
								</div>
							</c:forEach>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="productPopup">
		<c:forEach var="p" items="${allProducts}">
			<div class="modal fade product-quickview-open"
				id="product-quickview-${p.id}" tabindex="-1" role="dialog"
				aria-labelledby="product-quickview-${p.id}" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
						<span class="modal-close" data-dismiss="modal"><i
							class="icon-cross2"></i></span>
						<article
							class="ps-product--detail ps-product--fullwidth ps-product--quickview">
							<div class="ps-product__header">
								<div class="ps-product__thumbnail" data-vertical="false">
									<div class="ps-product__images" data-arrow="true">
										<div class="item">
											<img
												src="${pageContext.request.contextPath}/product/display/0&${p.id}"
												alt="" style="width: 404px; height: 404px">
										</div>
										<div class="item">
											<img
												src="${pageContext.request.contextPath}/product/display/1&${p.id}"
												alt="" style="width: 404px; height: 404px">
										</div>
										<div class="item">
											<img
												src="${pageContext.request.contextPath}/product/display/2&${p.id}"
												alt="" style="width: 404px; height: 404px">
										</div>
										<div class="item">
											<img
												src="${pageContext.request.contextPath}/product/display/3&${p.id}"
												alt="" style="width: 404px; height: 404px">
										</div>
									</div>
								</div>
								<div class="ps-product__info">
									<h1>${p.productName}</h1>
									<div class="ps-product__meta">
										<p>
											Brand: <a
												href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}">${p.brand.name}</a>
										</p>
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
										<p>
											Sold By:<a
												href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}"><strong>
													Angry Nerds</strong></a>
										</p>
										<div class="ps-list--dot">${p.shortDescription }</div>
									</div>
									<div class="ps-product__shopping">
										<a class="ps-btn ps-btn--black" href="#">Add to cart</a><a
											class="ps-btn" href="#">Buy Now</a>
									</div>
								</div>
							</div>
						</article>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	<jsp:include page="../../components/footer.jsp"></jsp:include>
	<script>
			var countWish = document.querySelector('#countWish');
			var cookie = document.cookie;
			var arr_product;
			window.onload = initData();
			function initData() {
				cookies();
				if (arr_product != null) {
					if (arr_product[0] != "") {
						countWish.innerHTML = arr_product.length;
					}else{
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
			function addToWishList(id) {
				const data = null;
				const xhr = new XMLHttpRequest();
				xhr.addEventListener("readystatechange", function() {
					if (this.readyState === this.DONE) {
						if(this.responseText === "successful"){
							alert("You have successfully added!");
						}else if(this.responseText === "failed"){
							alert("You can only add 1 time!");
						}
						cookies();
						initData();
					}
				});
				xhr
						.open(
								"GET",
								"${pageContext.servletContext.contextPath}/api/wish-list/addProductToWishList?id_product="
										+ id);
				xhr.setRequestHeader('Content-type', 'application/json');
				xhr.send(data);
			}
			
			function addProductToViewList(id) {
				const data = null;
				const xhr = new XMLHttpRequest();
				xhr.addEventListener("readystatechange", function() {
					if (this.readyState === this.DONE) {
						
					}
				});
				xhr
						.open(
								"GET",
								"${pageContext.servletContext.contextPath}/api/wish-list/addProductToViewList?id_product="
										+ id);
				xhr.setRequestHeader('Content-type', 'application/json');
				xhr.send(data);
			}
		</script>
</body>