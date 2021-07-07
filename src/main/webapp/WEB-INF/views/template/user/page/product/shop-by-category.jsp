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
                <aside class="widget widget_shop"  >
                    <h4 class="widget-title">BY BRANDS</h4>
                    <div class="ps-form--widget-search">
                        <input class="form-control" type="text" placeholder="Search Brand" id="searchBrand">
                        <button><i class="icon-magnifier"></i></button>
                    </div>
                    <div id="filter">
                        <figure class="ps-custom-scrollbar" data-height="250" id="filterBrand">
                            <%--                        ${not empty param.success}--%>
                            <%--                        ${param.brand}--%>
                            <c:choose>
                                <c:when test="${not empty brandByProduct }">
                                    <c:forEach var="b" items="${brandByProduct}">
                                        <div class="ps-checkbox">
                                            <input class="form-control" type="checkbox" id="brand-${b.id}"  name="brand" value="${b.id}" >
                                            <label for="brand-${b.id}">${b.name}</label>
                                        </div>
                                    </c:forEach>
                                </c:when>
                                <c:otherwise>
                                    <c:forEach var="b" items="${brandsByCategory[categoryByProduct.name]}">
                                        <div class="ps-checkbox">
                                            <input class="form-control" type="checkbox" id="brand-${b.id}"  name="brand" value="${b.id}"
                                                ${param.brand == b.id ?"checked":""}
                                            >
                                            <label for="brand-${b.id}" >${b.name}</label>
                                        </div>
                                    </c:forEach>
                                </c:otherwise>
                            </c:choose>
                        </figure>
                        <figure id="filterPart" >
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
                                            <input class="form-control" type="checkbox" id="type-${t.name}"  name="type" value="${t.name}"
                                                ${param.type == t.id ?"checked":""}
                                            >
                                            <label for="type-${t.name}" >${t.name}</label>
                                        </div>
                                    </c:forEach>
                                </c:otherwise>
                            </c:choose>

                        </figure>
                    </div>
                    <hr>
                    <figure id="filterPrice">
                        <h4 class="widget-title">By Price</h4>
<%--                        <form action="" method="get" class="text-center">--%>
                            <div class="d-flex ml-4" style="align-items: center">
                                <input class="form-control" type="number" name="priceFrom" id="from" placeholder="From" style = "width: 100px" required>
                                <div style="height: 1px; width: 10px;    background: #bdbdbd;     margin: 0 .625rem;"></div>
                                <input  class="form-control" type="number" name="priceTo" id="to" placeholder="To" style = "width: 100px" required>
                            </div>
                            <button class="ps-btn mt-3" style="padding: 10px 55px" id="btnPrice">Apply</button>
<%--                        </form>--%>
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
                        <div id="productTotal">
                            <p><strong> ${countProduct}</strong> Products found</p>
                        </div>

                        <div class="ps-shopping__actions">
                            <select  class="form-control" id="cbxFilter">
                                <option value="select" selected disabled>Select</option>
                                <option value="lowToHigh">Sort by price: low to high</option>
                                <option value="highToLow">Sort by price: high to low</option>
                            </select>
                        </div>
                    </div>
                    <div class="ps-tabs">
                        <div class="ps-tab active" id="tab-1">
                            <div class="ps-shopping-product">
                                <div class="row" id="filteredProduct">
                                    <c:choose>
                                        <c:when test="${not empty products}">
                                            <c:forEach var="p" items="${products}">
                                                <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-6 ">
                                                    <div class="ps-product">
                                                        <div class="ps-product__thumbnail"><a href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}"><img src="${pageContext.request.contextPath}/product/display/0&${p.id}" alt="" style="width: 156px;height: 156px"></a>
                                                            <ul class="ps-product__actions">
                                                                <li value="${p.id}" class="toCart"><a  data-toggle="tooltip" data-placement="top" title="Add To Cart" ><i class="icon-bag2"></i></a></li>
                                                                <li><a  data-placement="top" title="Quick View" data-toggle="modal" data-target="#product-quickview-${p.id}"><i class="icon-eye"></i></a></li>
                                                                <li><a  data-toggle="tooltip" data-placement="top" title="Add to Whishlist"><i class="icon-heart"></i></a></li>
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
                                        </c:when>
                                        <c:otherwise>
                                            <div class='ps-section__content' style='width: 100%'><h1 style='text-align:center'>No product found !!!</h1></div>
                                        </c:otherwise>
                                    </c:choose>



                                </div>
                            </div>
                            <div class="ps-pagination">
                                <ul class="pagination">
                                    <li class="active"><a >1</a></li>
                                    <li><a >2</a></li>
                                    <li><a >3</a></li>
                                    <li><a >Next Page<i class="icon-chevron-right"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="productPopup">

    <c:forEach var="p" items="${allProducts}">

        <div class="modal fade product-quickview-open" id="product-quickview-${p.id}" tabindex="-1" role="dialog" aria-labelledby="product-quickview-${p.id}" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content"><span class="modal-close" data-dismiss="modal"><i class="icon-cross2"></i></span>
                    <article class="ps-product--detail ps-product--fullwidth ps-product--quickview">
                        <div class="ps-product__header">
                            <div class="ps-product__thumbnail" data-vertical="false">
                                <div class="ps-product__images" data-arrow="true">
                                    <div class="item"><img src="${pageContext.request.contextPath}/product/display/0&${p.id}" alt="" style="width: 404px;height: 404px"></div>
                                    <div class="item"><img src="${pageContext.request.contextPath}/product/display/1&${p.id}" alt="" style="width: 404px;height: 404px"></div>
                                    <div class="item"><img src="${pageContext.request.contextPath}/product/display/2&${p.id}" alt="" style="width: 404px;height: 404px"></div>
                                    <div class="item"><img src="${pageContext.request.contextPath}/product/display/3&${p.id}" alt="" style="width: 404px;height: 404px"></div>
                                </div>
                            </div>
                            <div class="ps-product__info">
                                <h1>${p.productName}</h1>
                                <div class="ps-product__meta">
                                    <p>Brand: <a href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}">${p.brand.name}</a></p>
                                    <div class="ps-product__rating">
                                        <select class="ps-rating" data-read-only="true">
                                            <option value="1">1</option>
                                            <option value="1">2</option>
                                            <option value="1">3</option>
                                            <option value="1">4</option>
                                            <option value="2">5</option>
                                        </select><span>(1 review)</span>
                                    </div>
                                </div>
                                <h4 class="ps-product__price">$${p.price}</h4>
                                <div class="ps-product__desc">
                                    <p>Sold By:<a href="${pageContext.servletContext.contextPath}/product/detail?id=${p.id}"><strong> Angry Nerds</strong></a></p>
                                    <ul class="ps-list--dot">
                                        <li> Unrestrained and portable active stereo speaker</li>
                                        <li> Free from the confines of wires and chords</li>
                                        <li> 20 hours of portable capabilities</li>
                                        <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>
                                        <li> 20 hours of portable capabilities</li>
                                    </ul>
                                </div>
                                <div class="ps-product__shopping"><a class="ps-btn ps-btn--black" >Add to cart</a><a class="ps-btn" >Buy Now</a>
                                </div>
                            </div>
                        </div>
                    </article>
                </div>
            </div>
        </div>

    </c:forEach>

</div>



<jsp:include page="../../components/footer.jsp"></jsp:include>

<script>
    $(document).ready(function(){
        var queryOnchange="";
        var queryFilter="";
        var filter = document.querySelector('#filter');
        var brand = document.querySelector('#filterBrand');
        var part = document.querySelector('#filterPart');
        var tblProduct = document.querySelector('#filteredProduct');
        var totalProduct = document.querySelector('#productTotal');
        var cbxFilter =document.querySelector('#cbxFilter');
        var searchBrand =document.querySelector('#searchBrand');
        var queryParams = new URLSearchParams(window.location.search);
        var btnPrice =document.querySelector('#btnPrice');

//cookie and cartItem
        var cartItems = [];
        var products = []
        window.onload =  initData();

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
                }
            }
        });
//add to Cart
        $(document).on("click",".toCart", function(event){
            console.log(this.value)
          if (checkStock(this.value,getCartProductQty(this.value))){
              addItemToCart("${pageContext.servletContext.contextPath}/cart/get?productId="+this.value)
          }else{
              event.preventDefault()
          }


        });

//btn Price
        btnPrice.addEventListener('click', function() {
            var minPrice = document.querySelector('#from')
            var maxPrice = document.querySelector('#to')
            var queryPrice = "priceFrom="+minPrice.value+"&priceTo="+maxPrice.value+"&"
            history.replaceState(null, null, "?"+queryPrice.substring(0,queryPrice.length-1));
            // window.location.replace(window.location.search);
            queryParams.set("priceFrom",minPrice.value)
            queryParams.set("priceTo",maxPrice.value)
            if (queryPrice ==""){
                getRequestGET("${pageContext.servletContext.contextPath}/filter/product&")
            }else {
                getRequestGET("${pageContext.servletContext.contextPath}/filter/product?"+queryPrice)
            }
        })


//seach brand textbox
        searchBrand.addEventListener('keyup', function() {

            const data = null;
            const xhr = new XMLHttpRequest();

            console.log("${pageContext.servletContext.contextPath}/filter/brand?brandName="+this.value)
            xhr.open("GET", "${pageContext.servletContext.contextPath}/filter/brand?brandName="+this.value);
            xhr.setRequestHeader('Content-type', 'application/json');
            xhr.addEventListener("readystatechange", function () {
                if (this.readyState === this.DONE) {
                    var json = JSON.parse(this.responseText);
                    if (json.length >0){
                        brand.innerHTML = getBrand(json)
                    }else{
                        brand.innerHTML = getNoBrandFound()
                    }
                }
            });
            xhr.send(data);
        })

//check box brand
        filter.addEventListener('change', function() {
            queryOnchange=""
            let checkboxBrand = document.querySelectorAll('#filterBrand input[name="brand"]');
            let checkboxType = document.querySelectorAll('#filterPart input[name="type"]');

            //replace query string
            if (queryParams.has("category")){
                var categoryId = queryParams.get("category");
                queryOnchange +="category="+categoryId+"&"
            }
            if (queryParams.has("priceFrom") && queryParams.has("priceTo")){
                queryOnchange +="priceFrom="+queryParams.get("priceFrom")+"&"+"priceTo="+queryParams.get("priceTo")+"&"
            }


            for (const cbxBrand of checkboxBrand) {
                if (cbxBrand.checked) {
                    queryOnchange +="brand="+cbxBrand.value+"&"
                }
            }

            for (const cbxType of checkboxType) {
                if (cbxType.checked) {
                    queryOnchange +="type="+cbxType.value+"&"
                }

            }

            if (queryOnchange ==""){
                history.replaceState(null, null, "");
                getRequestGET("${pageContext.servletContext.contextPath}/filter/product&")
            }else{
                history.replaceState(null, null, "?"+queryOnchange.substring(0,queryOnchange.length -1));
                getRequestGET("${pageContext.servletContext.contextPath}/filter/product?"+queryOnchange)
            }

        });


// combobox
        cbxFilter.addEventListener('change', function() {
            // console.log(this.value)
            queryFilter = ""
            const params = new URLSearchParams(window.location.search)
            if (params.toString() != "") {
                for (const param of params) {
                    var str = param[0] + "=" + param[1] + "&"
                    queryFilter += str
                }
                queryFilter += "sort=" + this.value + "&"
            } else {
                if (queryOnchange != "" || queryOnchange != "select") {
                    queryFilter = queryOnchange + "sort=" + this.value + "&"
                } else {
                    queryFilter = "sort=" + this.value + "&"
                }
            }
            console.log(queryFilter)
            if (queryFilter ==""){
                getRequestGET("${pageContext.servletContext.contextPath}/filter/product&")
            }else{
                getRequestGET("${pageContext.servletContext.contextPath}/filter/product?"+queryFilter)
            }


        })

        //textbox Brand

        function getRequestGET(url){
            const data = null;
            const xhr = new XMLHttpRequest();
            xhr.addEventListener("readystatechange", function () {
                if (this.readyState === this.DONE) {
                    var json = JSON.parse(this.responseText);
                    if (json.length >0){
                        tblProduct.innerHTML = getProductTable(json)
                    }else{
                        tblProduct.innerHTML = getNoProductFound()
                    }
                    totalProduct.innerHTML =getTotalProduct(json)
                }
            });
            url = url.substring(0, url.length - 1)

            console.log(url)
            xhr.open("GET", url);
            xhr.setRequestHeader('Content-type', 'application/json');

            xhr.send(data);
        }


        function  getProductTable(json) {
            var productTable =""
            for (let i = 0; i <json.length; i++) {

                productTable +=  "<div class='col-xl-3 col-lg-4 col-md-4 col-sm-6 col-6 '>";
                productTable +="<div class='ps-product'>";
                productTable += "<div class='ps-product__thumbnail'>";
                productTable +=  "<a href='${pageContext.servletContext.contextPath}/product/detail?id="+json[i].id+"'>";
                productTable +=  "<img src='${pageContext.request.contextPath}/product/display/0&"+json[i].id+"'  style='width: 156px;height: 156px'></a>";
                productTable +=  "<ul class='ps-product__actions'>";
                productTable +=  " <li class='toCart' value='"+json[i].id+"'><a data-toggle='tooltip' data-placement='top' title='Add To Cart' ><i class='icon-bag2'></i></a></li>";
                productTable += "<li><a data-placement='top' title='Quick View' data-toggle='modal' data-target='#product-quickview-"+json[i].id+"'><i class='icon-eye'></i></a></li>";
                productTable += "<li><a data-toggle='tooltip' data-placement='top' title='Add to Whishlist'><i class='icon-heart'></i></a></li> </ul> </div>";
                productTable += "<div class='ps-product__container'> <div class='ps-product__content'>";
                productTable += "<a class='ps-product__title' href='${pageContext.servletContext.contextPath}/product/detail?id="+json[i].id+"'>"+json[i].productName+"</a>";
                productTable +=  "<p class='ps-product__price'>$"+json[i].price+"</p> </div>";
                productTable +=  "<div class='ps-product__content hover'>";
                productTable += "<a class='ps-product__title' href='${pageContext.servletContext.contextPath}/product/detail?id="+json[i].id+"'>"+json[i].productName+"</a>";
                productTable +=  "<p class='ps-product__price'>$"+json[i].price+"</p></div></div></div></div>";
            }
            return productTable;
        }

        function  getBrand(json) {
            var brandDiv =""
            for (let i = 0; i <json.length; i++) {
                brandDiv+="<div class='ps-checkbox'>"
                brandDiv+=" <input class='form-control' type='checkbox' id='brand-"+json[i].id+"'  name='brand' value='"+json[i].id+"'>"
                brandDiv+="   <label for='brand-"+json[i].id+"' >"+json[i].name+"</label> </div>"
            }
            return brandDiv;
        }

        function  getTotalProduct(json) {

            return " <p><strong> "+json.length+"</strong> Products found</p>"
        }

        function  getNoProductFound(){
            return "<div class='ps-section__content' style='width: 100%'><h1 style='text-align:center'>No product found !!!</h1></div>"
        }

        function getNoBrandFound() {
            return "<h4>No brand found !!!</h4>"
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

        function getCartItemContent(items) {
            var cartItemContent ="";
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
                cartItemContent +="<figure><a class='ps-btn' href='${pageContext.servletContext.contextPath}/cart'>View Cart</a><a class='ps-btn' href='${pageContext.servletContext.contextPath}/customer/product/checkout'>Checkout</a></figure>"
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
                    console.log(json)
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

    })


</script>
</body>

