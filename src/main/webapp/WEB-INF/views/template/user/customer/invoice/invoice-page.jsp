<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

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
                                <h3>Orders</h3>
                            </div>
                            <div class="ps-section__content" >
                                <div class="table-responsive" style="overflow:hidden; overflow-y:scroll;max-height: 365px;">
                                    <table class="table ps-table ps-table--invoices" >
                                        <thead>
                                        <tr>
                                            <th class="text-center">Order Id</th>
                                            <th class="text-center">Product Details</th>
                                            <th class="text-center">Order Date</th>
                                            <th class="text-center">Amount</th>
                                            <th class="text-center">Status</th>
                                        </tr>
                                        </thead>
                                        <tbody >
                                            <c:forEach items="${customerOrders}" var="order">
                                                <tr>
                                                    <td><a href="${pageContext.servletContext.contextPath}/customer/order/detail?id=${order.id}">NO.0${order.id}</a></td>
                                                <td>
                                                <c:forEach items="${order.cartItems}" var="items" varStatus="loop">
                                                        <a href="${pageContext.servletContext.contextPath}/product/detail?id=${items.product.id}">${items.product.productName}</a>
                                                        <c:if test="${not loop.last}">,&nbsp</c:if>
                                                </c:forEach>
                                                </td>
                                                    <td><fmt:formatDate value='${order.orderDate}'  type='date' pattern='dd/MM/yyyy'/></td>
                                                    <td>$ <fmt:formatNumber type="number" value="${order.totalPrice}"/></td>
                                                    <td>${order.status ? "Success" :"Cancel"}</td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
<jsp:include page="../../components/footer.jsp"></jsp:include>
</body>

