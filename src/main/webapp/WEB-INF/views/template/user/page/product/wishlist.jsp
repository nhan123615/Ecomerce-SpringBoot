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
	<div class="ps-section--shopping ps-whishlist">
		<div class="container">
			<div class="ps-section__header">
				<h1>Wish list</h1>
			</div>
			<div class="ps-section__content">
				<div class="table-responsive">
					<table class="table ps-table--whishlist ps-table--responsive">
						<thead>
							<tr>
								<th></th>
								<th>Product name</th>
								<th>Unit Price</th>
								<th>Status</th>
								<th></th>
							</tr>
						</thead>
						<tbody id="wishProductTable">
							<c:choose>
								<c:when test="${not empty wishlist}">
									<c:forEach var="product" items="${wishlist}">
										<tr>
											<td data-label="Remove"><a href="javascript:void(0);"
												onClick="removeFromWishList(${product.id})"><i
													class="icon-cross"></i></a></td>
											<td data-label="Product">
												<div class="ps-product--cart">
													<div class="ps-product__thumbnail">
														<a href="${pageContext.servletContext.contextPath}/product/detail?id=${product.id}"><img
															src="${pageContext.request.contextPath}/product/display/0&${product.id}"
															alt="" width="100px" height="100px"></a>
													</div>
													<div class="ps-product__content">
														<a href="${pageContext.servletContext.contextPath}/product/detail?id=${product.id}">${product.productName }</a>
														<p>
															Sold By:<strong> Angry-Nerds SHOP</strong>
														</p>
													</div>
												</div>
											</td>
											<td class="price text-center" data-label="Price">$${product.price
												}</td>
											<td data-label="Status" class="text-center"><span
												class="ps-tag ps-tag--in-stock ">${product.enabled }</span></td>
											<td data-label="action"><a class="ps-btn" href="#">Add
													to cart</a></td>
										</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<tr>
										<td colspan="5" class="text-center"><h1>No wish list found !!!</h1></td>
									</tr>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../../components/footer.jsp"></jsp:include>
</body>