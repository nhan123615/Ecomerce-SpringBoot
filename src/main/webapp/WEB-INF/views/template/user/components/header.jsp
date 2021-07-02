<%@ page import="java.security.Principal" %>
<%@ page import="org.springframework.security.core.Authentication" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




<header class="header header--1 fixed-top" data-sticky="true">
    <div class="header__top ">
        <div class="ps-container">
            <div class="header__left">
                <div class="menu--product-categories">
                    <div class="menu__toggle"><i class="icon-menu"></i><span> Shop by Department</span></div>
                    <div class="menu__content">
<%--                        product category--%>
                        <ul class="menu--dropdown">
                            <c:forEach  items="${categories}" var="c">
                                <li class="menu-item-has-children has-mega-menu"><a href="${pageContext.servletContext.contextPath}/product?category=${c.id}"><i class="icon-desktop"></i>${c.name}</a>
                                    <div class="mega-menu">
                                        <div class="mega-menu__column">
                                                <%--                                                ${typeByCategory}--%>
                                            <h4>Parts<span class="sub-toggle"></span></h4>
                                            <ul class="mega-menu__list">
                                                <c:forEach items="${typeByCategory[c.name]}" var="t">
                                                    <li><a href="${pageContext.servletContext.contextPath}/product?category=${c.id}&type=${t.id}">${t.name}</a>
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                        </div>

                                        <div class="mega-menu__column">
                                            <h4>Brand<span class="sub-toggle"></span></h4>
                                            <ul class="mega-menu__list">
                                                <c:forEach items="${brandsByCategory[c.name]}" var="b">
                                                    <li><a href="${pageContext.servletContext.contextPath}/product?category=${c.id}&brand=${b.id}">${b.name}</a>
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                        </div>

                                    </div>
                                </li>

                            </c:forEach>
                        </ul>
    <%--                        product category--%>

                    </div>
<%--                </div><a class="ps-logo" href="index.html"><img src="${pageContext.servletContext.contextPath}/img/logo_light.png" alt=""></a></div>--%>
        </div><a class="ps-logo" href="index.html"><img src="${pageContext.servletContext.contextPath}/img/Angry-Nerds-2.png"  alt=""></a></div>

    <div class="header__center">
                <form class="ps-form--quick-search" action="index.html" method="get">
                    <div class="form-group--icon"><i class="icon-chevron-down"></i>
                        <select class="form-control">
                            <option value="0" selected="selected">All</option>
                            <option class="level-0" value="babies-moms">Babies & Moms</option>
                            <option class="level-0" value="books-office">Books & Office</option>
                            <option class="level-0" value="cars-motocycles">Cars & Motocycles</option>
                            <option class="level-0" value="clothing-apparel">Clothing & Apparel</option>
                            <option class="level-1" value="accessories-clothing-apparel">Accessories</option>
                            <option class="level-1" value="bags">Bags</option>
                            <option class="level-1" value="kids-fashion">Kid’s Fashion</option>
                            <option class="level-1" value="mens">Mens</option>
                            <option class="level-1" value="shoes">Shoes</option>
                            <option class="level-1" value="sunglasses">Sunglasses</option>
                            <option class="level-1" value="womens">Womens</option>
                            <option class="level-0" value="computers-technologies">Computers & Technologies</option>
                            <option class="level-1" value="desktop-pc">Desktop PC</option>
                            <option class="level-1" value="laptop">Laptop</option>
                            <option class="level-1" value="smartphones">Smartphones</option>
                            <option class="level-0" value="consumer-electrics">Consumer Electrics</option>
                            <option class="level-1" value="air-conditioners">Air Conditioners</option>
                            <option class="level-2" value="accessories">Accessories</option>
                            <option class="level-2" value="type-hanging-cell">Type Hanging Cell</option>
                            <option class="level-2" value="type-hanging-wall">Type Hanging Wall</option>
                            <option class="level-1" value="audios-theaters">Audios & Theaters</option>
                            <option class="level-2" value="headphone">Headphone</option>
                            <option class="level-2" value="home-theater-system">Home Theater System</option>
                            <option class="level-2" value="speakers">Speakers</option>
                            <option class="level-1" value="car-electronics">Car Electronics</option>
                            <option class="level-2" value="audio-video">Audio & Video</option>
                            <option class="level-2" value="car-security">Car Security</option>
                            <option class="level-2" value="radar-detector">Radar Detector</option>
                            <option class="level-2" value="vehicle-gps">Vehicle GPS</option>
                            <option class="level-1" value="office-electronics">Office Electronics</option>
                            <option class="level-2" value="printers">Printers</option>
                            <option class="level-2" value="projectors">Projectors</option>
                            <option class="level-2" value="scanners">Scanners</option>
                            <option class="level-2" value="store-business">Store & Business</option>
                            <option class="level-1" value="refrigerators">Refrigerators</option>
                            <option class="level-1" value="tv-televisions">TV Televisions</option>
                            <option class="level-2" value="4k-ultra-hd-tvs">4K Ultra HD TVs</option>
                            <option class="level-2" value="led-tvs">LED TVs</option>
                            <option class="level-2" value="oled-tvs">OLED TVs</option>
                            <option class="level-1" value="washing-machines">Washing Machines</option>
                            <option class="level-2" value="type-drying-clothes">Type Drying Clothes</option>
                            <option class="level-2" value="type-horizontal">Type Horizontal</option>
                            <option class="level-2" value="type-vertical">Type Vertical</option>
                            <option class="level-0" value="garden-kitchen">Garden & Kitchen</option>
                            <option class="level-1" value="cookware">Cookware</option>
                            <option class="level-1" value="decoration">Decoration</option>
                            <option class="level-1" value="furniture">Furniture</option>
                            <option class="level-1" value="garden-tools">Garden Tools</option>
                            <option class="level-1" value="home-improvement">Home Improvement</option>
                            <option class="level-1" value="powers-and-hand-tools">Powers And Hand Tools</option>
                            <option class="level-1" value="utensil-gadget">Utensil & Gadget</option>
                            <option class="level-0" value="health-beauty">Health & Beauty</option>
                            <option class="level-1" value="equipments">Equipments</option>
                            <option class="level-1" value="hair-care">Hair Care</option>
                            <option class="level-1" value="perfumer">Perfumer</option>
                            <option class="level-1" value="skin-care">Skin Care</option>
                            <option class="level-0" value="jewelry-watches">Jewelry & Watches</option>
                            <option class="level-1" value="gemstone-jewelry">Gemstone Jewelry</option>
                            <option class="level-1" value="mens-watches">Men’s Watches</option>
                            <option class="level-1" value="womens-watches">Women’s Watches</option>
                            <option class="level-0" value="phones-accessories">Phones & Accessories</option>
                            <option class="level-1" value="iphone-8">Iphone 8</option>
                            <option class="level-1" value="iphone-x">Iphone X</option>
                            <option class="level-1" value="sam-sung-note-8">Sam Sung Note 8</option>
                            <option class="level-1" value="sam-sung-s8">Sam Sung S8</option>
                            <option class="level-0" value="sport-outdoor">Sport & Outdoor</option>
                            <option class="level-1" value="freezer-burn">Freezer Burn</option>
                            <option class="level-1" value="fridge-cooler">Fridge Cooler</option>
                            <option class="level-1" value="wine-cabinets">Wine Cabinets</option>
                        </select>
                    </div>
                    <input class="form-control" type="text" placeholder="I'm shopping for..." id="input-search">
                    <button>Search</button>
                    <div class="ps-panel--search-result">
                        <div class="ps-panel__content">
                            <div class="ps-product ps-product--wide ps-product--search-result">
                                <div class="ps-product__thumbnail"><a href="product-default.html"><img src="${pageContext.servletContext.contextPath}/img/products/arrivals/1.jpg" alt=""></a></div>
                                <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Apple iPhone Retina 6s Plus 32GB</a>
                                    <div class="ps-product__rating">
                                        <select class="ps-rating" data-read-only="true">
                                            <option value="1">1</option>
                                            <option value="1">2</option>
                                            <option value="1">3</option>
                                            <option value="1">4</option>
                                            <option value="2">5</option>
                                        </select><span></span>
                                    </div>
                                    <p class="ps-product__price">$990.50</p>
                                </div>
                            </div>
                            <div class="ps-product ps-product--wide ps-product--search-result">
                                <div class="ps-product__thumbnail"><a href="product-default.html"><img src="${pageContext.servletContext.contextPath}/img/products/arrivals/1.jpg" alt=""></a></div>
                                <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Apple iPhone Retina 6s Plus 64GB</a>
                                    <div class="ps-product__rating">
                                        <select class="ps-rating" data-read-only="true">
                                            <option value="1">1</option>
                                            <option value="1">2</option>
                                            <option value="1">3</option>
                                            <option value="1">4</option>
                                            <option value="2">5</option>
                                        </select><span></span>
                                    </div>
                                    <p class="ps-product__price">$1120.50</p>
                                </div>
                            </div>
                            <div class="ps-product ps-product--wide ps-product--search-result">
                                <div class="ps-product__thumbnail"><a href="product-default.html"><img src="${pageContext.servletContext.contextPath}/img/products/arrivals/1.jpg" alt=""></a></div>
                                <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Apple iPhone Retina 6s Plus 128GB</a>
                                    <div class="ps-product__rating">
                                        <select class="ps-rating" data-read-only="true">
                                            <option value="1">1</option>
                                            <option value="1">2</option>
                                            <option value="1">3</option>
                                            <option value="1">4</option>
                                            <option value="2">5</option>
                                        </select><span></span>
                                    </div>
                                    <p class="ps-product__price">$1220.50</p>
                                </div>
                            </div>
                            <div class="ps-product ps-product--wide ps-product--search-result">
                                <div class="ps-product__thumbnail"><a href="product-default.html"><img src="${pageContext.servletContext.contextPath}/img/products/arrivals/2.jpg" alt=""></a></div>
                                <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Marshall Kilburn Portable Wireless Speaker</a>
                                    <div class="ps-product__rating">
                                        <select class="ps-rating" data-read-only="true">
                                            <option value="1">1</option>
                                            <option value="1">2</option>
                                            <option value="1">3</option>
                                            <option value="1">4</option>
                                            <option value="2">5</option>
                                        </select><span>01</span>
                                    </div>
                                    <p class="ps-product__price">$36.78 – $56.99</p>
                                </div>
                            </div>
                            <div class="ps-product ps-product--wide ps-product--search-result">
                                <div class="ps-product__thumbnail"><a href="product-default.html"><img src="${pageContext.servletContext.contextPath}/img/products/arrivals/3.jpg" alt=""></a></div>
                                <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Herschel Leather Duffle Bag In Brown Color</a>
                                    <div class="ps-product__rating">
                                        <select class="ps-rating" data-read-only="true">
                                            <option value="1">1</option>
                                            <option value="1">2</option>
                                            <option value="1">3</option>
                                            <option value="1">4</option>
                                            <option value="2">5</option>
                                        </select><span>02</span>
                                    </div>
                                    <p class="ps-product__price">$125.30</p>
                                </div>
                            </div>
                            <div class="ps-product ps-product--wide ps-product--search-result">
                                <div class="ps-product__thumbnail"><a href="product-default.html"><img src="${pageContext.servletContext.contextPath}/img/products/arrivals/4.jpg" alt=""></a></div>
                                <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Xbox One Wireless Controller Black Color</a>
                                    <div class="ps-product__rating">
                                        <select class="ps-rating" data-read-only="true">
                                            <option value="1">1</option>
                                            <option value="1">2</option>
                                            <option value="1">3</option>
                                            <option value="1">4</option>
                                            <option value="2">5</option>
                                        </select><span>02</span>
                                    </div>
                                    <p class="ps-product__price">$55.30</p>
                                </div>
                            </div>
                            <div class="ps-product ps-product--wide ps-product--search-result">
                                <div class="ps-product__thumbnail"><a href="product-default.html"><img src="${pageContext.servletContext.contextPath}/img/products/arrivals/5.jpg" alt=""></a></div>
                                <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Grand Slam Indoor Of Show Jumping Novel</a>
                                    <div class="ps-product__rating">
                                        <select class="ps-rating" data-read-only="true">
                                            <option value="1">1</option>
                                            <option value="1">2</option>
                                            <option value="1">3</option>
                                            <option value="1">4</option>
                                            <option value="2">5</option>
                                        </select><span>02</span>
                                    </div>
                                    <p class="ps-product__price sale">$41.27 <del>$52.99 </del></p>
                                </div>
                            </div>
                            <div class="ps-product ps-product--wide ps-product--search-result">
                                <div class="ps-product__thumbnail"><a href="product-default.html"><img src="${pageContext.servletContext.contextPath}/img/products/arrivals/6.jpg" alt=""></a></div>
                                <div class="ps-product__content"><a class="ps-product__title" href="product-default.html">Sound Intone I65 Earphone White Version</a>
                                    <div class="ps-product__rating">
                                        <select class="ps-rating" data-read-only="true">
                                            <option value="1">1</option>
                                            <option value="1">2</option>
                                            <option value="1">3</option>
                                            <option value="1">4</option>
                                            <option value="2">5</option>
                                        </select><span>01</span>
                                    </div>
                                    <p class="ps-product__price sale">$41.27 <del>$62.39 </del></p>
                                </div>
                            </div>
                        </div>
                        <div class="ps-panel__footer text-center"><a href="shop-default.html">See all results</a></div>
                    </div>
                </form>
            </div>
            <div class="header__right">
                <div class="header__actions"><a class="header__extra" href="#"><i class="icon-chart-bars"></i><span><i>0</i></span></a><a class="header__extra" href="#"><i class="icon-heart"></i><span><i>0</i></span></a>
                    <div class="ps-cart--mini"><a class="header__extra" href="#"><i class="icon-bag2"></i><span><i>0</i></span></a>
                        <div class="ps-cart__content">
                            <div class="ps-cart__items">
                                <div class="ps-product--cart-mobile">
                                    <div class="ps-product__thumbnail"><a href="#"><img src="${pageContext.servletContext.contextPath}/img/products/clothing/7.jpg" alt=""></a></div>
                                    <div class="ps-product__content"><a class="ps-product__remove" href="#"><i class="icon-cross"></i></a><a href="product-default.html">MVMTH Classical Leather Watch In Black</a>
                                        <p><strong>Sold by:</strong> YOUNG SHOP</p><small>1 x $59.99</small>
                                    </div>
                                </div>
                                <div class="ps-product--cart-mobile">
                                    <div class="ps-product__thumbnail"><a href="#"><img src="${pageContext.servletContext.contextPath}/img/products/clothing/5.jpg" alt=""></a></div>
                                    <div class="ps-product__content"><a class="ps-product__remove" href="#"><i class="icon-cross"></i></a><a href="product-default.html">Sleeve Linen Blend Caro Pane Shirt</a>
                                        <p><strong>Sold by:</strong> YOUNG SHOP</p><small>1 x $59.99</small>
                                    </div>
                                </div>
                            </div>
                            <div class="ps-cart__footer">
                                <h3>Sub Total:<strong>$59.99</strong></h3>
                                <figure><a class="ps-btn" href="shopping-cart.html">View Cart</a><a class="ps-btn" href="checkout.html">Checkout</a></figure>
                            </div>
                        </div>
                    </div>
                    <div class="ps-block--user-header">
                        <div class="ps-block__left"><i class="icon-user"></i></div>
                        <c:choose>


                            <c:when test="${user !=null }">

                                <ul class="navigation__extra">
                                     <li>
                                        <div class="ps-dropdown language">
                                            <div class="ps-block__right"><a href="#">${user.username}</a></div>
                                    <ul class="ps-dropdown-menu" >
                                            <c:choose>
                                            <c:when test="${user.role  == 'ROLE_USER' }">
                                                <li style="border-bottom: 1px solid black"><a href="${pageContext.servletContext.contextPath}/customer">Info</a></li>
                                            </c:when>
                                            <c:otherwise>
                                                <li style="border-bottom: 1px solid black"><a href="${pageContext.servletContext.contextPath}/admin">Admin Page</a></li>
                                            </c:otherwise>
                                            </c:choose>
                                                <li style="border-bottom: 1px solid black"><a href="${pageContext.servletContext.contextPath}/logout">Logout</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                            </c:when>

                            <c:otherwise>
                                <div class="ps-block__right"><a href="${pageContext.servletContext.contextPath}/login">Login</a><a href="${pageContext.servletContext.contextPath}/register">Register</a></div>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </div>
    </div>




    <nav class="navigation ">
        <div class="ps-container">
            <div class="navigation__left">
                <div class="menu--product-categories">
                    <div class="menu__toggle"><i class="icon-menu"></i><span> Shop by Department</span></div>
                    <div class="menu__content">
                        <%--                        product category--%>

                            <ul class="menu--dropdown">
                                <c:forEach  items="${categories}" var="c">
                                    <li class="menu-item-has-children has-mega-menu"><a href="${pageContext.servletContext.contextPath}/product?category=${c.id}"><i class="icon-desktop"></i>${c.name}</a>
                                        <div class="mega-menu">
                                            <div class="mega-menu__column">
                                                <h4>Parts<span class="sub-toggle"></span></h4>
                                                <ul class="mega-menu__list">
                                                    <c:forEach items="${typeByCategory[c.name]}" var="t">
                                                        <li><a href="${pageContext.servletContext.contextPath}/product?category=${c.id}&type=${t.id}">${t.name}</a>
                                                        </li>
                                                    </c:forEach>
                                                </ul>
                                            </div>
<%--                                            #//commit--%>
                                            <div class="mega-menu__column">
                                                <h4>Brand<span class="sub-toggle"></span></h4>
                                                <ul class="mega-menu__list">
                                                    <c:forEach items="${brandsByCategory[c.name]}" var="b">
                                                        <li><a href="${pageContext.servletContext.contextPath}/product?category=${c.id}&brand=${b.id}">${b.name}</a>
                                                        </li>
                                                    </c:forEach>
                                                </ul>
                                            </div>
                                        </div>
                                    </li>

                                </c:forEach>
                            </ul>
                            <%--                        product category--%>

                    </div>
                </div>
            </div>
            <div class="navigation__right">
                <ul class="menu">
                    <li ><a href="${pageContext.servletContext.contextPath}/">Home</a>
                    </li>
                    <li ><a href="${pageContext.servletContext.contextPath}/product">Shop</a>
                    </li>
                    <li class="menu-item-has-children has-mega-menu"><a href="#">Pages</a><span class="sub-toggle"></span>
                        <div class="mega-menu">
                            <div class="mega-menu__column">
                                <h4>Basic Page<span class="sub-toggle"></span></h4>
                                <ul class="mega-menu__list">
                                    <li><a href="about-us.html">About Us</a>
                                    </li>
                                    <li><a href="contact-us.html">Contact</a>
                                    </li>
                                    <li><a href="faqs.html">Faqs</a>
                                    </li>
                                    <li><a href="comming-soon.html">Comming Soon</a>
                                    </li>
                                    <li><a href="404-page.html">404 Page</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="mega-menu__column">
                                <h4>Vendor Pages<span class="sub-toggle"></span></h4>
                                <ul class="mega-menu__list">
                                    <li><a href="become-a-vendor.html">Become a Vendor</a>
                                    </li>
                                    <li><a href="vendor-store.html">Vendor Store</a>
                                    </li>
                                    <li><a href="vendor-dashboard-free.html">Vendor Dashboard Free</a>
                                    </li>
                                    <li><a href="vendor-dashboard-pro.html">Vendor Dashboard Pro</a>
                                    </li>
                                    <li><a href="store-list.html">Store List</a>
                                    </li>
                                    <li><a href="store-list.html">Store List 2</a>
                                    </li>
                                    <li><a href="store-detail.html">Store Detail</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="mega-menu__column">
                                <h4>Account Pages<span class="sub-toggle"></span></h4>
                                <ul class="mega-menu__list">
                                    <li><a href="user-information.html">User Information</a>
                                    </li>
                                    <li><a href="addresses.html">Addresses</a>
                                    </li>
                                    <li><a href="invoices.html">Invoices</a>
                                    </li>
                                    <li><a href="invoice-detail.html">Invoice Detail</a>
                                    </li>
                                    <li><a href="notifications.html">Notifications</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li class="menu-item-has-children has-mega-menu"><a href="#">Blogs</a><span class="sub-toggle"></span>
                        <div class="mega-menu">
                            <div class="mega-menu__column">
                                <h4>Blog Layout<span class="sub-toggle"></span></h4>
                                <ul class="mega-menu__list">
                                    <li><a href="blog-grid.html">Grid</a>
                                    </li>
                                    <li><a href="blog-list.html">Listing</a>
                                    </li>
                                    <li><a href="blog-small-thumb.html">Small Thumb</a>
                                    </li>
                                    <li><a href="blog-left-sidebar.html">Left Sidebar</a>
                                    </li>
                                    <li><a href="blog-right-sidebar.html">Right Sidebar</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="mega-menu__column">
                                <h4>Single Blog<span class="sub-toggle"></span></h4>
                                <ul class="mega-menu__list">
                                    <li><a href="blog-detail.html">Single 1</a>
                                    </li>
                                    <li><a href="blog-detail-2.html">Single 2</a>
                                    </li>
                                    <li><a href="blog-detail-3.html">Single 3</a>
                                    </li>
                                    <li><a href="blog-detail-4.html">Single 4</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                </ul>
                <ul class="navigation__extra">
                    <li><a href="#">Sell on Martfury</a></li>
                    <li><a href="#">Tract your order</a></li>
                    <li>
                        <div class="ps-dropdown"><a href="#">US Dollar</a>
                            <ul class="ps-dropdown-menu">
                                <li><a href="#">Us Dollar</a></li>
                                <li><a href="#">Euro</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="ps-dropdown language"><a href="#"><img src="${pageContext.servletContext.contextPath}/img/flag/en.png" alt="">English</a>
                            <ul class="ps-dropdown-menu">
                                <li><a href="#"><img src="${pageContext.servletContext.contextPath}/img/flag/germany.png" alt=""> Germany</a></li>
                                <li><a href="#"><img src="${pageContext.servletContext.contextPath}/img/flag/fr.png" alt=""> France</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>









<header class="header header--mobile" data-sticky="true">
    <div class="header__top">
        <div class="header__left">
            <p>Welcome to Martfury Online Shopping Store !</p>
        </div>
        <div class="header__right">
            <ul class="navigation__extra">
                <li><a href="#">Sell on Martfury</a></li>
                <li><a href="#">Tract your order</a></li>
                <li>
                    <div class="ps-dropdown"><a href="#">US Dollar</a>
                        <ul class="ps-dropdown-menu">
                            <li><a href="#">Us Dollar</a></li>
                            <li><a href="#">Euro</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div class="ps-dropdown language"><a href="#"><img src="${pageContext.servletContext.contextPath}/img/flag/en.png" alt="">English</a>
                        <ul class="ps-dropdown-menu">
                            <li><a href="#"><img src="${pageContext.servletContext.contextPath}/img/flag/germany.png" alt=""> Germany</a></li>
                            <li><a href="#"><img src="${pageContext.servletContext.contextPath}/img/flag/fr.png" alt=""> France</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="navigation--mobile">
        <div class="navigation__left"><a class="ps-logo" href="index.html">
<%--            <img src="${pageContext.servletContext.contextPath}/img/logo_light.png" alt="">--%>
            <img src="${pageContext.servletContext.contextPath}/img/Angry-Nerds-2.png"  alt="">

        </a></div>
        <div class="navigation__right">
            <div class="header__actions">
                <div class="ps-cart--mini"><a class="header__extra" href="#"><i class="icon-bag2"></i><span><i>0</i></span></a>
                    <div class="ps-cart__content">
                        <div class="ps-cart__items">
                            <div class="ps-product--cart-mobile">
                                <div class="ps-product__thumbnail"><a href="#"><img src="${pageContext.servletContext.contextPath}/img/products/clothing/7.jpg" alt=""></a></div>
                                <div class="ps-product__content"><a class="ps-product__remove" href="#"><i class="icon-cross"></i></a><a href="product-default.html">MVMTH Classical Leather Watch In Black</a>
                                    <p><strong>Sold by:</strong> YOUNG SHOP</p><small>1 x $59.99</small>
                                </div>
                            </div>
                            <div class="ps-product--cart-mobile">
                                <div class="ps-product__thumbnail"><a href="#"><img src="${pageContext.servletContext.contextPath}/img/products/clothing/5.jpg" alt=""></a></div>
                                <div class="ps-product__content"><a class="ps-product__remove" href="#"><i class="icon-cross"></i></a><a href="product-default.html">Sleeve Linen Blend Caro Pane Shirt</a>
                                    <p><strong>Sold by:</strong> YOUNG SHOP</p><small>1 x $59.99</small>
                                </div>
                            </div>
                        </div>
                        <div class="ps-cart__footer">
                            <h3>Sub Total:<strong>$59.99</strong></h3>
                            <figure><a class="ps-btn" href="shopping-cart.html">View Cart</a><a class="ps-btn" href="checkout.html">Checkout</a></figure>
                        </div>
                    </div>
                </div>
                <div class="ps-block--user-header">
                    <div class="ps-block__left"><i class="icon-user"></i></div>
                    <c:choose>
                        <c:when test="${user !=null }">
                                                <c:choose>
                                                    <c:when test="${user.role  == 'ROLE_USER' }">
                                                        <div class="ps-block__right"><a href="${pageContext.servletContext.contextPath}/customer">${user.username}</a></div>

                                                    </c:when>
                                                    <c:otherwise>
                                                        <div class="ps-block__right"><a href="${pageContext.servletContext.contextPath}/admin">${user.username}</a></div>
                                                    </c:otherwise>
                                                </c:choose>
                        </c:when>
                        <c:otherwise>
                            <div class="ps-block__right"><a href="${pageContext.servletContext.contextPath}/login">Login</a><a href="${pageContext.servletContext.contextPath}/register">Register</a></div>
                        </c:otherwise>
                    </c:choose>

                </div>
            </div>
        </div>
    </div>
    <div class="ps-search--mobile">
        <form class="ps-form--search-mobile" action="index.html" method="get">
            <div class="form-group--nest">
                <input class="form-control" type="text" placeholder="Search something...">
                <button><i class="icon-magnifier"></i></button>
            </div>
        </form>
    </div>
</header>