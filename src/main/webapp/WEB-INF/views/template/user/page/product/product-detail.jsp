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
										<div
											class="ps-product__gallery slick-initialized slick-slider"
											data-arrow="true">
											<a href="#" class="slick-arrow slick-disabled"
												aria-disabled="true" style=""><i
												class="fa fa-angle-left"></i></a>
											<div aria-live="polite" class="slick-list draggable">
												<div class="slick-track" role="listbox"
													style="opacity: 1; width: 1467px;">
													<div class="item slick-slide slick-current slick-active"
														data-slick-index="0" aria-hidden="false" tabindex="-1"
														role="option" aria-describedby="slick-slide00"
														style="width: 489px; height: 489px; position: relative; left: 0px; top: 0px; z-index: 999; opacity: 1;">
														<a
															href="${pageContext.request.contextPath}/product/display/1&${product.id}"
															tabindex="0"><img
															src="${pageContext.request.contextPath}/product/display/1&${product.id}"
															alt="" style="width: 489px; height: 489px"></a>
													</div>
													<div class="item slick-slide" data-slick-index="1"
														aria-hidden="true" tabindex="-1" role="option"
														aria-describedby="slick-slide01"
														style="width: 489px; position: relative; left: -489px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;">
														<a
															href="${pageContext.request.contextPath}/product/display/2&${product.id}"
															tabindex="-1"><img
															src="${pageContext.request.contextPath}/product/display/2&${product.id}"
															alt="" style="width: 489px; height: 489px"></a>
													</div>
													<div class="item slick-slide" data-slick-index="2"
														aria-hidden="true" tabindex="-1" role="option"
														aria-describedby="slick-slide02"
														style="width: 489px; position: relative; left: -978px; top: 0px; z-index: 998; opacity: 0; transition: opacity 500ms ease 0s;">
														<a
															href="${pageContext.request.contextPath}/product/display/3&${product.id}"
															tabindex="-1"><img
															src="${pageContext.request.contextPath}/product/display/3&${product.id}"
															alt="" style="width: 489px; height: 489px"></a>
													</div>
												</div>
											</div>
											<a href="#" class="slick-arrow" style=""
												aria-disabled="false"><i class="fa fa-angle-right"></i></a>
										</div>
									</div>
								</figure>
								<div
									class="ps-product__variants slick-initialized slick-slider slick-vertical"
									data-item="4" data-md="4" data-sm="4" data-arrow="false">
									<div aria-live="polite" class="slick-list draggable"
										style="height: 280px;">
										<div class="slick-track" role="listbox"
											style="opacity: 1; height: 210px; transform: translate3d(0px, 0px, 0px);">
											<div class="item slick-slide slick-current slick-active"
												data-slick-index="0" aria-hidden="false" tabindex="-1"
												role="option" aria-describedby="slick-slide10"
												style="width: 60px; height: 60px">
												<img
													src="${pageContext.request.contextPath}/product/display/1&${product.id}"
													alt="" style="width: 60px; height: 60px">
											</div>
											<div class="item slick-slide slick-active"
												data-slick-index="1" aria-hidden="false" tabindex="-1"
												role="option" aria-describedby="slick-slide11"
												style="width: 60px; height: 60px">
												<img
													src="${pageContext.request.contextPath}/product/display/2&${product.id}"
													alt="" style="width: 60px; height: 60px">
											</div>
											<div class="item slick-slide slick-active"
												data-slick-index="2" aria-hidden="false" tabindex="-1"
												role="option" aria-describedby="slick-slide12"
												style="width: 60px; height: 60px">
												<img
													src="${pageContext.request.contextPath}/product/display/3&${product.id}"
													alt="" style="width: 60px; height: 60px">
											</div>
										</div>
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
										<div class="br-wrapper br-theme-fontawesome-stars">
											<select class="ps-rating" data-read-only="true"
												style="display: none;">
												<option value="1">1</option>
												<option value="1">2</option>
												<option value="1">3</option>
												<option value="1">4</option>
												<option value="2">5</option>
											</select>
											<div class="br-widget br-readonly">
												<a href="#" data-rating-value="1" data-rating-text="1"
													class="br-selected br-current"></a><a href="#"
													data-rating-value="1" data-rating-text="2"
													class="br-selected br-current"></a><a href="#"
													data-rating-value="1" data-rating-text="3"
													class="br-selected br-current"></a><a href="#"
													data-rating-value="1" data-rating-text="4"
													class="br-selected br-current"></a><a href="#"
													data-rating-value="2" data-rating-text="5"></a>
												<div class="br-current-rating">1</div>
											</div>
										</div>
										<span>(1 review)</span>
									</div>
								</div>
								<h4 class="ps-product__price">$${product.price }</h4>
								<div class="ps-product__desc">
									<p>
										Sold By:<a href="${pageContext.servletContext.contextPath}/"><strong>
												Angry-Nerds Shop</strong></a>
									</p>
                                    ${product.shortDescription }
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
										<a href="#"><i class="icon-heart"></i></a><a href="#"><i
											class="icon-chart-bars"></i></a>
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
									<div class="ps-document">
										${product.description }
									</div>
								</div>
								<div class="ps-tab" id="tab-4">
									<div class="row">
										<div class="col-xl-5 col-lg-5 col-md-12 col-sm-12 col-12 ">
											<div class="ps-block--average-rating">
												<div class="ps-block__header">
													<h3>4.00</h3>
													<div class="br-wrapper br-theme-fontawesome-stars">
														<select class="ps-rating" data-read-only="true"
															style="display: none;">
															<option value="1">1</option>
															<option value="1">2</option>
															<option value="1">3</option>
															<option value="1">4</option>
															<option value="2">5</option>
														</select>
														<div class="br-widget br-readonly">
															<a href="#" data-rating-value="1" data-rating-text="1"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="2"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="3"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="4"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="2" data-rating-text="5"></a>
															<div class="br-current-rating">1</div>
														</div>
													</div>
													<span>1 Review</span>
												</div>
												<div class="ps-block__star">
													<span>5 Star</span>
													<div class="ps-progress" data-value="100">
														<span style="width: 100%;"></span>
													</div>
													<span>100%</span>
												</div>
												<div class="ps-block__star">
													<span>4 Star</span>
													<div class="ps-progress" data-value="0">
														<span style="width: 0%;"></span>
													</div>
													<span>0</span>
												</div>
												<div class="ps-block__star">
													<span>3 Star</span>
													<div class="ps-progress" data-value="0">
														<span style="width: 0%;"></span>
													</div>
													<span>0</span>
												</div>
												<div class="ps-block__star">
													<span>2 Star</span>
													<div class="ps-progress" data-value="0">
														<span style="width: 0%;"></span>
													</div>
													<span>0</span>
												</div>
												<div class="ps-block__star">
													<span>1 Star</span>
													<div class="ps-progress" data-value="0">
														<span style="width: 0%;"></span>
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
													<label>Your rating of this product</label>
													<div class="br-wrapper br-theme-fontawesome-stars">
														<select class="ps-rating" data-read-only="false"
															style="display: none;">
															<option value="0">0</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
														</select>
														<div class="br-widget">
															<a href="#" data-rating-value="1" data-rating-text="1"></a><a
																href="#" data-rating-value="2" data-rating-text="2"></a><a
																href="#" data-rating-value="3" data-rating-text="3"></a><a
																href="#" data-rating-value="4" data-rating-text="4"></a><a
																href="#" data-rating-value="5" data-rating-text="5"></a>
															<div class="br-current-rating"></div>
														</div>
													</div>
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
								<div class="ps-tab" id="tab-5">
									<div class="ps-block--questions-answers">
										<h3>Questions and Answers</h3>
										<div class="form-group">
											<input class="form-control" type="text"
												placeholder="Have a question? Search for answer?">
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
						<a href="#"><img src="img/ads/product-ads.png" alt=""></a>
					</aside>
					<aside class="widget widget_same-brand">
						<h3>Same Brand</h3>
						<div class="widget__content">
							<div class="ps-product">
								<div class="ps-product__thumbnail">
									<a href="product-default.html"><img
										src="img/products/shop/5.jpg" alt=""></a>
									<div class="ps-product__badge">-37%</div>
									<ul class="ps-product__actions">
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title=""
											data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
										<li><a href="#" data-placement="top" title="Quick View"
											data-toggle="modal" data-target="#product-quickview"><i
												class="icon-eye"></i></a></li>
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title=""
											data-original-title="Add to Whishlist"><i
												class="icon-heart"></i></a></li>
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title="" data-original-title="Compare"><i
												class="icon-chart-bars"></i></a></li>
									</ul>
								</div>
								<div class="ps-product__container">
									<a class="ps-product__vendor" href="#">Robert's Store</a>
									<div class="ps-product__content">
										<a class="ps-product__title" href="product-default.html">Grand
											Slam Indoor Of Show Jumping Novel</a>
										<div class="ps-product__rating">
											<div class="br-wrapper br-theme-fontawesome-stars">
												<select class="ps-rating" data-read-only="true"
													style="display: none;">
													<option value="1">1</option>
													<option value="1">2</option>
													<option value="1">3</option>
													<option value="1">4</option>
													<option value="2">5</option>
												</select>
												<div class="br-widget br-readonly">
													<a href="#" data-rating-value="1" data-rating-text="1"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="1" data-rating-text="2"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="1" data-rating-text="3"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="1" data-rating-text="4"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="2" data-rating-text="5"></a>
													<div class="br-current-rating">1</div>
												</div>
											</div>
											<span>01</span>
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
										src="img/products/shop/6.jpg" alt=""></a>
									<div class="ps-product__badge">-5%</div>
									<ul class="ps-product__actions">
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title=""
											data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
										<li><a href="#" data-placement="top" title="Quick View"
											data-toggle="modal" data-target="#product-quickview"><i
												class="icon-eye"></i></a></li>
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title=""
											data-original-title="Add to Whishlist"><i
												class="icon-heart"></i></a></li>
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title="" data-original-title="Compare"><i
												class="icon-chart-bars"></i></a></li>
									</ul>
								</div>
								<div class="ps-product__container">
									<a class="ps-product__vendor" href="#">Youngshop</a>
									<div class="ps-product__content">
										<a class="ps-product__title" href="product-default.html">Sound
											Intone I65 Earphone White Version</a>
										<div class="ps-product__rating">
											<div class="br-wrapper br-theme-fontawesome-stars">
												<select class="ps-rating" data-read-only="true"
													style="display: none;">
													<option value="1">1</option>
													<option value="1">2</option>
													<option value="1">3</option>
													<option value="1">4</option>
													<option value="2">5</option>
												</select>
												<div class="br-widget br-readonly">
													<a href="#" data-rating-value="1" data-rating-text="1"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="1" data-rating-text="2"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="1" data-rating-text="3"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="1" data-rating-text="4"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="2" data-rating-text="5"></a>
													<div class="br-current-rating">1</div>
												</div>
											</div>
											<span>01</span>
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
			<div class="ps-section--default ps-customer-bought">
				<div class="ps-section__header">
					<h3>Customers who bought this item also bought</h3>
				</div>
				<div class="ps-section__content">
					<div class="row">
						<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-6 ">
							<div class="ps-product">
								<div class="ps-product__thumbnail">
									<a href="product-default.html"><img
										src="img/products/shop/4.jpg" alt=""></a>
									<div class="ps-product__badge hot">hot</div>
									<ul class="ps-product__actions">
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title=""
											data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
										<li><a href="#" data-placement="top" title="Quick View"
											data-toggle="modal" data-target="#product-quickview"><i
												class="icon-eye"></i></a></li>
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title=""
											data-original-title="Add to Whishlist"><i
												class="icon-heart"></i></a></li>
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title="" data-original-title="Compare"><i
												class="icon-chart-bars"></i></a></li>
									</ul>
								</div>
								<div class="ps-product__container">
									<a class="ps-product__vendor" href="#">Global Office</a>
									<div class="ps-product__content">
										<a class="ps-product__title" href="product-default.html">Xbox
											One Wireless Controller Black Color</a>
										<div class="ps-product__rating">
											<div class="br-wrapper br-theme-fontawesome-stars">
												<select class="ps-rating" data-read-only="true"
													style="display: none;">
													<option value="1">1</option>
													<option value="1">2</option>
													<option value="1">3</option>
													<option value="1">4</option>
													<option value="2">5</option>
												</select>
												<div class="br-widget br-readonly">
													<a href="#" data-rating-value="1" data-rating-text="1"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="1" data-rating-text="2"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="1" data-rating-text="3"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="1" data-rating-text="4"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="2" data-rating-text="5"></a>
													<div class="br-current-rating">1</div>
												</div>
											</div>
											<span>01</span>
										</div>
										<p class="ps-product__price">$55.99</p>
									</div>
									<div class="ps-product__content hover">
										<a class="ps-product__title" href="product-default.html">Xbox
											One Wireless Controller Black Color</a>
										<p class="ps-product__price">$55.99</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-6 ">
							<div class="ps-product">
								<div class="ps-product__thumbnail">
									<a href="product-default.html"><img
										src="img/products/shop/5.jpg" alt=""></a>
									<div class="ps-product__badge">-37%</div>
									<ul class="ps-product__actions">
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title=""
											data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
										<li><a href="#" data-placement="top" title="Quick View"
											data-toggle="modal" data-target="#product-quickview"><i
												class="icon-eye"></i></a></li>
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title=""
											data-original-title="Add to Whishlist"><i
												class="icon-heart"></i></a></li>
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title="" data-original-title="Compare"><i
												class="icon-chart-bars"></i></a></li>
									</ul>
								</div>
								<div class="ps-product__container">
									<a class="ps-product__vendor" href="#">Robert's Store</a>
									<div class="ps-product__content">
										<a class="ps-product__title" href="product-default.html">Grand
											Slam Indoor Of Show Jumping Novel</a>
										<div class="ps-product__rating">
											<div class="br-wrapper br-theme-fontawesome-stars">
												<select class="ps-rating" data-read-only="true"
													style="display: none;">
													<option value="1">1</option>
													<option value="1">2</option>
													<option value="1">3</option>
													<option value="1">4</option>
													<option value="2">5</option>
												</select>
												<div class="br-widget br-readonly">
													<a href="#" data-rating-value="1" data-rating-text="1"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="1" data-rating-text="2"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="1" data-rating-text="3"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="1" data-rating-text="4"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="2" data-rating-text="5"></a>
													<div class="br-current-rating">1</div>
												</div>
											</div>
											<span>01</span>
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
						</div>
						<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-6 ">
							<div class="ps-product">
								<div class="ps-product__thumbnail">
									<a href="product-default.html"><img
										src="img/products/shop/6.jpg" alt=""></a>
									<div class="ps-product__badge">-5%</div>
									<ul class="ps-product__actions">
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title=""
											data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
										<li><a href="#" data-placement="top" title="Quick View"
											data-toggle="modal" data-target="#product-quickview"><i
												class="icon-eye"></i></a></li>
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title=""
											data-original-title="Add to Whishlist"><i
												class="icon-heart"></i></a></li>
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title="" data-original-title="Compare"><i
												class="icon-chart-bars"></i></a></li>
									</ul>
								</div>
								<div class="ps-product__container">
									<a class="ps-product__vendor" href="#">Youngshop</a>
									<div class="ps-product__content">
										<a class="ps-product__title" href="product-default.html">Sound
											Intone I65 Earphone White Version</a>
										<div class="ps-product__rating">
											<div class="br-wrapper br-theme-fontawesome-stars">
												<select class="ps-rating" data-read-only="true"
													style="display: none;">
													<option value="1">1</option>
													<option value="1">2</option>
													<option value="1">3</option>
													<option value="1">4</option>
													<option value="2">5</option>
												</select>
												<div class="br-widget br-readonly">
													<a href="#" data-rating-value="1" data-rating-text="1"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="1" data-rating-text="2"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="1" data-rating-text="3"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="1" data-rating-text="4"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="2" data-rating-text="5"></a>
													<div class="br-current-rating">1</div>
												</div>
											</div>
											<span>01</span>
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
						<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-6 ">
							<div class="ps-product">
								<div class="ps-product__thumbnail">
									<a href="product-default.html"><img
										src="img/products/shop/7.jpg" alt=""></a>
									<div class="ps-product__badge">-16%</div>
									<ul class="ps-product__actions">
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title=""
											data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
										<li><a href="#" data-placement="top" title="Quick View"
											data-toggle="modal" data-target="#product-quickview"><i
												class="icon-eye"></i></a></li>
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title=""
											data-original-title="Add to Whishlist"><i
												class="icon-heart"></i></a></li>
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title="" data-original-title="Compare"><i
												class="icon-chart-bars"></i></a></li>
									</ul>
								</div>
								<div class="ps-product__container">
									<a class="ps-product__vendor" href="#">Youngshop</a>
									<div class="ps-product__content">
										<a class="ps-product__title" href="product-default.html">Korea
											Long Sofa Fabric In Blue Navy Color</a>
										<div class="ps-product__rating">
											<div class="br-wrapper br-theme-fontawesome-stars">
												<select class="ps-rating" data-read-only="true"
													style="display: none;">
													<option value="1">1</option>
													<option value="1">2</option>
													<option value="1">3</option>
													<option value="1">4</option>
													<option value="2">5</option>
												</select>
												<div class="br-widget br-readonly">
													<a href="#" data-rating-value="1" data-rating-text="1"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="1" data-rating-text="2"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="1" data-rating-text="3"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="1" data-rating-text="4"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="2" data-rating-text="5"></a>
													<div class="br-current-rating">1</div>
												</div>
											</div>
											<span>01</span>
										</div>
										<p class="ps-product__price sale">
											$567.89
											<del>$670.20 </del>
										</p>
									</div>
									<div class="ps-product__content hover">
										<a class="ps-product__title" href="product-default.html">Korea
											Long Sofa Fabric In Blue Navy Color</a>
										<p class="ps-product__price sale">
											$567.89
											<del>$670.20 </del>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-6 ">
							<div class="ps-product">
								<div class="ps-product__thumbnail">
									<a href="product-default.html"><img
										src="img/products/shop/8.jpg" alt=""></a>
									<div class="ps-product__badge">-16%</div>
									<ul class="ps-product__actions">
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title=""
											data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
										<li><a href="#" data-placement="top" title="Quick View"
											data-toggle="modal" data-target="#product-quickview"><i
												class="icon-eye"></i></a></li>
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title=""
											data-original-title="Add to Whishlist"><i
												class="icon-heart"></i></a></li>
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title="" data-original-title="Compare"><i
												class="icon-chart-bars"></i></a></li>
									</ul>
								</div>
								<div class="ps-product__container">
									<a class="ps-product__vendor" href="#">Young shop</a>
									<div class="ps-product__content">
										<a class="ps-product__title" href="product-default.html">Unero
											Military Classical Backpack</a>
										<div class="ps-product__rating">
											<div class="br-wrapper br-theme-fontawesome-stars">
												<select class="ps-rating" data-read-only="true"
													style="display: none;">
													<option value="1">1</option>
													<option value="1">2</option>
													<option value="1">3</option>
													<option value="1">4</option>
													<option value="2">5</option>
												</select>
												<div class="br-widget br-readonly">
													<a href="#" data-rating-value="1" data-rating-text="1"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="1" data-rating-text="2"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="1" data-rating-text="3"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="1" data-rating-text="4"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="2" data-rating-text="5"></a>
													<div class="br-current-rating">1</div>
												</div>
											</div>
											<span>02</span>
										</div>
										<p class="ps-product__price sale">
											$35.89
											<del>$42.20 </del>
										</p>
									</div>
									<div class="ps-product__content hover">
										<a class="ps-product__title" href="product-default.html">Unero
											Military Classical Backpack</a>
										<p class="ps-product__price sale">
											$35.89
											<del>$42.20 </del>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-6 ">
							<div class="ps-product">
								<div class="ps-product__thumbnail">
									<a href="product-default.html"><img
										src="img/products/shop/9.jpg" alt=""></a>
									<ul class="ps-product__actions">
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title=""
											data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
										<li><a href="#" data-placement="top" title="Quick View"
											data-toggle="modal" data-target="#product-quickview"><i
												class="icon-eye"></i></a></li>
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title=""
											data-original-title="Add to Whishlist"><i
												class="icon-heart"></i></a></li>
										<li><a href="#" data-toggle="tooltip"
											data-placement="top" title="" data-original-title="Compare"><i
												class="icon-chart-bars"></i></a></li>
									</ul>
								</div>
								<div class="ps-product__container">
									<a class="ps-product__vendor" href="#">Young shop</a>
									<div class="ps-product__content">
										<a class="ps-product__title" href="product-default.html">Rayban
											Rounded Sunglass Brown Color</a>
										<div class="ps-product__rating">
											<div class="br-wrapper br-theme-fontawesome-stars">
												<select class="ps-rating" data-read-only="true"
													style="display: none;">
													<option value="1">1</option>
													<option value="1">2</option>
													<option value="1">3</option>
													<option value="1">4</option>
													<option value="2">5</option>
												</select>
												<div class="br-widget br-readonly">
													<a href="#" data-rating-value="1" data-rating-text="1"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="1" data-rating-text="2"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="1" data-rating-text="3"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="1" data-rating-text="4"
														class="br-selected br-current"></a><a href="#"
														data-rating-value="2" data-rating-text="5"></a>
													<div class="br-current-rating">1</div>
												</div>
											</div>
											<span>02</span>
										</div>
										<p class="ps-product__price">$35.89</p>
									</div>
									<div class="ps-product__content hover">
										<a class="ps-product__title" href="product-default.html">Rayban
											Rounded Sunglass Brown Color</a>
										<p class="ps-product__price">$35.89</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="ps-section--default">
				<div class="ps-section__header">
					<h3>Related products</h3>
				</div>
				<div class="ps-section__content">
					<div
						class="ps-carousel--nav owl-slider owl-carousel owl-loaded owl-drag"
						data-owl-auto="true" data-owl-loop="true" data-owl-speed="10000"
						data-owl-gap="30" data-owl-nav="true" data-owl-dots="true"
						data-owl-item="6" data-owl-item-xs="2" data-owl-item-sm="2"
						data-owl-item-md="3" data-owl-item-lg="4" data-owl-item-xl="5"
						data-owl-duration="1000" data-owl-mousedrag="on">









						<div class="owl-stage-outer">
							<div class="owl-stage"
								style="transform: translate3d(-3025px, 0px, 0px); transition: all 1s ease 0s; width: 5775px;">
								<div class="owl-item cloned"
									style="width: 245px; margin-right: 30px;">
									<div class="ps-product">
										<div class="ps-product__thumbnail">
											<a href="product-default.html"><img
												src="img/products/shop/14.jpg" alt=""></a>
											<div class="ps-product__badge">-7%</div>
											<ul class="ps-product__actions">
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
												<li><a href="#" data-placement="top" title="Quick View"
													data-toggle="modal" data-target="#product-quickview"><i
														class="icon-eye"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add to Whishlist"><i
														class="icon-heart"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title="" data-original-title="Compare"><i
														class="icon-chart-bars"></i></a></li>
											</ul>
										</div>
										<div class="ps-product__container">
											<a class="ps-product__vendor" href="#">Global Office</a>
											<div class="ps-product__content">
												<a class="ps-product__title" href="product-default.html">Beat
													Spill 2.0 Wireless Speaker – White</a>
												<div class="ps-product__rating">
													<div class="br-wrapper br-theme-fontawesome-stars">
														<select class="ps-rating" data-read-only="true"
															style="display: none;">
															<option value="1">1</option>
															<option value="1">2</option>
															<option value="1">3</option>
															<option value="1">4</option>
															<option value="2">5</option>
														</select>
														<div class="br-widget br-readonly">
															<a href="#" data-rating-value="1" data-rating-text="1"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="2"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="3"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="4"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="2" data-rating-text="5"></a>
															<div class="br-current-rating">1</div>
														</div>
													</div>
													<span>01</span>
												</div>
												<p class="ps-product__price sale">
													$57.99
													<del>$62.99 </del>
												</p>
											</div>
											<div class="ps-product__content hover">
												<a class="ps-product__title" href="product-default.html">Beat
													Spill 2.0 Wireless Speaker – White</a>
												<p class="ps-product__price sale">
													$57.99
													<del>$62.99 </del>
												</p>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item cloned"
									style="width: 245px; margin-right: 30px;">
									<div class="ps-product">
										<div class="ps-product__thumbnail">
											<a href="product-default.html"><img
												src="img/products/shop/15.jpg" alt=""></a>
											<ul class="ps-product__actions">
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
												<li><a href="#" data-placement="top" title="Quick View"
													data-toggle="modal" data-target="#product-quickview"><i
														class="icon-eye"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add to Whishlist"><i
														class="icon-heart"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title="" data-original-title="Compare"><i
														class="icon-chart-bars"></i></a></li>
											</ul>
										</div>
										<div class="ps-product__container">
											<a class="ps-product__vendor" href="#">Young Shop</a>
											<div class="ps-product__content">
												<a class="ps-product__title" href="product-default.html">ASUS
													Chromebook Flip – 10.2 Inch</a>
												<div class="ps-product__rating">
													<div class="br-wrapper br-theme-fontawesome-stars">
														<select class="ps-rating" data-read-only="true"
															style="display: none;">
															<option value="1">1</option>
															<option value="1">2</option>
															<option value="1">3</option>
															<option value="1">4</option>
															<option value="2">5</option>
														</select>
														<div class="br-widget br-readonly">
															<a href="#" data-rating-value="1" data-rating-text="1"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="2"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="3"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="4"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="2" data-rating-text="5"></a>
															<div class="br-current-rating">1</div>
														</div>
													</div>
													<span>01</span>
												</div>
												<p class="ps-product__price sale">$332.38</p>
											</div>
											<div class="ps-product__content hover">
												<a class="ps-product__title" href="product-default.html">ASUS
													Chromebook Flip – 10.2 Inch</a>
												<p class="ps-product__price sale">$332.38</p>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item cloned"
									style="width: 245px; margin-right: 30px;">
									<div class="ps-product">
										<div class="ps-product__thumbnail">
											<a href="product-default.html"><img
												src="img/products/shop/16.jpg" alt=""></a>
											<div class="ps-product__badge">-7%</div>
											<ul class="ps-product__actions">
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
												<li><a href="#" data-placement="top" title="Quick View"
													data-toggle="modal" data-target="#product-quickview"><i
														class="icon-eye"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add to Whishlist"><i
														class="icon-heart"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title="" data-original-title="Compare"><i
														class="icon-chart-bars"></i></a></li>
											</ul>
										</div>
										<div class="ps-product__container">
											<a class="ps-product__vendor" href="#">Young Shop</a>
											<div class="ps-product__content">
												<a class="ps-product__title" href="product-default.html">Apple
													Macbook Retina Display 12"</a>
												<div class="ps-product__rating">
													<div class="br-wrapper br-theme-fontawesome-stars">
														<select class="ps-rating" data-read-only="true"
															style="display: none;">
															<option value="1">1</option>
															<option value="1">2</option>
															<option value="1">3</option>
															<option value="1">4</option>
															<option value="2">5</option>
														</select>
														<div class="br-widget br-readonly">
															<a href="#" data-rating-value="1" data-rating-text="1"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="2"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="3"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="4"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="2" data-rating-text="5"></a>
															<div class="br-current-rating">1</div>
														</div>
													</div>
													<span>01</span>
												</div>
												<p class="ps-product__price sale">
													$1200.00
													<del>$1362.99 </del>
												</p>
											</div>
											<div class="ps-product__content hover">
												<a class="ps-product__title" href="product-default.html">Apple
													Macbook Retina Display 12"</a>
												<p class="ps-product__price sale">
													$1200.00
													<del>$1362.99 </del>
												</p>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item cloned"
									style="width: 245px; margin-right: 30px;">
									<div class="ps-product">
										<div class="ps-product__thumbnail">
											<a href="product-default.html"><img
												src="img/products/shop/17.jpg" alt=""></a>
											<ul class="ps-product__actions">
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
												<li><a href="#" data-placement="top" title="Quick View"
													data-toggle="modal" data-target="#product-quickview"><i
														class="icon-eye"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add to Whishlist"><i
														class="icon-heart"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title="" data-original-title="Compare"><i
														class="icon-chart-bars"></i></a></li>
											</ul>
										</div>
										<div class="ps-product__container">
											<a class="ps-product__vendor" href="#">Robert's Store</a>
											<div class="ps-product__content">
												<a class="ps-product__title" href="product-default.html">Samsung
													UHD TV 24inch</a>
												<div class="ps-product__rating">
													<div class="br-wrapper br-theme-fontawesome-stars">
														<select class="ps-rating" data-read-only="true"
															style="display: none;">
															<option value="1">1</option>
															<option value="1">2</option>
															<option value="1">3</option>
															<option value="1">4</option>
															<option value="2">5</option>
														</select>
														<div class="br-widget br-readonly">
															<a href="#" data-rating-value="1" data-rating-text="1"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="2"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="3"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="4"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="2" data-rating-text="5"></a>
															<div class="br-current-rating">1</div>
														</div>
													</div>
													<span>01</span>
												</div>
												<p class="ps-product__price">$599.00</p>
											</div>
											<div class="ps-product__content hover">
												<a class="ps-product__title" href="product-default.html">Samsung
													UHD TV 24inch</a>
												<p class="ps-product__price">$599.00</p>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item cloned"
									style="width: 245px; margin-right: 30px;">
									<div class="ps-product">
										<div class="ps-product__thumbnail">
											<a href="product-default.html"><img
												src="img/products/shop/18.jpg" alt=""></a>
											<ul class="ps-product__actions">
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
												<li><a href="#" data-placement="top" title="Quick View"
													data-toggle="modal" data-target="#product-quickview"><i
														class="icon-eye"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add to Whishlist"><i
														class="icon-heart"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title="" data-original-title="Compare"><i
														class="icon-chart-bars"></i></a></li>
											</ul>
										</div>
										<div class="ps-product__container">
											<a class="ps-product__vendor" href="#">Robert's Store</a>
											<div class="ps-product__content">
												<a class="ps-product__title" href="product-default.html">EPSION
													Plaster Printer</a>
												<div class="ps-product__rating">
													<div class="br-wrapper br-theme-fontawesome-stars">
														<select class="ps-rating" data-read-only="true"
															style="display: none;">
															<option value="1">1</option>
															<option value="1">2</option>
															<option value="1">3</option>
															<option value="1">4</option>
															<option value="2">5</option>
														</select>
														<div class="br-widget br-readonly">
															<a href="#" data-rating-value="1" data-rating-text="1"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="2"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="3"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="4"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="2" data-rating-text="5"></a>
															<div class="br-current-rating">1</div>
														</div>
													</div>
													<span>01</span>
												</div>
												<p class="ps-product__price">$233.28</p>
											</div>
											<div class="ps-product__content hover">
												<a class="ps-product__title" href="product-default.html">EPSION
													Plaster Printer</a>
												<p class="ps-product__price">$233.28</p>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item cloned"
									style="width: 245px; margin-right: 30px;">
									<div class="ps-product">
										<div class="ps-product__thumbnail">
											<a href="product-default.html"><img
												src="img/products/shop/19.jpg" alt=""></a>
											<ul class="ps-product__actions">
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
												<li><a href="#" data-placement="top" title="Quick View"
													data-toggle="modal" data-target="#product-quickview"><i
														class="icon-eye"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add to Whishlist"><i
														class="icon-heart"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title="" data-original-title="Compare"><i
														class="icon-chart-bars"></i></a></li>
											</ul>
										</div>
										<div class="ps-product__container">
											<a class="ps-product__vendor" href="#">Robert's Store</a>
											<div class="ps-product__content">
												<a class="ps-product__title" href="product-default.html">EPSION
													Plaster Printer</a>
												<div class="ps-product__rating">
													<div class="br-wrapper br-theme-fontawesome-stars">
														<select class="ps-rating" data-read-only="true"
															style="display: none;">
															<option value="1">1</option>
															<option value="1">2</option>
															<option value="1">3</option>
															<option value="1">4</option>
															<option value="2">5</option>
														</select>
														<div class="br-widget br-readonly">
															<a href="#" data-rating-value="1" data-rating-text="1"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="2"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="3"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="4"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="2" data-rating-text="5"></a>
															<div class="br-current-rating">1</div>
														</div>
													</div>
													<span>01</span>
												</div>
												<p class="ps-product__price">$233.28</p>
											</div>
											<div class="ps-product__content hover">
												<a class="ps-product__title" href="product-default.html">EPSION
													Plaster Printer</a>
												<p class="ps-product__price">$233.28</p>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item" style="width: 245px; margin-right: 30px;">
									<div class="ps-product">
										<div class="ps-product__thumbnail">
											<a href="product-default.html"><img
												src="img/products/shop/11.jpg" alt=""></a>
											<ul class="ps-product__actions">
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
												<li><a href="#" data-placement="top" title="Quick View"
													data-toggle="modal" data-target="#product-quickview"><i
														class="icon-eye"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add to Whishlist"><i
														class="icon-heart"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title="" data-original-title="Compare"><i
														class="icon-chart-bars"></i></a></li>
											</ul>
										</div>
										<div class="ps-product__container">
											<a class="ps-product__vendor" href="#">Robert's Store</a>
											<div class="ps-product__content">
												<a class="ps-product__title" href="product-default.html">Men’s
													Sports Runnning Swim Board Shorts</a>
												<div class="ps-product__rating">
													<div class="br-wrapper br-theme-fontawesome-stars">
														<select class="ps-rating" data-read-only="true"
															style="display: none;">
															<option value="1">1</option>
															<option value="1">2</option>
															<option value="1">3</option>
															<option value="1">4</option>
															<option value="2">5</option>
														</select>
														<div class="br-widget br-readonly">
															<a href="#" data-rating-value="1" data-rating-text="1"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="2"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="3"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="4"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="2" data-rating-text="5"></a>
															<div class="br-current-rating">1</div>
														</div>
													</div>
													<span>01</span>
												</div>
												<p class="ps-product__price">$13.43</p>
											</div>
											<div class="ps-product__content hover">
												<a class="ps-product__title" href="product-default.html">Men’s
													Sports Runnning Swim Board Shorts</a>
												<p class="ps-product__price">$13.43</p>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item" style="width: 245px; margin-right: 30px;">
									<div class="ps-product">
										<div class="ps-product__thumbnail">
											<a href="product-default.html"><img
												src="img/products/shop/12.jpg" alt=""></a>
											<ul class="ps-product__actions">
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
												<li><a href="#" data-placement="top" title="Quick View"
													data-toggle="modal" data-target="#product-quickview"><i
														class="icon-eye"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add to Whishlist"><i
														class="icon-heart"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title="" data-original-title="Compare"><i
														class="icon-chart-bars"></i></a></li>
											</ul>
										</div>
										<div class="ps-product__container">
											<a class="ps-product__vendor" href="#">Global Office</a>
											<div class="ps-product__content">
												<a class="ps-product__title" href="product-default.html">Paul’s
													Smith Sneaker InWhite Color</a>
												<div class="ps-product__rating">
													<div class="br-wrapper br-theme-fontawesome-stars">
														<select class="ps-rating" data-read-only="true"
															style="display: none;">
															<option value="1">1</option>
															<option value="1">2</option>
															<option value="1">3</option>
															<option value="1">4</option>
															<option value="2">5</option>
														</select>
														<div class="br-widget br-readonly">
															<a href="#" data-rating-value="1" data-rating-text="1"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="2"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="3"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="4"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="2" data-rating-text="5"></a>
															<div class="br-current-rating">1</div>
														</div>
													</div>
													<span>01</span>
												</div>
												<p class="ps-product__price">$75.44</p>
											</div>
											<div class="ps-product__content hover">
												<a class="ps-product__title" href="product-default.html">Paul’s
													Smith Sneaker InWhite Color</a>
												<p class="ps-product__price">$75.44</p>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item" style="width: 245px; margin-right: 30px;">
									<div class="ps-product">
										<div class="ps-product__thumbnail">
											<a href="product-default.html"><img
												src="img/products/shop/13.jpg" alt=""></a>
											<div class="ps-product__badge">-7%</div>
											<ul class="ps-product__actions">
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
												<li><a href="#" data-placement="top" title="Quick View"
													data-toggle="modal" data-target="#product-quickview"><i
														class="icon-eye"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add to Whishlist"><i
														class="icon-heart"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title="" data-original-title="Compare"><i
														class="icon-chart-bars"></i></a></li>
											</ul>
										</div>
										<div class="ps-product__container">
											<a class="ps-product__vendor" href="#">Young Shop</a>
											<div class="ps-product__content">
												<a class="ps-product__title" href="product-default.html">MVMTH
													Classical Leather Watch In Black</a>
												<div class="ps-product__rating">
													<div class="br-wrapper br-theme-fontawesome-stars">
														<select class="ps-rating" data-read-only="true"
															style="display: none;">
															<option value="1">1</option>
															<option value="1">2</option>
															<option value="1">3</option>
															<option value="1">4</option>
															<option value="2">5</option>
														</select>
														<div class="br-widget br-readonly">
															<a href="#" data-rating-value="1" data-rating-text="1"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="2"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="3"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="4"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="2" data-rating-text="5"></a>
															<div class="br-current-rating">1</div>
														</div>
													</div>
													<span>01</span>
												</div>
												<p class="ps-product__price sale">
													$57.99
													<del>$62.99 </del>
												</p>
											</div>
											<div class="ps-product__content hover">
												<a class="ps-product__title" href="product-default.html">MVMTH
													Classical Leather Watch In Black</a>
												<p class="ps-product__price sale">
													$57.99
													<del>$62.99 </del>
												</p>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item" style="width: 245px; margin-right: 30px;">
									<div class="ps-product">
										<div class="ps-product__thumbnail">
											<a href="product-default.html"><img
												src="img/products/shop/14.jpg" alt=""></a>
											<div class="ps-product__badge">-7%</div>
											<ul class="ps-product__actions">
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
												<li><a href="#" data-placement="top" title="Quick View"
													data-toggle="modal" data-target="#product-quickview"><i
														class="icon-eye"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add to Whishlist"><i
														class="icon-heart"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title="" data-original-title="Compare"><i
														class="icon-chart-bars"></i></a></li>
											</ul>
										</div>
										<div class="ps-product__container">
											<a class="ps-product__vendor" href="#">Global Office</a>
											<div class="ps-product__content">
												<a class="ps-product__title" href="product-default.html">Beat
													Spill 2.0 Wireless Speaker – White</a>
												<div class="ps-product__rating">
													<div class="br-wrapper br-theme-fontawesome-stars">
														<select class="ps-rating" data-read-only="true"
															style="display: none;">
															<option value="1">1</option>
															<option value="1">2</option>
															<option value="1">3</option>
															<option value="1">4</option>
															<option value="2">5</option>
														</select>
														<div class="br-widget br-readonly">
															<a href="#" data-rating-value="1" data-rating-text="1"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="2"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="3"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="4"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="2" data-rating-text="5"></a>
															<div class="br-current-rating">1</div>
														</div>
													</div>
													<span>01</span>
												</div>
												<p class="ps-product__price sale">
													$57.99
													<del>$62.99 </del>
												</p>
											</div>
											<div class="ps-product__content hover">
												<a class="ps-product__title" href="product-default.html">Beat
													Spill 2.0 Wireless Speaker – White</a>
												<p class="ps-product__price sale">
													$57.99
													<del>$62.99 </del>
												</p>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item" style="width: 245px; margin-right: 30px;">
									<div class="ps-product">
										<div class="ps-product__thumbnail">
											<a href="product-default.html"><img
												src="img/products/shop/15.jpg" alt=""></a>
											<ul class="ps-product__actions">
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
												<li><a href="#" data-placement="top" title="Quick View"
													data-toggle="modal" data-target="#product-quickview"><i
														class="icon-eye"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add to Whishlist"><i
														class="icon-heart"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title="" data-original-title="Compare"><i
														class="icon-chart-bars"></i></a></li>
											</ul>
										</div>
										<div class="ps-product__container">
											<a class="ps-product__vendor" href="#">Young Shop</a>
											<div class="ps-product__content">
												<a class="ps-product__title" href="product-default.html">ASUS
													Chromebook Flip – 10.2 Inch</a>
												<div class="ps-product__rating">
													<div class="br-wrapper br-theme-fontawesome-stars">
														<select class="ps-rating" data-read-only="true"
															style="display: none;">
															<option value="1">1</option>
															<option value="1">2</option>
															<option value="1">3</option>
															<option value="1">4</option>
															<option value="2">5</option>
														</select>
														<div class="br-widget br-readonly">
															<a href="#" data-rating-value="1" data-rating-text="1"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="2"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="3"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="4"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="2" data-rating-text="5"></a>
															<div class="br-current-rating">1</div>
														</div>
													</div>
													<span>01</span>
												</div>
												<p class="ps-product__price sale">$332.38</p>
											</div>
											<div class="ps-product__content hover">
												<a class="ps-product__title" href="product-default.html">ASUS
													Chromebook Flip – 10.2 Inch</a>
												<p class="ps-product__price sale">$332.38</p>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item active"
									style="width: 245px; margin-right: 30px;">
									<div class="ps-product">
										<div class="ps-product__thumbnail">
											<a href="product-default.html"><img
												src="img/products/shop/16.jpg" alt=""></a>
											<div class="ps-product__badge">-7%</div>
											<ul class="ps-product__actions">
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
												<li><a href="#" data-placement="top" title="Quick View"
													data-toggle="modal" data-target="#product-quickview"><i
														class="icon-eye"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add to Whishlist"><i
														class="icon-heart"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title="" data-original-title="Compare"><i
														class="icon-chart-bars"></i></a></li>
											</ul>
										</div>
										<div class="ps-product__container">
											<a class="ps-product__vendor" href="#">Young Shop</a>
											<div class="ps-product__content">
												<a class="ps-product__title" href="product-default.html">Apple
													Macbook Retina Display 12"</a>
												<div class="ps-product__rating">
													<div class="br-wrapper br-theme-fontawesome-stars">
														<select class="ps-rating" data-read-only="true"
															style="display: none;">
															<option value="1">1</option>
															<option value="1">2</option>
															<option value="1">3</option>
															<option value="1">4</option>
															<option value="2">5</option>
														</select>
														<div class="br-widget br-readonly">
															<a href="#" data-rating-value="1" data-rating-text="1"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="2"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="3"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="4"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="2" data-rating-text="5"></a>
															<div class="br-current-rating">1</div>
														</div>
													</div>
													<span>01</span>
												</div>
												<p class="ps-product__price sale">
													$1200.00
													<del>$1362.99 </del>
												</p>
											</div>
											<div class="ps-product__content hover">
												<a class="ps-product__title" href="product-default.html">Apple
													Macbook Retina Display 12"</a>
												<p class="ps-product__price sale">
													$1200.00
													<del>$1362.99 </del>
												</p>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item active"
									style="width: 245px; margin-right: 30px;">
									<div class="ps-product">
										<div class="ps-product__thumbnail">
											<a href="product-default.html"><img
												src="img/products/shop/17.jpg" alt=""></a>
											<ul class="ps-product__actions">
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
												<li><a href="#" data-placement="top" title="Quick View"
													data-toggle="modal" data-target="#product-quickview"><i
														class="icon-eye"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add to Whishlist"><i
														class="icon-heart"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title="" data-original-title="Compare"><i
														class="icon-chart-bars"></i></a></li>
											</ul>
										</div>
										<div class="ps-product__container">
											<a class="ps-product__vendor" href="#">Robert's Store</a>
											<div class="ps-product__content">
												<a class="ps-product__title" href="product-default.html">Samsung
													UHD TV 24inch</a>
												<div class="ps-product__rating">
													<div class="br-wrapper br-theme-fontawesome-stars">
														<select class="ps-rating" data-read-only="true"
															style="display: none;">
															<option value="1">1</option>
															<option value="1">2</option>
															<option value="1">3</option>
															<option value="1">4</option>
															<option value="2">5</option>
														</select>
														<div class="br-widget br-readonly">
															<a href="#" data-rating-value="1" data-rating-text="1"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="2"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="3"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="4"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="2" data-rating-text="5"></a>
															<div class="br-current-rating">1</div>
														</div>
													</div>
													<span>01</span>
												</div>
												<p class="ps-product__price">$599.00</p>
											</div>
											<div class="ps-product__content hover">
												<a class="ps-product__title" href="product-default.html">Samsung
													UHD TV 24inch</a>
												<p class="ps-product__price">$599.00</p>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item active"
									style="width: 245px; margin-right: 30px;">
									<div class="ps-product">
										<div class="ps-product__thumbnail">
											<a href="product-default.html"><img
												src="img/products/shop/18.jpg" alt=""></a>
											<ul class="ps-product__actions">
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
												<li><a href="#" data-placement="top" title="Quick View"
													data-toggle="modal" data-target="#product-quickview"><i
														class="icon-eye"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add to Whishlist"><i
														class="icon-heart"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title="" data-original-title="Compare"><i
														class="icon-chart-bars"></i></a></li>
											</ul>
										</div>
										<div class="ps-product__container">
											<a class="ps-product__vendor" href="#">Robert's Store</a>
											<div class="ps-product__content">
												<a class="ps-product__title" href="product-default.html">EPSION
													Plaster Printer</a>
												<div class="ps-product__rating">
													<div class="br-wrapper br-theme-fontawesome-stars">
														<select class="ps-rating" data-read-only="true"
															style="display: none;">
															<option value="1">1</option>
															<option value="1">2</option>
															<option value="1">3</option>
															<option value="1">4</option>
															<option value="2">5</option>
														</select>
														<div class="br-widget br-readonly">
															<a href="#" data-rating-value="1" data-rating-text="1"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="2"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="3"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="4"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="2" data-rating-text="5"></a>
															<div class="br-current-rating">1</div>
														</div>
													</div>
													<span>01</span>
												</div>
												<p class="ps-product__price">$233.28</p>
											</div>
											<div class="ps-product__content hover">
												<a class="ps-product__title" href="product-default.html">EPSION
													Plaster Printer</a>
												<p class="ps-product__price">$233.28</p>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item active"
									style="width: 245px; margin-right: 30px;">
									<div class="ps-product">
										<div class="ps-product__thumbnail">
											<a href="product-default.html"><img
												src="img/products/shop/19.jpg" alt=""></a>
											<ul class="ps-product__actions">
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
												<li><a href="#" data-placement="top" title="Quick View"
													data-toggle="modal" data-target="#product-quickview"><i
														class="icon-eye"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add to Whishlist"><i
														class="icon-heart"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title="" data-original-title="Compare"><i
														class="icon-chart-bars"></i></a></li>
											</ul>
										</div>
										<div class="ps-product__container">
											<a class="ps-product__vendor" href="#">Robert's Store</a>
											<div class="ps-product__content">
												<a class="ps-product__title" href="product-default.html">EPSION
													Plaster Printer</a>
												<div class="ps-product__rating">
													<div class="br-wrapper br-theme-fontawesome-stars">
														<select class="ps-rating" data-read-only="true"
															style="display: none;">
															<option value="1">1</option>
															<option value="1">2</option>
															<option value="1">3</option>
															<option value="1">4</option>
															<option value="2">5</option>
														</select>
														<div class="br-widget br-readonly">
															<a href="#" data-rating-value="1" data-rating-text="1"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="2"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="3"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="4"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="2" data-rating-text="5"></a>
															<div class="br-current-rating">1</div>
														</div>
													</div>
													<span>01</span>
												</div>
												<p class="ps-product__price">$233.28</p>
											</div>
											<div class="ps-product__content hover">
												<a class="ps-product__title" href="product-default.html">EPSION
													Plaster Printer</a>
												<p class="ps-product__price">$233.28</p>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item cloned active"
									style="width: 245px; margin-right: 30px;">
									<div class="ps-product">
										<div class="ps-product__thumbnail">
											<a href="product-default.html"><img
												src="img/products/shop/11.jpg" alt=""></a>
											<ul class="ps-product__actions">
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
												<li><a href="#" data-placement="top" title="Quick View"
													data-toggle="modal" data-target="#product-quickview"><i
														class="icon-eye"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add to Whishlist"><i
														class="icon-heart"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title="" data-original-title="Compare"><i
														class="icon-chart-bars"></i></a></li>
											</ul>
										</div>
										<div class="ps-product__container">
											<a class="ps-product__vendor" href="#">Robert's Store</a>
											<div class="ps-product__content">
												<a class="ps-product__title" href="product-default.html">Men’s
													Sports Runnning Swim Board Shorts</a>
												<div class="ps-product__rating">
													<div class="br-wrapper br-theme-fontawesome-stars">
														<select class="ps-rating" data-read-only="true"
															style="display: none;">
															<option value="1">1</option>
															<option value="1">2</option>
															<option value="1">3</option>
															<option value="1">4</option>
															<option value="2">5</option>
														</select>
														<div class="br-widget br-readonly">
															<a href="#" data-rating-value="1" data-rating-text="1"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="2"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="3"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="4"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="2" data-rating-text="5"></a>
															<div class="br-current-rating">1</div>
														</div>
													</div>
													<span>01</span>
												</div>
												<p class="ps-product__price">$13.43</p>
											</div>
											<div class="ps-product__content hover">
												<a class="ps-product__title" href="product-default.html">Men’s
													Sports Runnning Swim Board Shorts</a>
												<p class="ps-product__price">$13.43</p>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item cloned active"
									style="width: 245px; margin-right: 30px;">
									<div class="ps-product">
										<div class="ps-product__thumbnail">
											<a href="product-default.html"><img
												src="img/products/shop/12.jpg" alt=""></a>
											<ul class="ps-product__actions">
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
												<li><a href="#" data-placement="top" title="Quick View"
													data-toggle="modal" data-target="#product-quickview"><i
														class="icon-eye"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add to Whishlist"><i
														class="icon-heart"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title="" data-original-title="Compare"><i
														class="icon-chart-bars"></i></a></li>
											</ul>
										</div>
										<div class="ps-product__container">
											<a class="ps-product__vendor" href="#">Global Office</a>
											<div class="ps-product__content">
												<a class="ps-product__title" href="product-default.html">Paul’s
													Smith Sneaker InWhite Color</a>
												<div class="ps-product__rating">
													<div class="br-wrapper br-theme-fontawesome-stars">
														<select class="ps-rating" data-read-only="true"
															style="display: none;">
															<option value="1">1</option>
															<option value="1">2</option>
															<option value="1">3</option>
															<option value="1">4</option>
															<option value="2">5</option>
														</select>
														<div class="br-widget br-readonly">
															<a href="#" data-rating-value="1" data-rating-text="1"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="2"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="3"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="4"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="2" data-rating-text="5"></a>
															<div class="br-current-rating">1</div>
														</div>
													</div>
													<span>01</span>
												</div>
												<p class="ps-product__price">$75.44</p>
											</div>
											<div class="ps-product__content hover">
												<a class="ps-product__title" href="product-default.html">Paul’s
													Smith Sneaker InWhite Color</a>
												<p class="ps-product__price">$75.44</p>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item cloned"
									style="width: 245px; margin-right: 30px;">
									<div class="ps-product">
										<div class="ps-product__thumbnail">
											<a href="product-default.html"><img
												src="img/products/shop/13.jpg" alt=""></a>
											<div class="ps-product__badge">-7%</div>
											<ul class="ps-product__actions">
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
												<li><a href="#" data-placement="top" title="Quick View"
													data-toggle="modal" data-target="#product-quickview"><i
														class="icon-eye"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add to Whishlist"><i
														class="icon-heart"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title="" data-original-title="Compare"><i
														class="icon-chart-bars"></i></a></li>
											</ul>
										</div>
										<div class="ps-product__container">
											<a class="ps-product__vendor" href="#">Young Shop</a>
											<div class="ps-product__content">
												<a class="ps-product__title" href="product-default.html">MVMTH
													Classical Leather Watch In Black</a>
												<div class="ps-product__rating">
													<div class="br-wrapper br-theme-fontawesome-stars">
														<select class="ps-rating" data-read-only="true"
															style="display: none;">
															<option value="1">1</option>
															<option value="1">2</option>
															<option value="1">3</option>
															<option value="1">4</option>
															<option value="2">5</option>
														</select>
														<div class="br-widget br-readonly">
															<a href="#" data-rating-value="1" data-rating-text="1"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="2"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="3"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="4"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="2" data-rating-text="5"></a>
															<div class="br-current-rating">1</div>
														</div>
													</div>
													<span>01</span>
												</div>
												<p class="ps-product__price sale">
													$57.99
													<del>$62.99 </del>
												</p>
											</div>
											<div class="ps-product__content hover">
												<a class="ps-product__title" href="product-default.html">MVMTH
													Classical Leather Watch In Black</a>
												<p class="ps-product__price sale">
													$57.99
													<del>$62.99 </del>
												</p>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item cloned"
									style="width: 245px; margin-right: 30px;">
									<div class="ps-product">
										<div class="ps-product__thumbnail">
											<a href="product-default.html"><img
												src="img/products/shop/14.jpg" alt=""></a>
											<div class="ps-product__badge">-7%</div>
											<ul class="ps-product__actions">
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
												<li><a href="#" data-placement="top" title="Quick View"
													data-toggle="modal" data-target="#product-quickview"><i
														class="icon-eye"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add to Whishlist"><i
														class="icon-heart"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title="" data-original-title="Compare"><i
														class="icon-chart-bars"></i></a></li>
											</ul>
										</div>
										<div class="ps-product__container">
											<a class="ps-product__vendor" href="#">Global Office</a>
											<div class="ps-product__content">
												<a class="ps-product__title" href="product-default.html">Beat
													Spill 2.0 Wireless Speaker – White</a>
												<div class="ps-product__rating">
													<div class="br-wrapper br-theme-fontawesome-stars">
														<select class="ps-rating" data-read-only="true"
															style="display: none;">
															<option value="1">1</option>
															<option value="1">2</option>
															<option value="1">3</option>
															<option value="1">4</option>
															<option value="2">5</option>
														</select>
														<div class="br-widget br-readonly">
															<a href="#" data-rating-value="1" data-rating-text="1"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="2"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="3"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="4"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="2" data-rating-text="5"></a>
															<div class="br-current-rating">1</div>
														</div>
													</div>
													<span>01</span>
												</div>
												<p class="ps-product__price sale">
													$57.99
													<del>$62.99 </del>
												</p>
											</div>
											<div class="ps-product__content hover">
												<a class="ps-product__title" href="product-default.html">Beat
													Spill 2.0 Wireless Speaker – White</a>
												<p class="ps-product__price sale">
													$57.99
													<del>$62.99 </del>
												</p>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item cloned"
									style="width: 245px; margin-right: 30px;">
									<div class="ps-product">
										<div class="ps-product__thumbnail">
											<a href="product-default.html"><img
												src="img/products/shop/15.jpg" alt=""></a>
											<ul class="ps-product__actions">
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
												<li><a href="#" data-placement="top" title="Quick View"
													data-toggle="modal" data-target="#product-quickview"><i
														class="icon-eye"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add to Whishlist"><i
														class="icon-heart"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title="" data-original-title="Compare"><i
														class="icon-chart-bars"></i></a></li>
											</ul>
										</div>
										<div class="ps-product__container">
											<a class="ps-product__vendor" href="#">Young Shop</a>
											<div class="ps-product__content">
												<a class="ps-product__title" href="product-default.html">ASUS
													Chromebook Flip – 10.2 Inch</a>
												<div class="ps-product__rating">
													<div class="br-wrapper br-theme-fontawesome-stars">
														<select class="ps-rating" data-read-only="true"
															style="display: none;">
															<option value="1">1</option>
															<option value="1">2</option>
															<option value="1">3</option>
															<option value="1">4</option>
															<option value="2">5</option>
														</select>
														<div class="br-widget br-readonly">
															<a href="#" data-rating-value="1" data-rating-text="1"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="2"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="3"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="4"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="2" data-rating-text="5"></a>
															<div class="br-current-rating">1</div>
														</div>
													</div>
													<span>01</span>
												</div>
												<p class="ps-product__price sale">$332.38</p>
											</div>
											<div class="ps-product__content hover">
												<a class="ps-product__title" href="product-default.html">ASUS
													Chromebook Flip – 10.2 Inch</a>
												<p class="ps-product__price sale">$332.38</p>
											</div>
										</div>
									</div>
								</div>
								<div class="owl-item cloned"
									style="width: 245px; margin-right: 30px;">
									<div class="ps-product">
										<div class="ps-product__thumbnail">
											<a href="product-default.html"><img
												src="img/products/shop/16.jpg" alt=""></a>
											<div class="ps-product__badge">-7%</div>
											<ul class="ps-product__actions">
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add To Cart"><i class="icon-bag2"></i></a></li>
												<li><a href="#" data-placement="top" title="Quick View"
													data-toggle="modal" data-target="#product-quickview"><i
														class="icon-eye"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title=""
													data-original-title="Add to Whishlist"><i
														class="icon-heart"></i></a></li>
												<li><a href="#" data-toggle="tooltip"
													data-placement="top" title="" data-original-title="Compare"><i
														class="icon-chart-bars"></i></a></li>
											</ul>
										</div>
										<div class="ps-product__container">
											<a class="ps-product__vendor" href="#">Young Shop</a>
											<div class="ps-product__content">
												<a class="ps-product__title" href="product-default.html">Apple
													Macbook Retina Display 12"</a>
												<div class="ps-product__rating">
													<div class="br-wrapper br-theme-fontawesome-stars">
														<select class="ps-rating" data-read-only="true"
															style="display: none;">
															<option value="1">1</option>
															<option value="1">2</option>
															<option value="1">3</option>
															<option value="1">4</option>
															<option value="2">5</option>
														</select>
														<div class="br-widget br-readonly">
															<a href="#" data-rating-value="1" data-rating-text="1"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="2"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="3"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="1" data-rating-text="4"
																class="br-selected br-current"></a><a href="#"
																data-rating-value="2" data-rating-text="5"></a>
															<div class="br-current-rating">1</div>
														</div>
													</div>
													<span>01</span>
												</div>
												<p class="ps-product__price sale">
													$1200.00
													<del>$1362.99 </del>
												</p>
											</div>
											<div class="ps-product__content hover">
												<a class="ps-product__title" href="product-default.html">Apple
													Macbook Retina Display 12"</a>
												<p class="ps-product__price sale">
													$1200.00
													<del>$1362.99 </del>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="owl-nav">
							<button type="button" role="presentation" class="owl-prev">
								<i class="icon-chevron-left"></i>
							</button>
							<button type="button" role="presentation" class="owl-next">
								<i class="icon-chevron-right"></i>
							</button>
						</div>
						<div class="owl-dots">
							<button role="button" class="owl-dot active">
								<span></span>
							</button>
							<button role="button" class="owl-dot">
								<span></span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../../components/footer.jsp"></jsp:include>
</body>