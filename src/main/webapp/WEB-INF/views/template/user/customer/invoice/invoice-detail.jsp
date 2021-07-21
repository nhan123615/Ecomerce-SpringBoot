<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<jsp:include page="../../components/head.jsp"></jsp:include>

<body>
<jsp:include page="../../components/header.jsp"></jsp:include>
<jsp:include page="../../components/sidebar.jsp"></jsp:include>
<br><br><br><br><br><br>
<main class="ps-page--my-account">
    <section class="ps-section--account">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <%--                    side bar--%>
                    <jsp:include page="../customer-sidebar.jsp"></jsp:include>
                    <%--                    side bar--%>

                </div>
                <div class="col-lg-8">
                    <div class="ps-section__right">
                        <div class="ps-section--account-setting">
                            <div class="ps-section__header">
                                <h3>
                                    Invoice #0${order.id} -<strong>${order.status ? "Order Successful": "Order Canceled"}</strong>
                                    -${payment.tracked ? ' <strong class="text-success">Delivered</strong>':' <strong class="text-danger">In-Stock</strong>'}
                                </h3>
                            </div>
                            <div class="ps-section__content">
                                <div class="row">
                                    <div class="col-md-4 col-12">
                                        <figure class="ps-block--invoice">
                                            <figcaption>Deliver Address</figcaption>
                                            <div class="ps-block__content">
                                                <span>Name: <strong>${order.deliverCustomerName}</strong></span>
                                                <p>Address: ${order.deliverCustomerAddress}</p>
                                                <p>Phone: ${order.deliverCustomerPhone}</p>
                                            </div>
                                        </figure>
                                    </div>
                                    <c:if test="${payment !=null}">
                                        <div class="col-md-4 col-12">
                                            <figure class="ps-block--invoice">
                                                <figcaption>Payment</figcaption>
                                                <div class="ps-block__content">
                                                    <span>Payment Method: ${payment.paymentMethod}</span>
                                                    <p>Payment Date: <fmt:formatDate value='${payment.paymentDate}'  type='date' pattern='dd/MM/yyyy'/></p>
                                                    <p>Amount: $ <fmt:formatNumber type="number" value="${payment.amount}"/><span>- <strong>${payment.status ? "Paid" :"Not yet"}</strong> </span></p>
                                                </div>
                                            </figure>
                                        </div>
                                    </c:if>
                                    <c:if test="${paypalDetail !=null}">
                                        <div class="col-md-4 col-12">
                                            <figure class="ps-block--invoice">
                                                <figcaption>Payer Details</figcaption>
                                                <div class="ps-block__content">
                                                    <span>
                                                          <c:set var = "transactionId" value = "${fn:substring(paypalDetail.transactionId, 6, fn:length(paypalDetail.transactionId))}" />
                                                        <strong>#${transactionId}</strong>
                                                    </span>
                                                    <p>Payer: ${paypalDetail.payerRecipientName}</p>
                                                    <p>Address: ${paypalDetail.payerCity}, ${paypalDetail.payerCountry}, ${paypalDetail.payerState}</p>
                                                </div>
                                            </figure>
                                        </div>
                                    </c:if>

                                </div>
                                <div class="table-responsive">
                                    <table class="table ps-table">
                                        <thead>
                                        <tr>
                                            <th>Product</th>
                                            <th>Price</th>
                                            <th>Quantity</th>
                                            <th>Amount</th>
                                        </tr>
                                        </thead>
                                        <tbody>

                                                <c:forEach items="${order.cartItems}" var="items" >
                                                <tr>
<%--                                                    <td>--%>
<%--&lt;%&ndash;                                                        <div class="ps-product--cart">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                            <div class="ps-product__thumbnail">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                                <a href="${pageContext.servletContext.contextPath}/product/detail?id=${items.product.id}">&ndash;%&gt;--%>
<%--                                                                    <img src="${pageContext.servletContext.contextPath}/product/detail?id=${items.product.id}" style="width: 200px" alt="">--%>
<%--&lt;%&ndash;                                                                </a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                            </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                        </div>&ndash;%&gt;--%>
<%--                                                        --%>
<%--                                                    </td>--%>
                                                <td>
                                                    <div class="ps-product--cart">
                                                        <div class="ps-product__thumbnail">
                                                            <a href="${pageContext.servletContext.contextPath}/product/detail?id=${items.product.id}">
                                                                <img src="${pageContext.request.contextPath}/product/display/0&${items.product.id}" style="width: 100px;height: 100px" alt="">
                                                            </a>
                                                        </div>
                                                        <div class="ps-product__content"><a href="${pageContext.servletContext.contextPath}/product/detail?id=${items.product.id}">${items.product.productName}</a>
                                                            <p>Sold By:<strong> ANGRY NERDS</strong></p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td><span><i>$</i> <fmt:formatNumber type="number" value="${items.product.price}"/></span></td>
                                                <td> <fmt:formatNumber type="number" value="${items.sellingQuantity}"/></td>
                                                <td><span><i>$</i> <fmt:formatNumber type="number" value="${items.totalPrice}"/></span></td>
                                                </tr>
                                                </c:forEach>


                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="ps-section__footer"><a class="ps-btn ps-btn--sm" href="${pageContext.servletContext.contextPath}/customer/product/checkout-page">Back to orders</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>

<jsp:include page="../../components/footer.jsp"></jsp:include>
</body>

