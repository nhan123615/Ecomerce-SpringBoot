<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../../components/head.jsp"></jsp:include>

<body>
<jsp:include page="../../components/header.jsp"></jsp:include>
<jsp:include page="../../components/sidebar.jsp"></jsp:include>
<br><br><br>
<br><br><br>
<div class="ps-page--shop" id="shop-sidebar">
    <div class="container">
        <div class="ps-layout--shop">
            <div class="ps-layout__left">
                <aside class="widget widget_shop">


                    <h4 class="widget-title">BY BRANDS</h4>
                    <form class="ps-form--widget-search" action="do_action" method="get">
                        <input class="form-control" type="text" placeholder="">
                        <button><i class="icon-magnifier"></i></button>
                    </form>
                    <figure class="ps-custom-scrollbar" data-height="250">

                            <c:choose>
                                <c:when test="${not empty brandByProduct }">
                                    <c:forEach var="b" items="${brandByProduct}">
                                    <div class="ps-checkbox">
                                        <input class="form-control" type="checkbox" id="brand-${b.id}"  name="brand" value="${b.id}">
                                        <label for="brand-${b.id}">${b.name}</label>
                                    </div>
                                    </c:forEach>
                                </c:when>
                                <c:otherwise>
                                    <c:forEach var="b" items="${brandsByCategory[categoryByProduct.name]}">
                                        <div class="ps-checkbox">
                                            <input class="form-control" type="checkbox" id="brand-${b.id}"  name="brand" value="${b.id}">
                                            <label for="brand-${b.id}" >${b.name}</label>
                                        </div>
                                    </c:forEach>
                                </c:otherwise>
                            </c:choose>
                    </figure>

                    <figure>
                        <h4 class="widget-title">By Parts</h4>
                        <c:choose>
                            <c:when test="${not empty typeByProduct }">
                                <c:forEach var="t" items="${typeByProduct}">
                                    <div class="ps-checkbox">
                                        <input class="form-control" type="checkbox" id="type-${t}"  name="type" value="${t}">
                                        <label for="type-${t}">${t}</label>
                                    </div>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                                <c:forEach var="t" items="${typeByCategory[categoryByProduct.name]}">
                                    <div class="ps-checkbox">
                                        <input class="form-control" type="checkbox" id="type-${t.name}"  name="type" value="${t.name}">
                                        <label for="type-${t.name}" >${t.name}</label>
                                    </div>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>

                    </figure>
                    <%--                                            #//commit--%>

                    <figure>
                        <h4 class="widget-title">By Price</h4>
                        <div id="nonlinear"></div>
                        <p class="ps-slider__meta">Price:<span class="ps-slider__value">$<span class="ps-slider__min"></span></span>-<span class="ps-slider__value">$<span class="ps-slider__max"></span></span></p>
                    </figure>
                    <figure>
                        <h4 class="widget-title">By Rating</h4>
                        <div class="ps-checkbox">
                            <input class="form-control" type="checkbox" id="review-1" name="review">
                            <label for="review-1"><span><i class="fa fa-star rate"></i><i class="fa fa-star rate"></i><i class="fa fa-star rate"></i><i class="fa fa-star rate"></i><i class="fa fa-star rate"></i></span><small>(13)</small></label>
                        </div>
                        <div class="ps-checkbox">
                            <input class="form-control" type="checkbox" id="review-2" name="review">
                            <label for="review-2"><span><i class="fa fa-star rate"></i><i class="fa fa-star rate"></i><i class="fa fa-star rate"></i><i class="fa fa-star rate"></i><i class="fa fa-star"></i></span><small>(13)</small></label>
                        </div>
                        <div class="ps-checkbox">
                            <input class="form-control" type="checkbox" id="review-3" name="review">
                            <label for="review-3"><span><i class="fa fa-star rate"></i><i class="fa fa-star rate"></i><i class="fa fa-star rate"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></span><small>(5)</small></label>
                        </div>
                        <div class="ps-checkbox">
                            <input class="form-control" type="checkbox" id="review-4" name="review">
                            <label for="review-4"><span><i class="fa fa-star rate"></i><i class="fa fa-star rate"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></span><small>(5)</small></label>
                        </div>
                        <div class="ps-checkbox">
                            <input class="form-control" type="checkbox" id="review-5" name="review">
                            <label for="review-5"><span><i class="fa fa-star rate"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></span><small>(1)</small></label>
                        </div>
                    </figure>
                    <figure>
                        <h4 class="widget-title">By Color</h4>
                        <div class="ps-checkbox ps-checkbox--color color-1 ps-checkbox--inline">
                            <input class="form-control" type="checkbox" id="color-1" name="size">
                            <label for="color-1"></label>
                        </div>
                        <div class="ps-checkbox ps-checkbox--color color-2 ps-checkbox--inline">
                            <input class="form-control" type="checkbox" id="color-2" name="size">
                            <label for="color-2"></label>
                        </div>
                        <div class="ps-checkbox ps-checkbox--color color-3 ps-checkbox--inline">
                            <input class="form-control" type="checkbox" id="color-3" name="size">
                            <label for="color-3"></label>
                        </div>
                        <div class="ps-checkbox ps-checkbox--color color-4 ps-checkbox--inline">
                            <input class="form-control" type="checkbox" id="color-4" name="size">
                            <label for="color-4"></label>
                        </div>
                        <div class="ps-checkbox ps-checkbox--color color-5 ps-checkbox--inline">
                            <input class="form-control" type="checkbox" id="color-5" name="size">
                            <label for="color-5"></label>
                        </div>
                        <div class="ps-checkbox ps-checkbox--color color-6 ps-checkbox--inline">
                            <input class="form-control" type="checkbox" id="color-6" name="size">
                            <label for="color-6"></label>
                        </div>
                        <div class="ps-checkbox ps-checkbox--color color-7 ps-checkbox--inline">
                            <input class="form-control" type="checkbox" id="color-7" name="size">
                            <label for="color-7"></label>
                        </div>
                        <div class="ps-checkbox ps-checkbox--color color-8 ps-checkbox--inline">
                            <input class="form-control" type="checkbox" id="color-8" name="size">
                            <label for="color-8"></label>
                        </div>
                    </figure>
                </aside>
            </div>
            <div class="ps-layout__right">
                <div class="ps-shopping ps-tab-root">
                    <div class="ps-shopping__header">
                        <p><strong> ${countProduct}</strong> Products found</p>

                        <div class="ps-shopping__actions">
                            <select class="ps-select" data-placeholder="Sort Items">
                                <option>Sort by latest</option>
                                <option>Sort by popularity</option>
                                <option>Sort by average rating</option>
                                <option>Sort by price: low to high</option>
                                <option>Sort by price: high to low</option>
                            </select>
                            <div class="ps-shopping__view">
                                <p>View</p>
                                <ul class="ps-tab-list">
                                    <li class="active"><a href="#tab-1"><i class="icon-grid"></i></a></li>
                                    <li><a href="#tab-2"><i class="icon-list4"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="ps-tabs">
                        <div class="ps-tab active" id="tab-1">
                            <div class="ps-shopping-product">
                                <div class="row">
                                    <c:forEach var="p" items="${products}">
                                        <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-6 ">
                                            <div class="ps-product">
                                                <div class="ps-product__thumbnail"><a href="product-default.html"><img src="img/products/shop/1.jpg" alt=""></a>
                                                    <ul class="ps-product__actions">
                                                        <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add To Cart"><i class="icon-bag2"></i></a></li>
                                                        <li><a href="#" data-toggle="tooltip" data-placement="top" title="Add to Whishlist"><i class="icon-heart"></i></a></li>
                                                        <li><a href="#" data-toggle="tooltip" data-placement="top" title="Compare"><i class="icon-chart-bars"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="ps-product__container">
                                                    <div class="ps-product__content"><a class="ps-product__title" href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}">${p.productName}</a>
                                                        <p class="ps-product__price">$${p.price}</p>
                                                    </div>
                                                    <div class="ps-product__content hover"><a class="ps-product__title" href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}">${p.productName}</a>
                                                        <p class="ps-product__price">$${p.price}</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </c:forEach>

                                </div>
                            </div>
                            <div class="ps-pagination">
                                <ul class="pagination">
                                    <li class="active"><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">Next Page<i class="icon-chevron-right"></i></a></li>
                                </ul>
                            </div>
                        </div>
<%--                        <div class="ps-tab" id="tab-2">--%>
<%--                            <div class="ps-shopping-product">--%>
<%--                                <div class="ps-product ps-product--wide">--%>
<%--                                    <div class="ps-product__thumbnail"><a href="product-default.html"><img src="img/products/shop/1.jpg" alt=""></a>--%>
<%--                                    </div>--%>
<%--                                    <div class="ps-product__container">--%>
<%--                                        <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Apple iPhone Retina 6s Plus 64GB</a>--%>
<%--                                            <p class="ps-product__vendor">Sold by:<a href="#">ROBERT’S STORE</a></p>--%>
<%--                                            <ul class="ps-product__desc">--%>
<%--                                                <li> Unrestrained and portable active stereo speaker</li>--%>
<%--                                                <li> Free from the confines of wires and chords</li>--%>
<%--                                                <li> 20 hours of portable capabilities</li>--%>
<%--                                                <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>--%>
<%--                                                <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="ps-product__shopping">--%>
<%--                                            <p class="ps-product__price">$1310.00</p><a class="ps-btn" href="#">Add to cart</a>--%>
<%--                                            <ul class="ps-product__actions">--%>
<%--                                                <li><a href="#"><i class="icon-heart"></i> Wishlist</a></li>--%>
<%--                                                <li><a href="#"><i class="icon-chart-bars"></i> Compare</a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="ps-product ps-product--wide">--%>
<%--                                    <div class="ps-product__thumbnail"><a href="product-default.html"><img src="img/products/shop/1.jpg" alt=""></a>--%>
<%--                                    </div>--%>
<%--                                    <div class="ps-product__container">--%>
<%--                                        <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Apple iPhone Retina 6s Plus 64GB</a>--%>
<%--                                            <p class="ps-product__vendor">Sold by:<a href="#">Young Shop</a></p>--%>
<%--                                            <ul class="ps-product__desc">--%>
<%--                                                <li> Unrestrained and portable active stereo speaker</li>--%>
<%--                                                <li> Free from the confines of wires and chords</li>--%>
<%--                                                <li> 20 hours of portable capabilities</li>--%>
<%--                                                <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>--%>
<%--                                                <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="ps-product__shopping">--%>
<%--                                            <p class="ps-product__price">$1150.00</p><a class="ps-btn" href="#">Add to cart</a>--%>
<%--                                            <ul class="ps-product__actions">--%>
<%--                                                <li><a href="#"><i class="icon-heart"></i> Wishlist</a></li>--%>
<%--                                                <li><a href="#"><i class="icon-chart-bars"></i> Compare</a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="ps-product ps-product--wide">--%>
<%--                                    <div class="ps-product__thumbnail"><a href="product-default.html"><img src="img/products/shop/2.jpg" alt=""></a>--%>
<%--                                    </div>--%>
<%--                                    <div class="ps-product__container">--%>
<%--                                        <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Marshall Kilburn Portable Wireless Speaker</a>--%>
<%--                                            <div class="ps-product__rating">--%>
<%--                                                <select class="ps-rating" data-read-only="true">--%>
<%--                                                    <option value="1">1</option>--%>
<%--                                                    <option value="1">2</option>--%>
<%--                                                    <option value="1">3</option>--%>
<%--                                                    <option value="1">4</option>--%>
<%--                                                    <option value="2">5</option>--%>
<%--                                                </select><span>01</span>--%>
<%--                                            </div>--%>
<%--                                            <p class="ps-product__vendor">Sold by:<a href="#">Go Pro</a></p>--%>
<%--                                            <ul class="ps-product__desc">--%>
<%--                                                <li> Unrestrained and portable active stereo speaker</li>--%>
<%--                                                <li> Free from the confines of wires and chords</li>--%>
<%--                                                <li> 20 hours of portable capabilities</li>--%>
<%--                                                <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>--%>
<%--                                                <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="ps-product__shopping">--%>
<%--                                            <p class="ps-product__price">$42.99 - $60.00</p><a class="ps-btn" href="#">Add to cart</a>--%>
<%--                                            <ul class="ps-product__actions">--%>
<%--                                                <li><a href="#"><i class="icon-heart"></i> Wishlist</a></li>--%>
<%--                                                <li><a href="#"><i class="icon-chart-bars"></i> Compare</a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="ps-product ps-product--wide">--%>
<%--                                    <div class="ps-product__thumbnail"><a href="product-default.html"><img src="img/products/shop/3.jpg" alt=""></a>--%>
<%--                                    </div>--%>
<%--                                    <div class="ps-product__container">--%>
<%--                                        <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Herschel Leather Duffle Bag In Brown Color</a>--%>
<%--                                            <div class="ps-product__rating">--%>
<%--                                                <select class="ps-rating" data-read-only="true">--%>
<%--                                                    <option value="1">1</option>--%>
<%--                                                    <option value="1">2</option>--%>
<%--                                                    <option value="1">3</option>--%>
<%--                                                    <option value="1">4</option>--%>
<%--                                                    <option value="2">5</option>--%>
<%--                                                </select><span>01</span>--%>
<%--                                            </div>--%>
<%--                                            <p class="ps-product__vendor">Sold by:<a href="#">Go Pro</a></p>--%>
<%--                                            <ul class="ps-product__desc">--%>
<%--                                                <li> Unrestrained and portable active stereo speaker</li>--%>
<%--                                                <li> Free from the confines of wires and chords</li>--%>
<%--                                                <li> 20 hours of portable capabilities</li>--%>
<%--                                                <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>--%>
<%--                                                <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="ps-product__shopping">--%>
<%--                                            <p class="ps-product__price">$125.30</p><a class="ps-btn" href="#">Add to cart</a>--%>
<%--                                            <ul class="ps-product__actions">--%>
<%--                                                <li><a href="#"><i class="icon-heart"></i> Wishlist</a></li>--%>
<%--                                                <li><a href="#"><i class="icon-chart-bars"></i> Compare</a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="ps-product ps-product--wide">--%>
<%--                                    <div class="ps-product__thumbnail"><a href="product-default.html"><img src="img/products/shop/4.jpg" alt=""></a>--%>
<%--                                    </div>--%>
<%--                                    <div class="ps-product__container">--%>
<%--                                        <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Xbox One Wireless Controller Black Color</a>--%>
<%--                                            <div class="ps-product__rating">--%>
<%--                                                <select class="ps-rating" data-read-only="true">--%>
<%--                                                    <option value="1">1</option>--%>
<%--                                                    <option value="1">2</option>--%>
<%--                                                    <option value="1">3</option>--%>
<%--                                                    <option value="1">4</option>--%>
<%--                                                    <option value="2">5</option>--%>
<%--                                                </select><span>01</span>--%>
<%--                                            </div>--%>
<%--                                            <p class="ps-product__vendor">Sold by:<a href="#">Global Office</a></p>--%>
<%--                                            <ul class="ps-product__desc">--%>
<%--                                                <li> Unrestrained and portable active stereo speaker</li>--%>
<%--                                                <li> Free from the confines of wires and chords</li>--%>
<%--                                                <li> 20 hours of portable capabilities</li>--%>
<%--                                                <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>--%>
<%--                                                <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="ps-product__shopping">--%>
<%--                                            <p class="ps-product__price">$55.99</p><a class="ps-btn" href="#">Add to cart</a>--%>
<%--                                            <ul class="ps-product__actions">--%>
<%--                                                <li><a href="#"><i class="icon-heart"></i> Wishlist</a></li>--%>
<%--                                                <li><a href="#"><i class="icon-chart-bars"></i> Compare</a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="ps-product ps-product--wide">--%>
<%--                                    <div class="ps-product__thumbnail"><a href="product-default.html"><img src="img/products/shop/5.jpg" alt=""></a>--%>
<%--                                        <div class="ps-product__badge">-37%</div>--%>
<%--                                    </div>--%>
<%--                                    <div class="ps-product__container">--%>
<%--                                        <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Grand Slam Indoor Of Show Jumping Novel</a>--%>
<%--                                            <div class="ps-product__rating">--%>
<%--                                                <select class="ps-rating" data-read-only="true">--%>
<%--                                                    <option value="1">1</option>--%>
<%--                                                    <option value="1">2</option>--%>
<%--                                                    <option value="1">3</option>--%>
<%--                                                    <option value="1">4</option>--%>
<%--                                                    <option value="2">5</option>--%>
<%--                                                </select><span>01</span>--%>
<%--                                            </div>--%>
<%--                                            <p class="ps-product__vendor">Sold by:<a href="#">Robert's Store</a></p>--%>
<%--                                            <ul class="ps-product__desc">--%>
<%--                                                <li> Unrestrained and portable active stereo speaker</li>--%>
<%--                                                <li> Free from the confines of wires and chords</li>--%>
<%--                                                <li> 20 hours of portable capabilities</li>--%>
<%--                                                <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>--%>
<%--                                                <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="ps-product__shopping">--%>
<%--                                            <p class="ps-product__price sale">$32.99 <del>$41.00 </del></p><a class="ps-btn" href="#">Add to cart</a>--%>
<%--                                            <ul class="ps-product__actions">--%>
<%--                                                <li><a href="#"><i class="icon-heart"></i> Wishlist</a></li>--%>
<%--                                                <li><a href="#"><i class="icon-chart-bars"></i> Compare</a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="ps-product ps-product--wide">--%>
<%--                                    <div class="ps-product__thumbnail"><a href="product-default.html"><img src="img/products/shop/6.jpg" alt=""></a>--%>
<%--                                        <div class="ps-product__badge">-5%</div>--%>
<%--                                    </div>--%>
<%--                                    <div class="ps-product__container">--%>
<%--                                        <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Sound Intone I65 Earphone White Version</a>--%>
<%--                                            <div class="ps-product__rating">--%>
<%--                                                <select class="ps-rating" data-read-only="true">--%>
<%--                                                    <option value="1">1</option>--%>
<%--                                                    <option value="1">2</option>--%>
<%--                                                    <option value="1">3</option>--%>
<%--                                                    <option value="1">4</option>--%>
<%--                                                    <option value="2">5</option>--%>
<%--                                                </select><span>01</span>--%>
<%--                                            </div>--%>
<%--                                            <p class="ps-product__vendor">Sold by:<a href="#">Youngshop</a></p>--%>
<%--                                            <ul class="ps-product__desc">--%>
<%--                                                <li> Unrestrained and portable active stereo speaker</li>--%>
<%--                                                <li> Free from the confines of wires and chords</li>--%>
<%--                                                <li> 20 hours of portable capabilities</li>--%>
<%--                                                <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>--%>
<%--                                                <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="ps-product__shopping">--%>
<%--                                            <p class="ps-product__price sale">$100.99 <del>$106.00 </del></p><a class="ps-btn" href="#">Add to cart</a>--%>
<%--                                            <ul class="ps-product__actions">--%>
<%--                                                <li><a href="#"><i class="icon-heart"></i> Wishlist</a></li>--%>
<%--                                                <li><a href="#"><i class="icon-chart-bars"></i> Compare</a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="ps-product ps-product--wide">--%>
<%--                                    <div class="ps-product__thumbnail"><a href="product-default.html"><img src="img/products/shop/7.jpg" alt=""></a>--%>
<%--                                        <div class="ps-product__badge">-16%</div>--%>
<%--                                    </div>--%>
<%--                                    <div class="ps-product__container">--%>
<%--                                        <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Korea Long Sofa Fabric In Blue Navy Color</a>--%>
<%--                                            <div class="ps-product__rating">--%>
<%--                                                <select class="ps-rating" data-read-only="true">--%>
<%--                                                    <option value="1">1</option>--%>
<%--                                                    <option value="1">2</option>--%>
<%--                                                    <option value="1">3</option>--%>
<%--                                                    <option value="1">4</option>--%>
<%--                                                    <option value="2">5</option>--%>
<%--                                                </select><span>01</span>--%>
<%--                                            </div>--%>
<%--                                            <p class="ps-product__vendor">Sold by:<a href="#">Youngshop</a></p>--%>
<%--                                            <ul class="ps-product__desc">--%>
<%--                                                <li> Unrestrained and portable active stereo speaker</li>--%>
<%--                                                <li> Free from the confines of wires and chords</li>--%>
<%--                                                <li> 20 hours of portable capabilities</li>--%>
<%--                                                <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>--%>
<%--                                                <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="ps-product__shopping">--%>
<%--                                            <p class="ps-product__price sale">$567.89 <del>$670.20 </del></p><a class="ps-btn" href="#">Add to cart</a>--%>
<%--                                            <ul class="ps-product__actions">--%>
<%--                                                <li><a href="#"><i class="icon-heart"></i> Wishlist</a></li>--%>
<%--                                                <li><a href="#"><i class="icon-chart-bars"></i> Compare</a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="ps-product ps-product--wide">--%>
<%--                                    <div class="ps-product__thumbnail"><a href="product-default.html"><img src="img/products/shop/8.jpg" alt=""></a>--%>
<%--                                        <div class="ps-product__badge">-16%</div>--%>
<%--                                    </div>--%>
<%--                                    <div class="ps-product__container">--%>
<%--                                        <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Unero Military Classical Backpack</a>--%>
<%--                                            <div class="ps-product__rating">--%>
<%--                                                <select class="ps-rating" data-read-only="true">--%>
<%--                                                    <option value="1">1</option>--%>
<%--                                                    <option value="1">2</option>--%>
<%--                                                    <option value="1">3</option>--%>
<%--                                                    <option value="1">4</option>--%>
<%--                                                    <option value="2">5</option>--%>
<%--                                                </select><span>02</span>--%>
<%--                                            </div>--%>
<%--                                            <p class="ps-product__vendor">Sold by:<a href="#">Young shop</a></p>--%>
<%--                                            <ul class="ps-product__desc">--%>
<%--                                                <li> Unrestrained and portable active stereo speaker</li>--%>
<%--                                                <li> Free from the confines of wires and chords</li>--%>
<%--                                                <li> 20 hours of portable capabilities</li>--%>
<%--                                                <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>--%>
<%--                                                <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="ps-product__shopping">--%>
<%--                                            <p class="ps-product__price sale">$35.89 <del>$42.20 </del></p><a class="ps-btn" href="#">Add to cart</a>--%>
<%--                                            <ul class="ps-product__actions">--%>
<%--                                                <li><a href="#"><i class="icon-heart"></i> Wishlist</a></li>--%>
<%--                                                <li><a href="#"><i class="icon-chart-bars"></i> Compare</a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="ps-product ps-product--wide">--%>
<%--                                    <div class="ps-product__thumbnail"><a href="product-default.html"><img src="img/products/shop/9.jpg" alt=""></a>--%>
<%--                                    </div>--%>
<%--                                    <div class="ps-product__container">--%>
<%--                                        <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Rayban Rounded Sunglass Brown Color</a>--%>
<%--                                            <div class="ps-product__rating">--%>
<%--                                                <select class="ps-rating" data-read-only="true">--%>
<%--                                                    <option value="1">1</option>--%>
<%--                                                    <option value="1">2</option>--%>
<%--                                                    <option value="1">3</option>--%>
<%--                                                    <option value="1">4</option>--%>
<%--                                                    <option value="2">5</option>--%>
<%--                                                </select><span>02</span>--%>
<%--                                            </div>--%>
<%--                                            <p class="ps-product__vendor">Sold by:<a href="#">Young shop</a></p>--%>
<%--                                            <ul class="ps-product__desc">--%>
<%--                                                <li> Unrestrained and portable active stereo speaker</li>--%>
<%--                                                <li> Free from the confines of wires and chords</li>--%>
<%--                                                <li> 20 hours of portable capabilities</li>--%>
<%--                                                <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>--%>
<%--                                                <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="ps-product__shopping">--%>
<%--                                            <p class="ps-product__price">$35.89</p><a class="ps-btn" href="#">Add to cart</a>--%>
<%--                                            <ul class="ps-product__actions">--%>
<%--                                                <li><a href="#"><i class="icon-heart"></i> Wishlist</a></li>--%>
<%--                                                <li><a href="#"><i class="icon-chart-bars"></i> Compare</a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="ps-product ps-product--wide">--%>
<%--                                    <div class="ps-product__thumbnail"><a href="product-default.html"><img src="img/products/shop/10.jpg" alt=""></a>--%>
<%--                                    </div>--%>
<%--                                    <div class="ps-product__container">--%>
<%--                                        <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Sleeve Linen Blend Caro Pane Shirt</a>--%>
<%--                                            <div class="ps-product__rating">--%>
<%--                                                <select class="ps-rating" data-read-only="true">--%>
<%--                                                    <option value="1">1</option>--%>
<%--                                                    <option value="1">2</option>--%>
<%--                                                    <option value="1">3</option>--%>
<%--                                                    <option value="1">4</option>--%>
<%--                                                    <option value="2">5</option>--%>
<%--                                                </select><span>01</span>--%>
<%--                                            </div>--%>
<%--                                            <p class="ps-product__vendor">Sold by:<a href="#">Go Pro</a></p>--%>
<%--                                            <ul class="ps-product__desc">--%>
<%--                                                <li> Unrestrained and portable active stereo speaker</li>--%>
<%--                                                <li> Free from the confines of wires and chords</li>--%>
<%--                                                <li> 20 hours of portable capabilities</li>--%>
<%--                                                <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>--%>
<%--                                                <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="ps-product__shopping">--%>
<%--                                            <p class="ps-product__price">$29.39 - $39.99</p><a class="ps-btn" href="#">Add to cart</a>--%>
<%--                                            <ul class="ps-product__actions">--%>
<%--                                                <li><a href="#"><i class="icon-heart"></i> Wishlist</a></li>--%>
<%--                                                <li><a href="#"><i class="icon-chart-bars"></i> Compare</a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="ps-product ps-product--wide">--%>
<%--                                    <div class="ps-product__thumbnail"><a href="product-default.html"><img src="img/products/shop/11.jpg" alt=""></a>--%>
<%--                                    </div>--%>
<%--                                    <div class="ps-product__container">--%>
<%--                                        <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Men’s Sports Runnning Swim Board Shorts</a>--%>
<%--                                            <div class="ps-product__rating">--%>
<%--                                                <select class="ps-rating" data-read-only="true">--%>
<%--                                                    <option value="1">1</option>--%>
<%--                                                    <option value="1">2</option>--%>
<%--                                                    <option value="1">3</option>--%>
<%--                                                    <option value="1">4</option>--%>
<%--                                                    <option value="2">5</option>--%>
<%--                                                </select><span>01</span>--%>
<%--                                            </div>--%>
<%--                                            <p class="ps-product__vendor">Sold by:<a href="#">Robert's Store</a></p>--%>
<%--                                            <ul class="ps-product__desc">--%>
<%--                                                <li> Unrestrained and portable active stereo speaker</li>--%>
<%--                                                <li> Free from the confines of wires and chords</li>--%>
<%--                                                <li> 20 hours of portable capabilities</li>--%>
<%--                                                <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>--%>
<%--                                                <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                        <div class="ps-product__shopping">--%>
<%--                                            <p class="ps-product__price">$13.43</p><a class="ps-btn" href="#">Add to cart</a>--%>
<%--                                            <ul class="ps-product__actions">--%>
<%--                                                <li><a href="#"><i class="icon-heart"></i> Wishlist</a></li>--%>
<%--                                                <li><a href="#"><i class="icon-chart-bars"></i> Compare</a></li>--%>
<%--                                            </ul>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="ps-pagination">--%>
<%--                                <ul class="pagination">--%>
<%--                                    <li class="active"><a href="#">1</a></li>--%>
<%--                                    <li><a href="#">2</a></li>--%>
<%--                                    <li><a href="#">3</a></li>--%>
<%--                                    <li><a href="#">Next Page<i class="icon-chevron-right"></i></a></li>--%>
<%--                                </ul>--%>
<%--                            </div>--%>
<%--                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../../components/footer.jsp"></jsp:include>
</body>

