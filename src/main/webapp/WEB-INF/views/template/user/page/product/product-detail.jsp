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
										<c:if test="${product.enabled == false}">
											<div class="ps-product__badge out-stock"
												style="background-color: #000; color: #fff; font-size: 14px; font-weight: 600; line-height: 20px; padding: 5px 10px; border-radius: 4px;">
												Out Of Stock</div>
										</c:if>
										<div class="ps-product__gallery" data-arrow="true">
											<div class="item">
												<a
													href="${pageContext.request.contextPath}/product/display/0&${product.id}"><img
													src="${pageContext.request.contextPath}/product/display/0&${product.id}"
													alt="" style="width: 489px; height: 489px"></a>
											</div>
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
											src="${pageContext.request.contextPath}/product/display/0&${product.id}"
											alt="" style="width: 60px; height: 60px">
									</div>
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
										Brand:<a>${product.brand.name }</a>
									</p>
									<div class="ps-product__rating">
										<select class="ps-rating" data-read-only="true">
											<c:choose>
												<c:when test="${avgStar != null}">
													<option
														${(avgStar==0 || avgStar> 0) && avgStar < 1 ? "selected"
																: "" }
														value="0">0</option>
													<option
														${(avgStar==1 || avgStar> 1) && avgStar < 2 ? "selected"
																: "" }
														value="1">1</option>
													<option
														${(avgStar==2 || avgStar> 2) && avgStar < 3 ? "selected"
																: "" }
														value="2">2</option>
													<option
														${(avgStar==3 || avgStar> 3) && avgStar < 4 ? "selected"
																: "" }
														value="3">3</option>
													<option
														${(avgStar==4 || avgStar> 4) && avgStar < 5 ? "selected"
																: "" }
														value="4">4</option>
													<option ${avgStar==5 || avgStar> 5 ? "selected" : ""}
														value="5">5</option>
												</c:when>
												<c:otherwise>
													<option value="0">0</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
												</c:otherwise>
											</c:choose>
										</select><span>(${numberReview} review)</span>
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
								<c:if test="${product.enabled}">
									<div class="ps-product__shopping">
										<figure>
											<span style="color: red" class="invalid-${product.id}"></span>
											<figcaption>Quantity</figcaption>
											<div class="form-group--number">
												<button class="up" value="${product.id}">
													<i class="fa fa-plus"></i>
												</button>
												<button class="down" value="${product.id}">
													<i class="fa fa-minus"></i>
												</button>
												<div>
													<input class="form-control itemQty-${product.id}"
														type="text" placeholder="1" value="1" readonly>
												</div>
											</div>
										</figure>
										<a class="ps-btn ps-btn--black toCartDetail"
											value="${product.id}">Add to cart</a><a
											class="ps-btn buyNowDetail" value="${product.id}">Buy Now</a>
										<div class="ps-product__actions">
											<a onClick="addToWishList(${product.id})"
												data-toggle="tooltip" data-placement="top"
												title="Add to Wishlist"><i class="icon-heart"></i></a>
										</div>
									</div>
								</c:if>
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
													<h3>${avgStar }</h3>
													<select id="avgRating" class="ps-rating"
														data-read-only="true">
														<c:choose>
															<c:when test="${avgStar != null}">
																<option
																	${(avgStar==0 || avgStar> 0) && avgStar < 1
																			? "selected" : "" }
																	value="0">0</option>
																<option
																	${(avgStar==1 || avgStar> 1) && avgStar < 2
																			? "selected" : "" }
																	value="1">1</option>
																<option
																	${(avgStar==2 || avgStar> 2) && avgStar < 3
																			? "selected" : "" }
																	value="2">2</option>
																<option
																	${(avgStar==3 || avgStar> 3) && avgStar < 4
																			? "selected" : "" }
																	value="3">3</option>
																<option
																	${(avgStar==4 || avgStar> 4) && avgStar < 5
																			? "selected" : "" }
																	value="4">4</option>
																<option
																	${avgStar==5 || avgStar> 5 ? "selected" :
																		""}
																	value="5">5</option>
															</c:when>
															<c:otherwise>
																<option value="0">0</option>
																<option value="1">1</option>
																<option value="2">2</option>
																<option value="3">3</option>
																<option value="4">4</option>
																<option value="5">5</option>
															</c:otherwise>
														</c:choose>
													</select><span>${numberReview } Review</span>
												</div>
												<div class="ps-block__star">
													<span>5 Star</span>
													<div class="ps-progress" data-value="${star5}">
														<span></span>
													</div>
													<span>${nReview5}</span>
												</div>
												<div class="ps-block__star">
													<span>4 Star</span>
													<div class="ps-progress" data-value="${star4}">
														<span></span>
													</div>
													<span>${nReview4}</span>
												</div>
												<div class="ps-block__star">
													<span>3 Star</span>
													<div class="ps-progress" data-value="${star3}">
														<span></span>
													</div>
													<span>${nReview3}</span>
												</div>
												<div class="ps-block__star">
													<span>2 Star</span>
													<div class="ps-progress" data-value="${star2}">
														<span></span>
													</div>
													<span>${nReview2}</span>
												</div>
												<div class="ps-block__star">
													<span>1 Star</span>
													<div class="ps-progress" data-value="${star1}">
														<span></span>
													</div>
													<span>${nReview1}</span>
												</div>
											</div>
										</div>
										<div class="col-xl-7 col-lg-7 col-md-12 col-sm-12 col-12 ">
											<form id="frmReview" class="ps-form--review"
												action="${pageContext.request.contextPath}/product/review"
												method="POST">
												<h4>Submit Your Review</h4>
												<div class="form-group form-group__rating">
													<label>Your rating of this product</label> <select
														id="starNumber" name="starNumber" class="ps-rating"
														data-read-only="false">
														<c:choose>
															<c:when test="${rating != null}">
																<option ${rating.starNumber==0 ? "selected" : "" }
																	value="0">0</option>
																<option ${rating.starNumber==1 ? "selected" : "" }
																	value="1">1</option>
																<option ${rating.starNumber==2 ? "selected" : "" }
																	value="2">2</option>
																<option ${rating.starNumber==3 ? "selected" : "" }
																	value="3">3</option>
																<option ${rating.starNumber==4 ? "selected" : "" }
																	value="4">4</option>
																<option ${rating.starNumber==5 ? "selected" : "" }
																	value="5">5</option>
															</c:when>
															<c:otherwise>
																<option value="0">0</option>
																<option value="1">1</option>
																<option value="2">2</option>
																<option value="3">3</option>
																<option value="4">4</option>
																<option value="5">5</option>
															</c:otherwise>
														</c:choose>

													</select>
												</div>
												<div class="form-group">
													<input type="hidden" id="user" name="user" value="${user }">
													<input type="hidden" name="product" value="${product.id }">
													<textarea class="form-control" rows="6" id="review"
														name="review" placeholder="Write your review here"
														maxlength="250"><c:if test="${rating != null}">${rating.review }</c:if>
													</textarea>
												</div>
												<div class="form-group submit">
													<button id="btnSubmitReview" class="ps-btn">Submit
														Review</button>
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
							<i class="icon-store"></i> Sell on AngryNerds?<a
								href="${pageContext.servletContext.contextPath}/register">
								Register Now !</a>
						</p>
					</aside>
				</div>
			</div>

			<div class="ps-section--default">
				<div class="ps-section__header">
					<h3>Recent viewed</h3>
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
											href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}"
											onclick="addProductToViewList(${p.id})"><img
											src="${pageContext.request.contextPath}/product/display/0&${p.id}"
											alt="" width="203px" height="203px"></a>
										<c:choose>
											<c:when test="${p.enabled}">
												<ul class="ps-product__actions">
													<li class="toCart" value="${p.id}"><a
														data-toggle="tooltip" data-placement="top"
														title="Add To Cart"><i class="icon-bag2"></i></a></li>
													<li><a data-placement="top" title="Quick View"
														data-toggle="modal"
														data-target="#product-quickview-${p.id}"><i
															class="icon-eye"></i></a></li>
													<li><a onclick="addToWishList(${p.id})"
														data-toggle="tooltip" data-placement="top"
														title="Add to Wishlist"><i class="icon-heart"></i></a></li>
												</ul>
											</c:when>
											<c:otherwise>
												<div class="ps-product__badge out-stock">Out Of Stock</div>
											</c:otherwise>
										</c:choose>


									</div>
									<div class="ps-product__container">
										<div class="ps-product__content">
											<a class="ps-product__title"
												href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}"
												onclick="addProductToViewList(${p.id})">${p.productName}</a>
											<div class="ps-product__rating">
												<c:set var="avgView" value="${mapAvgStarByView[p.id]}"></c:set>
												<select class="ps-rating" data-read-only="true">
													<c:choose>
														<c:when test="${avgView != null}">
															<option
																${(avgView==0 || avgView> 0) && avg < 1
																			? "selected" : "" }
																value="0">0</option>
															<option
																${(avgView==1 || avgView> 1) && avgView < 2
																			? "selected" : "" }
																value="1">1</option>
															<option
																${(avgView==2 || avgView> 2) && avgView < 3
																			? "selected" : "" }
																value="2">2</option>
															<option
																${(avgView==3 || avgView> 3) && avgView < 4
																			? "selected" : "" }
																value="3">3</option>
															<option
																${(avgView==4 || avgView> 4) && avgView < 5
																			? "selected" : "" }
																value="4">4</option>
															<option
																${avgView==5 || avgView> 5 ? "selected" :
																		""}
																value="5">5</option>
														</c:when>
														<c:otherwise>
															<option value="0">0</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
														</c:otherwise>
													</c:choose>
												</select>
												<c:set var="rv" value="${mapReviewByView[p.id]}"></c:set>
												<span>(${rv} review)</span>
											</div>
											<p class="ps-product__price">$${p.price}</p>
										</div>
										<div class="ps-product__content hover">
											<a class="ps-product__title"
												href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}"
												onclick="addProductToViewList(${p.id})">${p.productName}</a>
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
											href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}"
											onclick="addProductToViewList(${p.id})"><img
											src="${pageContext.request.contextPath}/product/display/0&${p.id}"
											alt="" width="203px" height="203px"></a>
										<ul class="ps-product__actions">
											<li class="toCart" value="${p.id}"><a
												data-toggle="tooltip" data-placement="top"
												title="Add To Cart"><i class="icon-bag2"></i></a></li>
											<li><a data-placement="top" title="Quick View"
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
												href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}"
												onclick="addProductToViewList(${p.id})">${p.productName}</a>
											<div class="ps-product__rating">
												<c:set var="avg" value="${mapAvgStarByCategory[p.id]}"></c:set>
												<select class="ps-rating" data-read-only="true">
													<c:choose>
														<c:when test="${avg != null}">
															<option
																${(avg==0 || avg> 0) && avg < 1
																			? "selected" : "" }
																value="0">0</option>
															<option
																${(avg==1 || avg> 1) && avg < 2
																			? "selected" : "" }
																value="1">1</option>
															<option
																${(avg==2 || avg> 2) && avg < 3
																			? "selected" : "" }
																value="2">2</option>
															<option
																${(avg==3 || avg> 3) && avg < 4
																			? "selected" : "" }
																value="3">3</option>
															<option
																${(avg==4 || avg> 4) && avg < 5
																			? "selected" : "" }
																value="4">4</option>
															<option
																${avg==5 || avg> 5 ? "selected" :
																		""}
																value="5">5</option>
														</c:when>
														<c:otherwise>
															<option value="0">0</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
														</c:otherwise>
													</c:choose>
												</select>
												<c:set var="r" value="${mapReviewByCategory[p.id]}"></c:set>
												<span>(${r} review)</span>
											</div>
											<p class="ps-product__price">$${p.price}</p>
										</div>
										<div class="ps-product__content hover">
											<a class="ps-product__title"
												href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}"
												onclick="addProductToViewList(${p.id})">${p.productName}</a>
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
	<jsp:include page="../../components/footer.jsp"></jsp:include>
	<script>
			//@Author Lam Cong Hau
			var countWish = document.querySelector('#countWish');
			var cookie = document.cookie;
			var arr_product;
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
				xhr.addEventListener("readystatechange", function () {
					if (this.readyState === this.DONE) {
						if (this.responseText === "successful") {
							msg("Add to wishlist sucessful!");
						} else if (this.responseText === "failed") {
							msg("You can only add 1 time!");
						}
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
				xhr.addEventListener("readystatechange", function () {
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
	<script>

			$(document).ready(function () {
				// var cartItems = [];
				// var products = [];
				// window.onload = initData();
				// function initData() {
				// 	initCartItem();
				// 	getAllProducts();
				// }

				//////////////////////////////////////////////////
				//increase Qty
				$(document).on("click", ".up", function (event) {
					var productId = this.value;
					var qty = document.querySelector('.itemQty-' + this.value);
					var invalid = document.querySelector('.invalid-' + this.value);
					var invalidText = document.querySelector('.invalid-text-' + this.value)
					// alert(invalidText)
					if (checkStock(productId, qty.value)) {
						qty.value = Number(qty.value) + 1
						updateCartItems(new URLSearchParams(window.location.search).get("id"), qty.value)
						if (invalidText != null) {
							invalidText.remove()
						}
					} else {
						event.preventDefault()
						invalid.innerHTML = "<div class='invalid-text-" + this.value + "'>Out of Stock !</div>"
					}

				});

				function checkStock(productId, qty) {
					for (let i = 0; i < products.length; i++) {
						if (products[i].id == productId) {
							if (qty < products[i].stockQuantity) {
								return true;
							} else {
								return false;
							}
						}
					}
					return false;
				}

				//decrease Qty
				$(document).on("click", ".down", function (event) {
					var productId = this.value;
					var qty = document.querySelector('.itemQty-' + this.value);
					var invalidText = document.querySelector('.invalid-text-' + this.value)
					if (Number(qty.value) != 1) {
						qty.value = Number(qty.value) - 1
						if (invalidText != null) {
							invalidText.remove()
						}
					} else {
						event.preventDefault()

					}
					updateCartItems(new URLSearchParams(window.location.search).get("id"), qty.value)
				});

				function findProduct(productId) {
					// initCartItem();
					console.log("id: " + productId)
					var qty = document.querySelector('.itemQty-' + productId);
					const data = null;
					const xhr = new XMLHttpRequest();
					xhr.addEventListener("readystatechange", function () {
						if (this.readyState === this.DONE) {
							var json = JSON.parse(this.responseText);
							console.log(json)

							if (cartItems.length > 0) {
								if (!updateCartItems(productId, qty.value)) {
									json.sellingQuantity = qty.value
									cartItems.push(json)
								}
								console.log("CartItem Product detail->>>>>")
								console.log(cartItems)
							} else {
								json.sellingQuantity = qty.value
								cartItems.push(json)
								console.log("CartItem Product detail->>>>>")
								console.log(cartItems)
							}
							console.log("Update CartItem Product detail->>>>>")
							updateCartItemsCookieDataDetail()

						}
					});

					xhr.open("GET", "${pageContext.servletContext.contextPath}/cart/get?productId=" + productId);
					xhr.setRequestHeader('Content-type', 'application/json');
					xhr.send(data);
				}


				function updateCartItems(productId, Qty) {
					if (cartItems.length > 0) {
						for (let i = 0; i < cartItems.length; i++) {
							if (cartItems[i].product.id == productId) {
								cartItems[i].sellingQuantity = parseInt(Qty)
								cartItems[i].totalPrice = parseInt(cartItems[0].sellingQuantity) * parseFloat(cartItems[i].product.price)
								return true;
							}
						}
					}
					return false;
				}

				//add to Cart
				$(document).on("click", ".toCartDetail", function (event) {
					// alert(cartItems[0].sellingQuantity)
					findProduct(new URLSearchParams(window.location.search).get("id"));
					// updateCartItemsCookieData(cartItems)
					msg("Add to cart sucessful !");

				});

				$(document).on("click", ".buyNowDetail", function (event) {
					// updateCartItemsCookie(cartItems)
					var user = '${user}'
					findProduct(new URLSearchParams(window.location.search).get("id"));
					window.setTimeout(function () {
						if (user !== "") {
							window.location.href = "${pageContext.servletContext.contextPath}/customer/product/checkout-page";
						} else {
							window.location.href = "${pageContext.servletContext.contextPath}/cart";
						}
					}, 500)
				});



				function toCart(value, event) {
					if (checkStock(value, getCartProductQty(value))) {
						addItemToCart("${pageContext.servletContext.contextPath}/cart/get?productId=" + value)
					} else {
						event.preventDefault()
					}
				}

				function getCartProductQty(productId) {
					if (cartItems.length > 0) {
						for (let i = 0; i < cartItems.length; i++) {
							if (cartItems[i].product.id == productId) {
								return cartItems[i].sellingQuantity
							}
						}
					}
					return null;
				}

				function addItemToCart(url) {
					const data = null;
					const xhr = new XMLHttpRequest();
					xhr.addEventListener("readystatechange", function () {
						if (this.readyState === this.DONE) {
							var json = JSON.parse(this.responseText);
							console.log(json)
							if (cartItems.length > 0) {
								var count = 0;
								for (let i = 0; i < cartItems.length; i++) {
									//if duplicate sellingQuantity +=1
									if (cartItems[i].product.id == json.product.id) {
										cartItems[i].sellingQuantity += 1
										cartItems[i].totalPrice = parseFloat(cartItems[i].product.price) * parseInt(cartItems[i].sellingQuantity)
										count += 1
									}
								}
								if (count == 0) {
									cartItems.push(json)
									countCartItems()
								}
								updateCartItemsCookie(cartItems)
								showCartItems()
								console.log(cartItems)
							} else {
								cartItems.push(json)
								console.log(cartItems)
								countCartItems()
								showCartItems()
								updateCartItemsCookie(cartItems)
							}

						}
					});

					xhr.open("GET", url);
					xhr.setRequestHeader('Content-type', 'application/json');
					xhr.send(data);
				}

				function updateCartItemsCookieDataDetail() {
					var value = "[]";
					if (cartItems.length > 0) {
						value = "["
						for (let i = 0; i < cartItems.length; i++) {
							value += JSON.stringify(cartItems[i]) + ","
						}
						value = value.substring(0, value.length - 1)
						value += "]"
					}

					const data = value;
					const xhr = new XMLHttpRequest();
					xhr.addEventListener("readystatechange", function () {
						if (this.readyState === this.DONE) {
							var json = JSON.parse(this.responseText);
							// if (json.length>0){
							console.log(json)
							cartItems = json
							countCartItems();
							showCartItems();
							// }

						}
					});

					xhr.open("POST", "${pageContext.servletContext.contextPath}/cart/update");
					xhr.setRequestHeader('Content-type', 'application/json');
					console.log(data)
					xhr.send(data);

				}
			})

			function msg(value) {
				var style = value;
				var time = 1200;
				var message;
				switch (value) {
					case "alert-success": message = "Successful !"; break;
					case "alert_warning": message = "error warning"; break;
					case "alert-danger": message = "Failed !"; break;
					case "alert_info": message = "Data not found"; break;
					default:
						if (value.includes("invalid") || value.includes("failed") || value.includes("only")) {
							style = "alert-danger";
						} else {
							style = "alert-success";
						}
						message = value;
				}
				var height = ($(window).height() - 45) / 5;

				if ($(window).scrollTop() >= height) {
					height = ($(window).scrollTop() + 70)
				}


				$('<div id="promptModal">')
					.appendTo('body')
					.addClass('alert ' + style)
					.css({
						"display": "block",
						"z-index": 99999,
						"left": ($(document.body).outerWidth(true) - 200),
						"top": height,
						"position": "absolute",
						"padding": "20px",
						"border-radius": "5px",
						"width": "200px",
						"text-align": "center",

					})
					.html(message)
					.show()
					.delay(time)
					.fadeOut(10, function () {
						$('#promptModal').remove();
					});


			}
		</script>
	<!-- <script>
			$(document).ready(function () {
				$('#btnSubmitReview').on('click', function () {
					let user = $('#user');
					$.ajax({
						method: $('#frmReview').attr('method'),
						url: $('#frmReview').attr('action'),
						data: $('#frmReview').serialize(),
						success: function (data) {
							console.log(data.message);
							if (data.message === 'success') {
								msg("Review sucessful!");
							} else if (data.message === 'not login') {
								if (user.val() === "") {
									window.location.href = "/login";
								}
								msg("Review failed!");
							} else if (data.message === 'customer not exists') {
								window.location.href = "/customer/info";
								msg("invalid, please enter your information!");
							} else if (data.message === 'admin not review') {
								msg("invalid, admin has no rights!");
							}
						}
					});
				});
			});
		</script> -->
</body>