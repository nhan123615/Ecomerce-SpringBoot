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
	<main class="ps-page--my-account">
		<section class="ps-section--account">
			<div class="container">
				<div class="row">
					<div class="col-lg-4">
						<%--                    side bar--%>
						<jsp:include page="../customer-sidebar.jsp"></jsp:include>
						<%--                    side bar--%>

					</div>

					<div class="col-lg-8" style="margin-top: 80px;">
						<div class="ps-section__right " style="padding-left: 30px">
							<div class="ps-section--account-setting">
								<%--                            <div class="ps-section--default">--%>
								<div class="ps-section__header">
									<h3>Recent viewed</h3>
								</div>
								<%--                                <div class="ps-section__content">--%>
								<div class="ps-carousel--nav owl-slider" data-owl-auto="true"
									data-owl-loop="false" data-owl-speed="10000" data-owl-gap="30"
									data-owl-nav="true" data-owl-dots="true" data-owl-item="4"
									data-owl-item-xs="2" data-owl-item-sm="2" data-owl-item-md="3"
									data-owl-item-lg="3" data-owl-item-xl="3"
									data-owl-duration="1000" data-owl-mousedrag="on">
									${viewlist.size() ==1 ? "<div class='ps-product'></div>":""}
									<c:choose>
										<c:when test="${not empty viewlist}">
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
																<div class="ps-product__badge out-stock">Out Of
																	Stock</div>
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
																href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}">${p.productName}</a>
															<p class="ps-product__price">$${p.price}</p>
														</div>
													</div>
												</div>
											</c:forEach>

										</c:when>
										<c:otherwise>
											<h2>No Products Recently Viewed !</h2>
										</c:otherwise>
									</c:choose>
								</div>
								<%--                                </div>--%>
								<%--                            </div>--%>

							</div>
						</div>

					</div>
				</div>
			</div>
		</section>
	</main>
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

    $(document).ready(function(){
        // var cartItems = [];
        // var products = [];
        // window.onload = initData();
        // function initData() {
        //     // initCartItem();
        //     getAllProducts();
        // }

//////////////////////////////////////////////////

        function checkStock(productId,qty){
            for (let i = 0; i < products.length ; i++) {
                if (products[i].id == productId){
                    if (qty < products[i].stockQuantity){
                        return true;
                    }else{
                        return false;
                    }
                }
            }
            return false;
        }


        function getAllProducts(){

            const data = null;
            const xhr = new XMLHttpRequest();
            xhr.addEventListener("readystatechange", function () {
                if (this.readyState === this.DONE) {
                    var json = JSON.parse(this.responseText);
                    console.log(json)
                    products = json
                }
            });

            xhr.open("GET", "${pageContext.servletContext.contextPath}/filter/getAllProducts");
            xhr.setRequestHeader('Content-type', 'application/json');
            xhr.send(data);
        }

        function initCartItem() {
            const data = null;
            const xhr = new XMLHttpRequest();
            xhr.addEventListener("readystatechange", function () {
                if (this.readyState === this.DONE) {
                    var json = JSON.parse(this.responseText);
                    console.log(json)
                    cartItems.push(json)

                }
            });

            xhr.open("GET", "${pageContext.servletContext.contextPath}/cart/get?productId="+new URLSearchParams(window.location.search).get("id"));
            xhr.setRequestHeader('Content-type', 'application/json');
            xhr.send(data);
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
            if (cartItems.length ==0){
                document.getElementById('cart-content-1').setAttribute("style", "display: none;");
                document.getElementById('cart-content-2').setAttribute("style", "display: none;");
            }
        }


        function getCartItemContent(items) {
            var cartItemContent ="";
            var user = '${user}'
            if (cartItems.length >0){
                var totalPrice = 0;
                for (let i = 0; i < cartItems.length; i++) {
                    totalPrice += cartItems[i].totalPrice
                    cartItemContent += "<div class='ps-cart__items'>";
                    cartItemContent +="<div class='ps-product--cart-mobile'>"
                    cartItemContent +="<div class='ps-product__thumbnail'><a href='#'><img src='${pageContext.request.contextPath}/product/display/0&"+cartItems[i].product.id+"' alt=''></a></div>"
                    cartItemContent +="<div class='ps-product__content '><a class='ps-product__remove removeCartProduct ' value='"+cartItems[i].product.id+"' ><i class='icon-cross ' ></i></a><a href='product-default.html'>"+cartItems[i].product.productName+"</a>"
                    cartItemContent +="<p><strong>Sold by:</strong>  ANGRY NERDS</p><small>"+cartItems[i].sellingQuantity+" x $"+cartItems[i].product.price+"</small>"
                    cartItemContent +=" </div> </div>"
                    cartItemContent +=" </div>"
                }
                cartItemContent+="<hr>"
                cartItemContent+="<div class='ps-cart__footer'>"
                cartItemContent += "<h3>Sub Total:<strong>$"+totalPrice+"</strong></h3>"
                if (user !==""){
                    cartItemContent +="<figure><a class='ps-btn' href='${pageContext.servletContext.contextPath}/customer/product/checkout-page'>View Cart</a><a class='ps-btn checkout' href='${pageContext.servletContext.contextPath}/customer/product/checkout'>Checkout</a></figure>"
                }else{
                    cartItemContent +="<figure><a class='ps-btn' href='${pageContext.servletContext.contextPath}/cart'>View Cart</a><a class='ps-btn checkout' href='${pageContext.servletContext.contextPath}/customer/product/checkout'>Checkout</a></figure>"
                }
                cartItemContent +=" </div>"
            }
            return cartItemContent;
        }

        function updateCartItems(productId,Qty) {
            if (cartItems.length>0){
                for (let i = 0; i < cartItems.length; i++) {
                    if (cartItems[i].product.id == productId){
                        cartItems[i].sellingQuantity = parseInt(Qty)
                        cartItems[i].totalPrice =  parseInt(cartItems[0].sellingQuantity) * parseFloat(cartItems[i].product.price)
                    }
                }
            }
        }

        //add to Cart
        $(document).on("click",".toCartDetail", function(event){
            alert(cartItems[0].sellingQuantity)
            updateCartItemsCookie(cartItems)
        });

        $(document).on("click",".buyNow", function(event){
            var user = '${user}'
            updateCartItemsCookie(cartItems)
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
                            countCartItems()
                        }
                        updateCartItemsCookie(cartItems)
                        showCartItems()
                        console.log(cartItems)
                    }else{
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

        $(document).on("click",".removeCartProduct", function(){
            if (cartItems.length >0){
                var deleteProductId = $(this).attr('value')
                var deleteProductIndex = -1;
                // alert($(this).attr('value'));
                for (let i = 0; i < cartItems.length; i++) {
                    if (cartItems[i].product.id == deleteProductId){
                        deleteProductIndex = i;
                        break;
                    }
                }
                if (deleteProductIndex != -1){
                    cartItems.splice(deleteProductIndex, 1);
                    countCartItems()
                    showCartItems()
                    updateCartItemsCookie(cartItems)
                    initCartItem();
                }


            }
        });


        function updateCartItemsCookie(cartItemsArr) {
            var value = "[]";
            if (cartItemsArr.length >0){
                value ="["
                for (let i = 0; i < cartItemsArr.length; i++) {
                    value += JSON.stringify(cartItemsArr[i]) +","
                }
                value = value.substring(0,value.length-1)
                value +="]"
            }

            const data = value;
            const xhr = new XMLHttpRequest();
            xhr.addEventListener("readystatechange", function () {
                if (this.readyState === this.DONE) {
                    var json = JSON.parse(this.responseText);
                    // if (json.length>0){
                    console.log(json)
                    cartItems = json
                    // }
                }
            });

            xhr.open("POST", "${pageContext.servletContext.contextPath}/cart/update");
            xhr.setRequestHeader('Content-type', 'application/json');
            console.log(data)
            xhr.send(data);
            countCartItems();
            showCartItems();
        }


    })

</script>
</body>

