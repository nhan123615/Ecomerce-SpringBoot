<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="../components/head.jsp"></jsp:include>

<body>
	<jsp:include page="../components/header.jsp"></jsp:include>
	<jsp:include page="../components/sidebar.jsp"></jsp:include>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div id="homepage-1">


		<div class="ps-home-banner ps-home-banner--1">
			<div class="ps-container" style="margin-top: 10px">
				<div class="ps-section__left" style="margin-left: 15%">
					<div class="ps-carousel--nav-inside owl-slider"
						data-owl-auto="true" data-owl-loop="true" data-owl-speed="5000"
						data-owl-gap="0" data-owl-nav="true" data-owl-dots="true"
						data-owl-item="1" data-owl-item-xs="1" data-owl-item-sm="1"
						data-owl-item-md="1" data-owl-item-lg="1" data-owl-duration="1000"
						data-owl-mousedrag="on" data-owl-animate-in="fadeIn"
						data-owl-animate-out="fadeOut" style="width: 2500px">

						<c:forEach items="${listBanner}" var="b">
							<div class="ps-banner bg--cover"
								data-background="${pageContext.request.contextPath}/banner/display/${b.id}"
								style="background-repeat: no-repeat; background-position: center center;">
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="ps-section__right">
					<a class="ps-collection">
						<div style="height: 450px"></div>
					</a>
				</div>

			</div>
		</div>
		<div class="ps-site-features">
			<div class="ps-container">
				<div class="ps-block--site-features">
					<div class="ps-block__item">
						<div class="ps-block__left">
							<i class="icon-rocket"></i>
						</div>
						<div class="ps-block__right">
							<h4>Free Delivery</h4>
							<p>For all oders over $99</p>
						</div>
					</div>
					<div class="ps-block__item">
						<div class="ps-block__left">
							<i class="icon-sync"></i>
						</div>
						<div class="ps-block__right">
							<h4>90 Days Return</h4>
							<p>If goods have problems</p>
						</div>
					</div>
					<div class="ps-block__item">
						<div class="ps-block__left">
							<i class="icon-credit-card"></i>
						</div>
						<div class="ps-block__right">
							<h4>Secure Payment</h4>
							<p>100% secure payment</p>
						</div>
					</div>
					<div class="ps-block__item">
						<div class="ps-block__left">
							<i class="icon-bubbles"></i>
						</div>
						<div class="ps-block__right">
							<h4>24/7 Support</h4>
							<p>Dedicated support</p>
						</div>
					</div>
					<div class="ps-block__item">
						<div class="ps-block__left">
							<i class="icon-gift"></i>
						</div>
						<div class="ps-block__right">
							<h4>Gift Service</h4>
							<p>Support gift service</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%--    top product--%>
		<div class="ps-product-list ps-clothings">
			<div class="ps-container">

				<div class="ps-section__header">
					<div class="ps-block--countdown-deal">
						<div class="ps-block__right">
							<figure>
								<figcaption>Top 5 Products</figcaption>
							</figure>
						</div>
					</div>
				</div>

				<div class="ps-section__content">
					<div class="ps-carousel--nav owl-slider" data-owl-auto="false"
						data-owl-loop="false" data-owl-speed="10000" data-owl-gap="0"
						data-owl-nav="true" data-owl-dots="true" data-owl-item="7"
						data-owl-item-xs="2" data-owl-item-sm="2" data-owl-item-md="3"
						data-owl-item-lg="4" data-owl-item-xl="6" data-owl-duration="1000"
						data-owl-mousedrag="on">
						<c:forEach items="${topProducts}" var="p">
							<div class="ps-product">
								<div class="ps-product__thumbnail">
									<a
										href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}"
										onclick="addProductToViewList(${p.id})"><img
										src="${pageContext.request.contextPath}/product/display/0&${p.id}"
										alt="" style="width: 218px; height: 218px"></a>

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
												<li><a data-toggle="tooltip" data-placement="top"
													title="Add to Whishlist" onclick="addToWishList(${p.id})"><i
														class="icon-heart"></i></a></li>
											</ul>
										</c:when>
										<c:otherwise>
											<div class="ps-product__badge out-stock">Out Of Stock</div>
										</c:otherwise>
									</c:choose>

								</div>
								<div class="ps-product__container">
									<a class="ps-product__vendor"
										href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}"
										onclick="addProductToViewList(${p.id})">Angry Nerds</a>
									<div class="ps-product__content">
										<a class="ps-product__title"
											href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}"
											onclick="addProductToViewList(${p.id})">${p.productName}</a>
										<div class="ps-product__rating">
											<c:set var="avgTop5" value="${mapAvgStarByTop5[p.id]}"></c:set>
											<select class="ps-rating" data-read-only="true">
												<c:choose>
													<c:when test="${avgTop5 != null}">
														<option
															${(avgTop5==0 || avgTop5> 0) && avgTop5 < 1
																			? "selected" : "" }
															value="0">0</option>
														<option
															${(avgTop5==1 || avgTop5> 1) && avgTop5 < 2
																			? "selected" : "" }
															value="1">1</option>
														<option
															${(avgTop5==2 || avgTop5> 2) && avgTop5 < 3
																			? "selected" : "" }
															value="2">2</option>
														<option
															${(avgTop5==3 || avgTop5> 3) && avgTop5 < 4
																			? "selected" : "" }
															value="3">3</option>
														<option
															${(avgTop5==4 || avgTop5> 4) && avgTop5 < 5
																			? "selected" : "" }
															value="4">4</option>
														<option
															${avgTop5==5 || avgTop5> 5 ? "selected" :
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
											<c:set var="r" value="${mapReviewByTop5[p.id]}"></c:set>
											<span>(${r} review)</span>
										</div>
										<p class="ps-product__price sale">
											$
											<fmt:formatNumber type="number" value="${p.price}" />

										</p>
									</div>
									<div class="ps-product__content hover">
										<a class="ps-product__title"
											href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}"
											onclick="addProductToViewList(${p.id})">${p.productName}</a>
										<p class="ps-product__price sale">
											$
											<fmt:formatNumber type="number" value="${p.price}" />
										</p>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>

			</div>
		</div>

		<%--    top product--%>

		<c:forEach items="${categories}" var="c">
			<c:if test="${not empty productByCategory[c.name]}">
				<div class="ps-product-list ps-clothings">
					<div class="ps-container">
						<div class="ps-section__header">
							<h3>${c.name}</h3>
							<ul class="ps-section__links">
								<li><a
									href="${pageContext.servletContext.contextPath}/product?category=${c.id}">View
										All</a></li>
							</ul>
						</div>

						<div class="ps-section__content">
							<div class="ps-carousel--nav owl-slider" data-owl-auto="false"
								data-owl-loop="false" data-owl-speed="10000" data-owl-gap="0"
								data-owl-nav="true" data-owl-dots="true" data-owl-item="7"
								data-owl-item-xs="2" data-owl-item-sm="2" data-owl-item-md="3"
								data-owl-item-lg="4" data-owl-item-xl="6"
								data-owl-duration="1000" data-owl-mousedrag="on">
								<c:forEach items="${productByCategory[c.name]}" var="p">
									<div class="ps-product">
										<div class="ps-product__thumbnail">
											<a
												href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}"
												onclick="addProductToViewList(${p.id})"><img
												src="${pageContext.request.contextPath}/product/display/0&${p.id}"
												alt="" style="width: 218px; height: 218px"></a>

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
														<li><a data-toggle="tooltip" data-placement="top"
															title="Add to Whishlist" onclick="addToWishList(${p.id})"><i
																class="icon-heart"></i></a></li>
													</ul>
												</c:when>
												<c:otherwise>
													<div class="ps-product__badge out-stock">Out Of Stock</div>
												</c:otherwise>
											</c:choose>

										</div>
										<div class="ps-product__container">
											<a class="ps-product__vendor"
												href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}"
												onclick="addProductToViewList(${p.id})">Angry Nerds</a>
											<div class="ps-product__content">
												<a class="ps-product__title"
													href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}"
													onclick="addProductToViewList(${p.id})">${p.productName}</a>
												<div class="ps-product__rating">
													<c:set var="mapAvgStarByCategoryProduct"
														value="${mapAvgStarByCategory[c.name]}"></c:set>
													<c:set var="avgCategory"
														value="${mapAvgStarByCategoryProduct[p.id]}"></c:set>
													<select class="ps-rating" data-read-only="true">
														<c:choose>
															<c:when test="${avgCategory != null}">
																<option
																	${(avgCategory==0 || avgCategory> 0) && avgCategory < 1
																			? "selected" : "" }
																	value="0">0</option>
																<option
																	${(avgCategory==1 || avgCategory> 1) && avgCategory < 2
																			? "selected" : "" }
																	value="1">1</option>
																<option
																	${(avgCategory==2 || avgCategory> 2) && avgCategory < 3
																			? "selected" : "" }
																	value="2">2</option>
																<option
																	${(avgCategory==3 || avgCategory> 3) && avgCategory < 4
																			? "selected" : "" }
																	value="3">3</option>
																<option
																	${(avgCategory==4 || avgCategory> 4) && avgCategory < 5
																			? "selected" : "" }
																	value="4">4</option>
																<option
																	${avgCategory==5 || avgCategory> 5 ? "selected" :
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
													<c:set var="mapReviewByCategoryProduct"
														value="${mapReviewByCategory[c.name]}"></c:set>
													<c:set var="r" value="${mapReviewByCategoryProduct[p.id]}"></c:set>
													<span>(${r} review)</span>

												</div>
												<p class="ps-product__price sale">
													$
													<fmt:formatNumber type="number" value="${p.price}" />

												</p>
											</div>
											<div class="ps-product__content hover">
												<a class="ps-product__title"
													href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}"
													onclick="addProductToViewList(${p.id})">${p.productName}</a>
												<p class="ps-product__price sale">
													$
													<fmt:formatNumber type="number" value="${p.price}" />
												</p>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>

					</div>
				</div>
			</c:if>
		</c:forEach>
		<c:if test="${not empty viewlist}">
			<div class="ps-page--product">
				<div class="ps-container">
					<div class="ps-section--default">
						<div class="ps-section__header">
							<h3>Recent viewed</h3>
						</div>
						<div class="ps-section__content">
							<div class="ps-carousel--nav owl-slider" data-owl-auto="true"
								data-owl-loop="false" data-owl-speed="10000" data-owl-gap="30"
								data-owl-nav="true" data-owl-dots="true" data-owl-item="6"
								data-owl-item-xs="2" data-owl-item-sm="2" data-owl-item-md="3"
								data-owl-item-lg="4" data-owl-item-xl="5"
								data-owl-duration="1000" data-owl-mousedrag="on">
								<%--						<c:if test="${viewlist != null}">--%>
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
														<li><a onClick="addToWishList(${p.id})"
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
								<%--						</c:if>--%>
							</div>
						</div>
					</div>

				</div>
			</div>
		</c:if>



	</div>
	<jsp:include page="../components/footer.jsp"></jsp:include>
	<script>
	function addToWishList(id) {
		const data = null;
		const xhr = new XMLHttpRequest();
		xhr.addEventListener("readystatechange", function() {
			if (this.readyState === this.DONE) {
				if(this.responseText === "successful"){
					msg("Add to wishlist sucessful!");
				}else if(this.responseText === "failed"){
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
		xhr.addEventListener("readystatechange", function() {
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

