<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="../../components/head.jsp"></jsp:include>

<body>
<jsp:include page="../../components/header.jsp"></jsp:include>
<br><br><br><br>
<div class="ps-checkout ps-section--shopping">
    <div class="container">
        <div class="ps-section__header">
            <h1>Checkout Product</h1>
        </div>
        <div class="ps-section__content">
            <form class="ps-form--checkout" action="${pageContext.servletContext.contextPath}/customer/product/checkout" method="post">
                <div class="row">
                    <div class="col-xl-7 col-lg-8 col-md-12 col-sm-12  ">
                        <div class="ps-form__billing-info">
                            <h3 class="ps-form__heading">Billing Details</h3>
                            <div class="form-group">
                                <label>Deliver Full Name<sup>*</sup>
                                </label>
                                <div class="form-group__content">
                                    <input class="form-control" name="deliverCustomerName" type="text" value="${customerOrder !=null ? customerOrder.deliverCustomerName:""}" maxlength="250" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Deliver Address<sup>*</sup>
                                </label>
                                <div class="form-group__content">
                                    <input class="form-control" name="deliverCustomerAddress" type="text" value="${customerOrder !=null ? customerOrder.deliverCustomerAddress:""}" maxlength="250" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Deliver Phone<sup>*</sup>
                                </label>
                                <div class="form-group__content">
                                    <input class="form-control" name="deliverCustomerPhone" type="text" value="${customerOrder !=null ? customerOrder.deliverCustomerPhone:""}" maxlength="250" required>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-5 col-lg-4 col-md-12 col-sm-12  ">
                        <div class="ps-form__total">
                            <h3 class="ps-form__heading">Your Order</h3>
                            <div class="content">
                                <div class="ps-block--checkout-total">
                                    <div class="ps-block__content mb-3" style="height: 300px;overflow:hidden;overflow-y:scroll;">
                                        <table class="table ps-block__products">
                                            <tbody>
                                            <c:choose>
                                                <c:when test="${customerOrder !=null}">
                                                    <c:forEach items="${customerOrder.cartItems}" var="cartItem">
                                                        <tr>
                                                            <td>
                                                                <a href="${pageContext.servletContext.contextPath}/product/detail?id=${cartItem.product.id}">
                                                                    <span> ${cartItem.product.productName}</span>
                                                                    <span>  x${cartItem.sellingQuantity}</span>
                                                                </a>
                                                                <p>Sold By: <strong>ANGRY NERDS</strong></p>

                                                            </td>

                                                            <td>$<fmt:formatNumber type="number" value="${cartItem.totalPrice}"/></td>
                                                        </tr>
                                                    </c:forEach>

                                                </c:when>
                                                <c:otherwise>
                                                    <tr>
                                                        <td><h3>No Order Found !!!</h3></td>
                                                    </tr>
                                                </c:otherwise>
                                            </c:choose>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <h3>Total <span>$<fmt:formatNumber type="number" value="${customerOrder.totalPrice}"/></span></h3>
                                <button class="ps-btn ps-btn--fullwidth" >Proceed to checkout</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<jsp:include page="../../components/footer.jsp"></jsp:include>
</body>

