<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

                <div class="col-lg-8" style="margin-top: 80px">
                    <div class="ps-section__right">
                        <div class="ps-section--account-setting">
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
                                                        <td data-label="Remove"><a
                                                                onClick="removeFromWishList(${product.id})"><i
                                                                class="icon-cross"></i></a></td>
                                                        <td data-label="Product">
                                                            <div class="ps-product--cart">
                                                                <div class="ps-product__thumbnail">
                                                                    <a
                                                                            href="${pageContext.servletContext.contextPath}/product/detail?id=${product.id}"><img
                                                                            src="${pageContext.request.contextPath}/product/display/0&${product.id}"
                                                                            alt="" width="100px" height="100px"
                                                                            onclick="addProductToViewList(${product.id})"></a>
                                                                </div>
                                                                <div class="ps-product__content">
                                                                    <a
                                                                            href="${pageContext.servletContext.contextPath}/product/detail?id=${product.id}"
                                                                            onclick="addProductToViewList(${product.id})">${product.productName }</a>
                                                                    <p>
                                                                        Sold By:<strong> Angry-Nerds SHOP</strong>
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td class="price text-center" data-label="Price">$${product.price
                                                                }</td>
                                                        <td data-label="Status" class="text-center"><span
                                                                class="ps-tag ps-tag--in-stock ">${product.enabled ?"In-Stock":""}</span></td>
                                                        <td data-label="action"><a class="ps-btn"
                                                                                   onclick="addItemToCart(${product.id})">Add to cart</a></td>
                                                    </tr>
                                                </c:forEach>
                                            </c:when>
                                            <c:otherwise>
                                                <tr>
                                                    <td colspan="5" class="text-center"><h1>No wish list
                                                        found !!!</h1></td>
                                                </tr>
                                            </c:otherwise>
                                        </c:choose>
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
<script>
    var tblProduct = document.querySelector('#wishProductTable');
    function removeFromWishList(id) {
        const data = null;
        const xhr = new XMLHttpRequest();
        xhr.addEventListener("readystatechange", function() {
            if (this.readyState === this.DONE) {
                var json = JSON.parse(this.responseText);
                // initData();
                updateWishlist();
                if (json.length > 0) {
                    tblProduct.innerHTML = getWishListTable(json);
                } else {
                    tblProduct.innerHTML = getNoWishProductFound();
                }
            }
        });
        xhr
            .open(
                "GET",
                "${pageContext.servletContext.contextPath}/api/wish-list/removeProductFromWishList?id_product="
                + id);
        xhr.setRequestHeader('Content-type', 'application/json');
        xhr.send(data);
    }

    function getWishListTable(json) {
        var wishListTable = '';
        for (let i = 0; i < json.length; i++) {
            wishListTable += '<tr>';
            wishListTable += '<td data-label="Remove"><a onClick="removeFromWishList('
                + json[i].id + ')"><i class="icon-cross"></i></a></td>';
            wishListTable += '<td data-label="Product">';
            wishListTable += '<div class="ps-product--cart">';
            wishListTable += '<div class="ps-product__thumbnail">';
            wishListTable += '<a href="${pageContext.servletContext.contextPath}/product/detail?id='+json[i].id+'"><img src="${pageContext.request.contextPath}/product/display/0&'+json[i].id+'" alt="" width="100px" height="100px"></a>';
            wishListTable += '</div>';
            wishListTable += '<div class="ps-product__content">';
            wishListTable += '<a href="${pageContext.servletContext.contextPath}/product/detail?id='+json[i].id+'">'+json[i].productName+'</a><p>Sold By:<strong> Angry-Nerds SHOP</strong></p>';
            wishListTable += '</div>';
            wishListTable += '</div>';
            wishListTable += '</td>';
            wishListTable += '<td class="price text-center" data-label="Price">$'
                + json[i].price + '</td>';
            wishListTable += '<td data-label="Status" class="text-center"><span class="ps-tag ps-tag--in-stock ">'
                + json[i].enabled + '</span></td>';
            wishListTable += '<td data-label="action"><a class="ps-btn" onclick="addItemToCart('+json[i].id+')">Add to cart</a></td></tr>';
        }
        return wishListTable;
    }
    function getNoWishProductFound() {
        return '<tr><td colspan="5" class="text-center"><h1>No wishlist found !!!</h1></td></tr>';
    }

    // Add to cart in wishlist page
    function checkStock(productId,qty){
        if (qty !=null){
            for (let i = 0; i < products.length ; i++) {
                if (products[i].id == productId){
                    if (qty < products[i].stockQuantity){
                        return true;
                    }else{
                        return false;
                    }
                }
            }
        }else{
            return true;
        }

        return false;
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

    function addItemToCart(id){
        if (checkStock(id,getCartProductQty(id))){
            const data = null;
            const xhr = new XMLHttpRequest();
            xhr.addEventListener("readystatechange", function () {
                if (this.readyState === this.DONE) {
                    var json = JSON.parse(this.responseText);
                    console.log("json addItem: "+json)
                    if (cartItems.length>0){
                        var count = 0;
                        for (let i = 0; i < cartItems.length; i++) {
                            //if duplicate sellingQuantity +=1
                            if (cartItems[i].product.id == json.product.id){
                                cartItems[i].sellingQuantity += 1
                                cartItems[i].totalPrice =  parseFloat(cartItems[i].totalPrice) *  parseInt(cartItems[i].sellingQuantity)
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
                        console.log("cartItems: "+cartItems)
                        countCartItems()
                        showCartItems()
                        updateCartItemsCookie(cartItems)
                    }
                    msg("Add to cart successful!");
                    removeFromWishList(id)
                    
                }
            });

            xhr.open("GET", "${pageContext.servletContext.contextPath}/cart/get?productId="
                + id);
            xhr.setRequestHeader('Content-type', 'application/json');
            xhr.send(data);
        }else{
        	msg("Add to cart failed!");
        }
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
</body>

