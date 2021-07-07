<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<hr>
<!-- Messenger Plugin chat Code -->
<div id="fb-root"></div>

<!-- Your Plugin chat code -->
<div id="fb-customer-chat" class="fb-customerchat">
</div>

<footer class="ps-footer">
    <div class="ps-container">
        <div class="ps-footer__widgets">
            <aside class="widget widget_footer widget_contact-us">
                <h4 class="widget-title">Contact us</h4>
                <div class="widget_content">
                    <p>Call us 24/7</p>
                    <h3>1800 97 97 69</h3>
                    <p>502 New Design Str, Melbourne, Australia <br><a href="mailto:contact@martfury.co">contact@martfury.co</a></p>
                    <ul class="ps-list--social">
                        <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a class="google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
                        <li><a class="instagram" href="#"><i class="fa fa-instagram"></i></a></li>
                    </ul>
                </div>
            </aside>
            <aside class="widget widget_footer">
                <h4 class="widget-title">Quick links</h4>
                <ul class="ps-list--link">
                    <li><a href="#">Policy</a></li>
                    <li><a href="#">Term & Condition</a></li>
                    <li><a href="#">Shipping</a></li>
                    <li><a href="#">Return</a></li>
                    <li><a href="faqs.html">FAQs</a></li>
                </ul>
            </aside>
            <aside class="widget widget_footer">
                <h4 class="widget-title">Company</h4>
                <ul class="ps-list--link">
                    <li><a href="about-us.html">About Us</a></li>
                    <li><a href="#">Affilate</a></li>
                    <li><a href="#">Career</a></li>
                    <li><a href="contact-us.html">Contact</a></li>
                </ul>
            </aside>
            <aside class="widget widget_footer">
                <h4 class="widget-title">Bussiness</h4>
                <ul class="ps-list--link">
                    <li><a href="#">Our Press</a></li>
                    <li><a href="checkout.html">Checkout</a></li>
                    <li><a href="my-account.html">My account</a></li>
                    <li><a href="shop-default.html">Shop</a></li>
                </ul>
            </aside>
        </div>
        <div class="ps-footer__links">
            <p><strong>Consumer Electric:</strong><a href="#">Air Conditioners</a><a href="#">Audios &amp; Theaters</a><a href="#">Car Electronics</a><a href="#">Office Electronics</a><a href="#">TV Televisions</a><a href="#">Washing Machines</a>
            </p>
            <p><strong>Clothing &amp; Apparel:</strong><a href="#">Printers</a><a href="#">Projectors</a><a href="#">Scanners</a><a href="#">Store &amp; Business</a><a href="#">4K Ultra HD TVs</a><a href="#">LED TVs</a><a href="#">OLED TVs</a>
            </p>
            <p><strong>Home, Garden &amp; Kitchen:</strong><a href="#">Cookware</a><a href="#">Decoration</a><a href="#">Furniture</a><a href="#">Garden Tools</a><a href="#">Garden Equipments</a><a href="#">Powers And Hand Tools</a><a href="#">Utensil &amp; Gadget</a>
            </p>
            <p><strong>Health &amp; Beauty:</strong><a href="#">Hair Care</a><a href="#">Decoration</a><a href="#">Hair Care</a><a href="#">Makeup</a><a href="#">Body Shower</a><a href="#">Skin Care</a><a href="#">Cologine</a><a href="#">Perfume</a>
            </p>
            <p><strong>Jewelry &amp; Watches:</strong><a href="#">Necklace</a><a href="#">Pendant</a><a href="#">Diamond Ring</a><a href="#">Sliver Earing</a><a href="#">Leather Watcher</a><a href="#">Gucci</a>
            </p>
            <p><strong>Computer &amp; Technologies:</strong><a href="#">Desktop PC</a><a href="#">Laptop</a><a href="#">Smartphones</a><a href="#">Tablet</a><a href="#">Game Controller</a><a href="#">Audio &amp; Video</a><a href="#">Wireless Speaker</a><a href="#">Done</a>
            </p>
        </div>
        <div class="ps-footer__copyright">
            <p>© 2018 Martfury. All Rights Reserved</p>
            <p><span>We Using Safe Payment For:</span><a href="#"><img src="${pageContext.servletContext.contextPath}/img/payment-method/1.jpg" alt=""></a><a href="#"><img src="${pageContext.servletContext.contextPath}/img/payment-method/2.jpg" alt=""></a><a href="#"><img src="${pageContext.servletContext.contextPath}/img/payment-method/3.jpg" alt=""></a><a href="#"><img src="${pageContext.servletContext.contextPath}/img/payment-method/4.jpg" alt=""></a><a href="#"><img src="${pageContext.servletContext.contextPath}/img/payment-method/5.jpg" alt=""></a></p>
        </div>
    </div>
</footer>
<div class="ps-popup" id="subscribe" data-time="500">
    <div class="ps-popup__content bg--cover" data-background="${pageContext.servletContext.contextPath}/img/bg/subscribe.jpg"><a class="ps-popup__close" href="#"><i class="icon-cross"></i></a>
        <form class="ps-form--subscribe-popup" action="index.html" method="get">
            <div class="ps-form__content">
                <h4>Get <strong>25%</strong> Discount</h4>
                <p>Subscribe to the Martfury mailing list <br /> to receive updates on new arrivals, special offers <br /> and our promotions.</p>
                <div class="form-group">
                    <input class="form-control" type="text" placeholder="Email Address" required>
                    <button class="ps-btn">Subscribe</button>
                </div>
                <div class="ps-checkbox">
                    <input class="form-control" type="checkbox" id="not-show" name="not-show">
                    <label for="not-show">Don't show this popup again</label>
                </div>
            </div>
        </form>
    </div>
</div>
<div id="back2top"><i class="icon icon-arrow-up"></i></div>
<div class="ps-site-overlay"></div>
<div id="loader-wrapper">
    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
</div>
<div class="ps-search" id="site-search"><a class="ps-btn--close" href="#"></a>
    <div class="ps-search__content">
        <form class="ps-form--primary-search" action="do_action" method="post">
            <input class="form-control" type="text" placeholder="Search for...">
            <button><i class="aroma-magnifying-glass"></i></button>
        </form>
    </div>
</div>



<script>
    var chatbox = document.getElementById('fb-customer-chat');
    chatbox.setAttribute("page_id", "107789288221368");
    chatbox.setAttribute("attribution", "biz_inbox");
    window.fbAsyncInit = function() {
        FB.init({
            xfbml            : true,
            version          : 'v11.0'
        });
    };

    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
</script>
<script src="${pageContext.servletContext.contextPath}/plugins/jquery.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/plugins/nouislider/nouislider.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/plugins/popper.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/plugins/owl-carousel/owl.carousel.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/plugins/imagesloaded.pkgd.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/plugins/masonry.pkgd.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/plugins/isotope.pkgd.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/plugins/jquery.matchHeight-min.js"></script>
<script src="${pageContext.servletContext.contextPath}/plugins/slick/slick/slick.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/plugins/jquery-bar-rating/dist/jquery.barrating.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/plugins/slick-animation.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/plugins/lightGallery-master/dist/js/lightgallery-all.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/plugins/sticky-sidebar/dist/sticky-sidebar.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/plugins/select2/dist/js/select2.full.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/plugins/gmap3.min.js"></script>
<!-- custom scripts-->
<script src="${pageContext.servletContext.contextPath}/js/main.js"></script>

<script>
    $(document).ready(function(){
        // var queryOnchange="";
        // var queryFilter="";
        // var filter = document.querySelector('#filter');
        // var brand = document.querySelector('#filterBrand');
        // var part = document.querySelector('#filterPart');
        // var tblProduct = document.querySelector('#filteredProduct');
        // var totalProduct = document.querySelector('#productTotal');
        // var cbxFilter =document.querySelector('#cbxFilter');
        // var searchBrand =document.querySelector('#searchBrand');
        // var queryParams = new URLSearchParams(window.location.search);
        // var btnPrice =document.querySelector('#btnPrice');

//cookie and cartItem
        var cartItems = [];
        window.onload =  initCartItem();
//remove item to cart
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
    })


</script>
</html>