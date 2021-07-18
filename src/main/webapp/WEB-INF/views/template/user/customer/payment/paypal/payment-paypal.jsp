<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="../../../components/head.jsp"></jsp:include>

<body>
<jsp:include page="../../../components/header.jsp"></jsp:include>
<jsp:include page="../../../components/sidebar.jsp"></jsp:include>
<br><br><br><br><br><br>
<main class="ps-page--my-account">
    <section class="ps-section--account ps-checkout">
        <div class="container">
            <div class="ps-section__header">
                <h3>Payment</h3>
            </div>
            <div class="ps-section__content">
                    <div class="ps-form__content">
                        <div class="row">
                            <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-12 ">
                                <div class="ps-block--shipping">
                                    <div class="ps-block__panel">
                                        <figure><small>Contact</small>
                                            <p>
                                                <a >${customerOrder.deliverCustomerName}</a>
                                                &nbsp;
                                                <span>(${customerOrder.deliverCustomerPhone})</span>
                                            </p>
                                        </figure>
                                        <figure><small>Ship to</small>
                                            <p>${customerOrder.deliverCustomerAddress}</p>
                                        </figure>
                                    </div>
                                    <br><br>
                                    <h4>Payment Methods</h4>
                                    <div class="ps-block--payment-method">
                                        <ul class="ps-tab-list">
                                            <li class="active"><a class="ps-btn ps-btn--sm" href="#visa">Cash</a></li>
                                            <li><a class="ps-btn ps-btn--sm" href="#paypal">Paypal</a></li>
                                            <li><a class="ps-btn ps-btn--sm" href="#momo" style="display: none">MoMo</a></li>
                                        </ul>
                                        <div class="ps-tabs">
                                                <div class="ps-tab active" id="visa">
                                                    <form class="ps-form--visa" action="${pageContext.servletContext.contextPath}/customer/payment/cash" method="post">
                                                            <button class="ps-btn">Proceed with Cash</button>
                                                    </form>
                                                </div>

                                                <div class="ps-tab" id="paypal">
                                                    <form action="${pageContext.servletContext.contextPath}/customer/payment/paypal" method="post">
                                                    <button class="ps-btn" >Proceed with Paypal</button>
                                                    </form>
                                                </div>
                                                <div class="ps-tab" id="momo">
                                                    <form action="${pageContext.servletContext.contextPath}/customer/payment/momo" method="post">
                                                        <button class="ps-btn" >Proceed with MoMo</button>
                                                    </form>
                                                </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 ">
                                <div class="ps-block--checkout-order">
                                    <div class="ps-block__content">
                                        <figure>
                                            <figcaption><strong>Product</strong><strong class="pr-3 mr-3">Total</strong></figcaption>
                                        </figure>
                                        <figure class="ps-block__items" style="height: 200px;overflow:hidden;overflow-y:scroll;">
                                        <c:forEach items="${customerOrder.cartItems}" var="cartItem">
                                            <a >
                                            <strong>${cartItem.product.productName} <span>x${cartItem.sellingQuantity}</span> </strong>
                                            <span> <small class="pr-3">$ <fmt:formatNumber type="number" value="${cartItem.totalPrice}"/></small></span>
<%--                                                    --%>
                                            </a>
                                        </c:forEach>
                                        </figure>
                                        <figure>
                                            <figcaption><strong><h3>Subtotal</h3></strong><strong><h3 class="pr-3 mr-3">$<fmt:formatNumber type="number" value="${customerOrder.totalPrice}"/></h3></strong></figcaption>
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
    </section>
</main>

<jsp:include page="../../../components/footer.jsp"></jsp:include>
</body>

