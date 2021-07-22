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
                            <div class="ps-section__content">
<%--                                <ul id="listPage">--%>
<%--                                    <li>1. li content</li>--%>
<%--                                    <li>2. li content</li>--%>
<%--                                    <li>3. li content</li>--%>
<%--                                    <li>4. li content</li>--%>
<%--                                    <li>5. li content</li>--%>
<%--                                    <li>6. li content</li>--%>
<%--                                    <li>7. li content</li>--%>
<%--                                    <li>8. li content</li>--%>
<%--                                    <li>9. li content</li>--%>
<%--                                    <li>10. li content</li>--%>
<%--                                </ul>--%>
<%--                                style="overflow:hidden; overflow-y:scroll;max-height: 365px;"--%>
                                <div class="table-responsive" >
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
                                        <tbody class="data-container" id="listPage">

                                            <c:choose>
                                                <c:when test="${not empty customerOrders || customerOrders !=null}">
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
                                                                    ${order.status ? "  <td class='ps-tag ps-tag--in-stock ' style='color: #669900'>Success</td>" :" <td class='ps-tag ps-tag--in-stock text-danger'>Cancel</td>"}
                                                            </tr>

                                                    </c:forEach>
                                                </c:when>
                                                <c:otherwise>
                                                        <tr>
                                                            <td colspan="5" class="text-center"><h1>No Orders To Show !</h1></td>
                                                        </tr>
                                                </c:otherwise>
                                            </c:choose>


                                        </tbody>
                                    </table>
                                </div>
                                <div id="paging" class="text-center" style="margin-top: 50px">
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
<script src="${pageContext.servletContext.contextPath}/js/paging1.js"></script>
<script>
    $(document).ready(function(){
        $(function() {
            $("#listPage").JPaging({
                pageSize: 6
            });
        });
    })


</script>
<%--<script src="${pageContext.servletContext.contextPath}/js/pagination.js"></script>--%>
<%--<script>--%>
<%--    $(function() {--%>
<%--        (function (name) {--%>
<%--            var container = $('#pagination-' + name);--%>

<%--            var options = {--%>
<%--                // dataSource: sources,--%>
<%--                dataSource: function(done) {--%>
<%--                    $.ajax({--%>
<%--                        type: 'GET',--%>
<%--                        url: '${pageContext.servletContext.contextPath}/customer/order/json/order',--%>
<%--                        success: function(response) {--%>
<%--                            done(response);--%>
<%--                        }--%>
<%--                    });--%>
<%--                },--%>
<%--                pageSize: 5,--%>
<%--                callback: function (response, pagination) {--%>
<%--                    window.console && console.log(response, pagination);--%>

<%--                    var dataHtml = " <table class='table ps-table ps-table--invoices' >";--%>
<%--                     dataHtml += "<thead>";--%>
<%--                     dataHtml += "<tr>";--%>
<%--                     dataHtml += "<th class='text-center'>Order Id</th>";--%>
<%--                     dataHtml += " <th class='text-center'>Product Details</th>";--%>
<%--                     dataHtml += "<th class='text-center'>Order Date</th>";--%>
<%--                     dataHtml += "<th class='text-center'>Amount</th>";--%>
<%--                     dataHtml += "<th class='text-center'>Status</th>";--%>
<%--                     dataHtml += " </tr>";--%>
<%--                     dataHtml += "</thead>";--%>
<%--                     dataHtml += "<tbody class='data-container'>";--%>
<%--                    $.each(response, function (index, item) {--%>
<%--                        // let date = new Date(item.orderDate + " UTC")--%>
<%--                        let d = new Date(item.orderDate);--%>
<%--                        let ye = new Intl.DateTimeFormat('en', { year: 'numeric' }).format(d);--%>
<%--                        let mo = new Intl.DateTimeFormat('en', { month: '2-digit' }).format(d);--%>
<%--                        let da = new Intl.DateTimeFormat('en', { day: '2-digit' }).format(d);--%>

<%--                        dataHtml +=" <tr>"--%>
<%--                        dataHtml +="<td><a href='${pageContext.servletContext.contextPath}/customer/order/detail?id="+item.id+"'>NO.0"+item.id+"</a></td>"--%>
<%--                        dataHtml +=" <td>"--%>
<%--                        for (let i = 0; i <item.cartItems.length ; i++) {--%>
<%--                            dataHtml +=" <a href='${pageContext.servletContext.contextPath}/product/detail?id="+item.cartItems[i].product.id+"'>"+item.cartItems[i].product.productName+"</a>"--%>
<%--                            if (i != item.cartItems.length -1){--%>
<%--                                dataHtml +=",&nbsp"--%>
<%--                            }--%>
<%--                        }--%>
<%--                        dataHtml +=" </td>"--%>
<%--                        // dataHtml +="<td>"+item.orderDate.slice(0, 10)+"</td>"--%>
<%--                        dataHtml +="<td>"+da+"/"+mo+"/"+ye+"</td>"--%>
<%--                        dataHtml +="<td>$ "+item.totalPrice+"</td>"--%>
<%--                        if(item.status){--%>
<%--                            dataHtml +="<td class='ps-tag ps-tag--in-stock' style='color: #669900'>Success</td>"--%>
<%--                        }else{--%>
<%--                            dataHtml += " <td class='ps-tag ps-tag--in-stock text-danger'>Cancel</td>"--%>
<%--                        }--%>
<%--                        dataHtml +="  </tr>"--%>


<%--                    });--%>
<%--                    dataHtml +=" </tbody>  </table>"--%>
<%--                    container.prev().html(dataHtml);--%>
<%--                }--%>
<%--            };--%>


<%--            container.addHook('beforeInit', function () {--%>
<%--                window.console && console.log('beforeInit...');--%>
<%--                container.prev().html('<h1>Loading data ...</h1>');--%>
<%--            });--%>
<%--            container.pagination(options);--%>

<%--            container.addHook('beforePageOnClick', function () {--%>
<%--                window.console && console.log('beforePageOnClick...');--%>
<%--                //return false--%>
<%--            });--%>
<%--        })('demo1');--%>
<%--    })--%>
<%--</script>--%>

