<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

                <div class="col-lg-8" style="margin-top: -120px;">
                    <div class="ps-section__right">
                        <div class="ps-section--account-setting">
                            <div class="ps-section__content ">
                                <div class="ps-form--account" style="max-width: 100%" >
                                    <ul class="ps-tab-list">
                                        <li class="${cartItems !=null ?'active':''}"><a href="#sign-in">Checkout</a></li>
                                        <li class="${cartItems !=null ?'':'active'}"><a href="#register">Orders</a></li>
                                    </ul>
                                    <div class="ps-tabs">
                                        <div class="ps-tab ${cartItems !=null ?'active':''}" id="sign-in">
                                            <div class="ps-form__content">
                                                    <div class="table-responsive">
                                                        <table class="table ps-table--shopping-cart ps-table--responsive">
                                                            <thead>
                                                            <tr>
                                                                <th>Product name</th>
                                                                <th>PRICE</th>
                                                                <th>QUANTITY</th>
                                                                <th>TOTAL</th>
                                                                <th></th>
                                                            </tr>
                                                            </thead>
                                                            <tbody id="tblShoppingCart">
                                                            <c:choose>
                                                                <c:when test="${cartItems !=null}">
                                                                    <c:forEach items="${cartItems}" var="item">
                                                                        <tr>
                                                                            <td data-label="Product">
                                                                                <div class="ps-product--cart">
                                                                                    <div class="ps-product__thumbnail"><a href="${pageContext.servletContext.contextPath}/product/detail?id=${item.product.id}" onclick="addProductToViewList(${item.product.id})"><img src="${pageContext.request.contextPath}/product/display/0&${item.product.id}" alt=""></a></div>
                                                                                    <div class="ps-product__content"><a href="${pageContext.servletContext.contextPath}/product/detail?id=${item.product.id}" onclick="addProductToViewList(${item.product.id})">${item.product.productName}</a>
                                                                                        <p>Sold By:<strong> ANGRY NERDS</strong></p>
                                                                                    </div>
                                                                                </div>
                                                                            </td>
                                                                            <td class="price text-center" data-label="Price">$${item.product.price}</td>
                                                                            <td data-label="Quantity" class="text-center">
                                                                                <div class="form-group--number">
                                                                                    <button class="up" value="${item.product.id}">+</button>
                                                                                    <button class="down" value="${item.product.id}">-</button>
                                                                                    <input class="form-control itemQty-${item.product.id}"   type="text" placeholder="1" value="${item.sellingQuantity}" readonly>
                                                                                </div>
                                                                                <span style="color: red" class="invalid-${item.product.id}"></span>
                                                                            </td>
                                                                            <td data-label="Total" class="text-center totalPriceItem-${item.product.id}">
                                                                                $
                                                                                <fmt:formatNumber type="number" value="${item.totalPrice}"/>
                                                                            </td>
                                                                            <td data-label="Actions"><a class="removeCartProduct" value="${item.product.id}"><i class="icon-cross"></i></a></td>
                                                                        </tr>
                                                                    </c:forEach>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <tr>
                                                                        <td colspan="5" class="text-center"><h1>No Product Added !!!</h1></td>
                                                                    </tr>
                                                                </c:otherwise>
                                                            </c:choose>
                                                            </tbody>
                                                            <c:if test="${cartItems !=null}">
                                                                <tfoot style="border-bottom: 1px solid #dee2e6">
                                                                <tr class="text-center">
                                                                    <td colspan="3"><h3>SUBTOTAL</h3></td>
                                                                    <td colspan="2"><h3 class="totalPriceCart">$ <fmt:formatNumber type="number" value="${total}"/></h3></td>
                                                                </tr>
                                                                </tfoot>
                                                            </c:if>

                                                        </table>
                                                    </div>
                                                    <div class="ps-section__cart-actions" style="display: flex;justify-content: space-between;">
                                                        <c:if test="${cartItems !=null}">
                                                            <a class="ps-btn" href="${pageContext.servletContext.contextPath}/product"><i class="icon-arrow-left"></i> Back to Shop</a>
                                                            <a class="ps-btn ps-btn--outline hide-1"  style="display: none"><i class="icon-sync"></i> Update cart</a>
                    <%--                                        <a class="ps-btn hide-2 checkout" href="${pageContext.servletContext.contextPath}/customer/product/checkout" >Check out <i class="icon-arrow-right"></i></a>--%>
                                                            <a class="ps-btn hide-2 checkout" onclick="checkout()" >Check out <i class="icon-arrow-right"></i></a>
                                                        </c:if>
                                                    </div>
                                            </div>
                                        </div>
                                        <div class="ps-tab ${cartItems !=null ?'':'active'}" id="register">
                                            <div class="ps-form__content">
<%--                                                <h5>Register An Account</h5>--%>
<%--                                                <div class="form-group">--%>
<%--                                                    <input class="form-control" type="text" placeholder="Username or email address">--%>
<%--                                                </div>--%>
<%--                                                <div class="form-group">--%>
<%--                                                    <input class="form-control" type="text" placeholder="Password">--%>
<%--                                                </div>--%>
<%--                                                <div class="ps-form__decs">--%>
<%--                                                    <div class="ps-radio">--%>
<%--                                                        <input class="form-control" type="radio" id="user-type-1" name="user-type">--%>
<%--                                                        <label for="user-type-1">I am a customer</label>--%>
<%--                                                    </div>--%>
<%--                                                    <div class="ps-radio">--%>
<%--                                                        <input class="form-control" type="radio" id="user-type-2" name="user-type">--%>
<%--                                                        <label for="user-type-2">I am a vendor</label>--%>
<%--                                                    </div>--%>
<%--                                                    <p>Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our<a href="#">privacy policy.</a></p>--%>
<%--                                                </div>--%>
<%--                                                <div class="form-group submit">--%>
<%--                                                    <button class="ps-btn ps-btn--fullwidth">Register</button>--%>
<%--                                                </div>--%>
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







<%--                                check out page--%>
<%--                                <div class="table-responsive">--%>
<%--                                    <table class="table ps-table--shopping-cart ps-table--responsive">--%>
<%--                                        <thead>--%>
<%--                                        <tr>--%>
<%--                                            <th>Product name</th>--%>
<%--                                            <th>PRICE</th>--%>
<%--                                            <th>QUANTITY</th>--%>
<%--                                            <th>TOTAL</th>--%>
<%--                                            <th></th>--%>
<%--                                        </tr>--%>
<%--                                        </thead>--%>
<%--                                        <tbody id="tblShoppingCart">--%>
<%--                                        <c:choose>--%>
<%--                                            <c:when test="${cartItems !=null}">--%>
<%--                                                <c:forEach items="${cartItems}" var="item">--%>
<%--                                                    <tr>--%>
<%--                                                        <td data-label="Product">--%>
<%--                                                            <div class="ps-product--cart">--%>
<%--                                                                <div class="ps-product__thumbnail"><a href="${pageContext.servletContext.contextPath}/product/detail?id=${item.product.id}" onclick="addProductToViewList(${item.product.id})"><img src="${pageContext.request.contextPath}/product/display/0&${item.product.id}" alt=""></a></div>--%>
<%--                                                                <div class="ps-product__content"><a href="${pageContext.servletContext.contextPath}/product/detail?id=${item.product.id}" onclick="addProductToViewList(${item.product.id})">${item.product.productName}</a>--%>
<%--                                                                    <p>Sold By:<strong> ANGRY NERDS</strong></p>--%>
<%--                                                                </div>--%>
<%--                                                            </div>--%>
<%--                                                        </td>--%>
<%--                                                        <td class="price text-center" data-label="Price">$${item.product.price}</td>--%>
<%--                                                        <td data-label="Quantity" class="text-center">--%>
<%--                                                            <div class="form-group--number">--%>
<%--                                                                <button class="up" value="${item.product.id}">+</button>--%>
<%--                                                                <button class="down" value="${item.product.id}">-</button>--%>
<%--                                                                <input class="form-control itemQty-${item.product.id}"   type="text" placeholder="1" value="${item.sellingQuantity}" readonly>--%>
<%--                                                            </div>--%>
<%--                                                            <span style="color: red" class="invalid-${item.product.id}"></span>--%>
<%--                                                        </td>--%>
<%--                                                        <td data-label="Total" class="text-center totalPriceItem-${item.product.id}">--%>
<%--                                                            $--%>
<%--                                                            <fmt:formatNumber type="number" value="${item.totalPrice}"/>--%>
<%--                                                        </td>--%>
<%--                                                        <td data-label="Actions"><a class="removeCartProduct" value="${item.product.id}"><i class="icon-cross"></i></a></td>--%>
<%--                                                    </tr>--%>
<%--                                                </c:forEach>--%>
<%--                                            </c:when>--%>
<%--                                            <c:otherwise>--%>
<%--                                                <tr>--%>
<%--                                                    <td colspan="5" class="text-center"><h1>No Product Added !!!</h1></td>--%>
<%--                                                </tr>--%>
<%--                                            </c:otherwise>--%>
<%--                                        </c:choose>--%>
<%--                                        </tbody>--%>
<%--                                        <c:if test="${cartItems !=null}">--%>
<%--                                            <tfoot style="border-bottom: 1px solid #dee2e6">--%>
<%--                                            <tr class="text-center">--%>
<%--                                                <td colspan="3"><h3>SUBTOTAL</h3></td>--%>
<%--                                                <td colspan="2"><h3 class="totalPriceCart">$ <fmt:formatNumber type="number" value="${total}"/></h3></td>--%>
<%--                                            </tr>--%>
<%--                                            </tfoot>--%>
<%--                                        </c:if>--%>

<%--                                    </table>--%>
<%--                                </div>--%>
<%--                                <div class="ps-section__cart-actions" style="display: flex;justify-content: space-between;">--%>
<%--                                    <c:if test="${cartItems !=null}">--%>
<%--                                        <a class="ps-btn" href="${pageContext.servletContext.contextPath}/product"><i class="icon-arrow-left"></i> Back to Shop</a>--%>
<%--                                        <a class="ps-btn ps-btn--outline hide-1"  style="display: none"><i class="icon-sync"></i> Update cart</a>--%>
<%--&lt;%&ndash;                                        <a class="ps-btn hide-2 checkout" href="${pageContext.servletContext.contextPath}/customer/product/checkout" >Check out <i class="icon-arrow-right"></i></a>&ndash;%&gt;--%>
<%--                                        <a class="ps-btn hide-2 checkout" onclick="checkout()" >Check out <i class="icon-arrow-right"></i></a>--%>
<%--                                    </c:if>--%>
<%--                                </div>--%>
    <%--                                check out page--%>

                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
</main>
<jsp:include page="../../components/footer.jsp"></jsp:include>
<script>
    $(document).ready(function(){

//cookie and cartItem
        var cartItems = [];
        var products = [];
        window.onload = initData();

        function initData(){
            initCartItem();
            getAllProducts();
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



//checkout
        $(document).on("click",".checkout", function(){
            updateCartItemsCookie(cartItems)
        });
//increase Qty
        $(document).on("click",".up", function(event){
            var productId = this.value;
            var qty = document.querySelector('.itemQty-'+this.value);
            var invalid = document.querySelector('.invalid-'+this.value);
            var invalidText = document.querySelector('.invalid-text-'+this.value)
            // alert(invalidText)
            if (checkStock(productId,qty.value)){
                qty.value = Number(qty.value) + 1
                updateCartItems(cartItems,productId,qty.value)
                if (invalidText!=null){
                    invalidText.remove()
                }
            }else{
                event.preventDefault()
                invalid.innerHTML = "<div class='invalid-text-"+this.value+"'>Out of Stock !</div>"
            }

        });

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

//decrease Qty
        $(document).on("click",".down", function(event){
            var productId = this.value;
            var qty = document.querySelector('.itemQty-'+this.value);
            var invalidText = document.querySelector('.invalid-text-'+this.value)
            if (Number(qty.value) != 1){
                qty.value = Number(qty.value) - 1
                if (invalidText!=null){
                    invalidText.remove()
                }
            }else{
                event.preventDefault()
            }
            updateCartItems(cartItems,productId,qty.value)
        });

//remove cart item

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
                    document.getElementById('tblShoppingCart').innerHTML = getTableShoppingCart(cartItems)
                    document.querySelector('.ps-table--shopping-cart tfoot').innerHTML = getFooterShoppingCartTable(cartItems)
                }


            }
        });

        function updateCartItems(items,productId,Qty) {
            var totalPriceItem = document.querySelector('.totalPriceItem-'+productId)
            var totalPriceCart = document.querySelector('.totalPriceCart')
            if (items.length>0){
                for (let i = 0; i < items.length; i++) {
                    if (items[i].product.id == productId){
                        items[i].sellingQuantity = Qty
                        items[i].totalPrice =  parseInt(items[i].sellingQuantity) * parseFloat(items[i].product.price)
                        totalPriceItem.innerHTML = "$"+ items[i].totalPrice
                        totalPriceCart.innerHTML = "$" + getTotalPriceCart(items)
                    }
                }
            }
        }

        function getTotalPriceCart(items) {
            var total = 0;
            for (let i = 0; i < items.length; i++) {
                total += items[i].totalPrice
            }
            return total
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
                    console.log("cart: "+json)
                    cartItems = json
                    // }
                }
            });

            xhr.open("POST", "${pageContext.servletContext.contextPath}/cart/update");
            xhr.setRequestHeader('Content-type', 'application/json');
            console.log(data)
            xhr.send(data);
        }

        function initCartItem() {
            const data = null;
            const xhr = new XMLHttpRequest();
            xhr.addEventListener("readystatechange", function () {
                if (this.readyState === this.DONE) {
                    var json = JSON.parse(this.responseText);
                    console.log(json)
                    cartItems = json
                    countCartItems()
                    showCartItems()
                }
            });

            xhr.open("GET", "${pageContext.servletContext.contextPath}/cart/getAll");
            xhr.setRequestHeader('Content-type', 'application/json');
            xhr.send(data);
        }

        function getTableShoppingCart(item) {
            var    table = "";
            if (item.length>0){
                for (let i = 0; i < item.length; i++) {
                    table+="<tr>"
                    table +="<td data-label='Product'>"
                    table +="<div class='ps-product--cart'>"
                    table +="<div class='ps-product__thumbnail'><a href='${pageContext.servletContext.contextPath}/product/detail?id="+item[i].product.id+"' onclick='addProductToViewList("+item[i].product.id+")'><img src='${pageContext.request.contextPath}/product/display/0&"+item[i].product.id+"' alt=''></a></div>"
                    table +="<div class='ps-product__content'><a href='${pageContext.servletContext.contextPath}/product/detail?id="+item[i].product.id+"' onclick='addProductToViewList("+item[i].product.id+")'>"+item[i].product.productName+"</a>"
                    table +="<p>Sold By:<strong> ANGRY NERDS</strong></p>"
                    table +="</div> </div> </td>"
                    table +="<td class='price text-center' data-label='Price'>$"+item[i].product.price+"</td>"
                    table +="<td data-label='Quantity' class='text-center'>"
                    table +="<div class='form-group--number'>"
                    table +="<button class='up' value='"+item[i].product.id+"'>+</button>"
                    table +="<button class='down' value='"+item[i].product.id+"'>-</button>"
                    table +="<input class='form-control itemQty-"+item[i].product.id+"'   type='text' placeholder='1' value='"+item[i].sellingQuantity+"' readonly>"
                    table +=" </div><span style='color: red' class='invalid-"+item[i].product.id+"'></span></td>"
                    table +="<td data-label='Total' class='text-center totalPriceItem'>$"+item[i].totalPrice+"</td>"
                    table +=" <td data-label='Actions'><a class='removeCartProduct' value='"+item[i].product.id+"'><i class='icon-cross'></i></a></td>"
                    table +=" </tr>"
                }
            }else{
                table +="  <tr> <td colspan='5' class='text-center'><h1>No Product Added !!!</h1></td></tr>"
                document.querySelector('.hide-1').style.display = "none"
                document.querySelector('.hide-2').style.display = "none"
            }
            return table;
        }

        function getFooterShoppingCartTable(item) {
            var    table = "";
            if (item.length>0){

                var total = 0;
                for (let i = 0; i < item.length; i++) {
                    total += item[i].totalPrice
                }
                table+="<tfoot style='border-bottom: 1px solid #dee2e6'>"
                table+="<tr class='text-center'>"
                table+="<td colspan='3'><h3>SUBTOTAL</h3></td>"
                table+="<td colspan='2'><h3 class='totalPriceCart'>$"+total+"</h3></td>"
                table+="</tr></tfoot>"
            }
            return table;
        }

    })


</script>
<script>
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

<script>
    function checkout(){
        window.setTimeout(function () {
            window.location.href = "${pageContext.servletContext.contextPath}/customer/product/checkout";
        },300)
    }

</script>
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
</body>

