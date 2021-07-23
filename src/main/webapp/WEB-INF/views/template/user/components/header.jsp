<%@ page import="java.security.Principal"%>
<%@ page import="org.springframework.security.core.Authentication"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>




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
        </div><a class="ps-logo" href="${pageContext.servletContext.contextPath}/"><img src="${pageContext.servletContext.contextPath}/img/Angry-Nerds-2.png"  alt=""></a></div>

    <div class="header__center">
                <form class="ps-form--quick-search" action="${pageContext.servletContext.contextPath}/product" method="post">
                    <div class="form-group--icon"><i class="icon-chevron-down"></i>
                        <select class="form-control categorySearch" style="width: 150px" name="category">
                            <option value="" selected="selected">All</option>
                            <c:forEach items="${categories}" var="c">
                                <option  value="${c.id}">${c.name}</option>
                            </c:forEach>

                        </select>
                    </div>
                    <input class="form-control" type="text" placeholder="I'm shopping for..." id="input-search" name="keyword" maxlength="20">
<%--                    <button>Search</button>--%>
                    <div class="ps-panel--search-result">
                        <div class="ps-panel__content tableSearch">
                        </div>
                    </div>
                </form>
            </div>
            <div class="header__right">
                <div class="header__actions">
                    <a class="header__extra"  style="display: none"><i class="icon-chart-bars"></i><span><i>0</i></span></a>

                    <c:choose>
                        <c:when test="${user!=null}">
                            <a class="header__extra" href="${pageContext.servletContext.contextPath}/customer/wishlist"><i class="icon-heart"></i><span><i id="countWish">0</i></span></a>
                        </c:when>
                        <c:otherwise>
                            <a class="header__extra" href="${pageContext.servletContext.contextPath}/product/wishlist"><i class="icon-heart"></i><span><i id="countWish">0</i></span></a>
                        </c:otherwise>
                    </c:choose>

                    <div class="ps-cart--mini"><a class="header__extra" ><i class="icon-bag2"></i><span><i id="cartItemCount-1">0</i></span></a>
                        <div class="ps-cart__content"  id="cart-content-1" style="display: none" >
                            <div class="ps-cart__items">
                                <div class="ps-product--cart-mobile">
                                    <div class="ps-product__thumbnail"><a ><img src="${pageContext.servletContext.contextPath}/img/products/clothing/7.jpg" alt=""></a></div>
                                    <div class="ps-product__content"><a class="ps-product__remove" ><i class="icon-cross "></i></a><a href="product-default.html">MVMTH Classical Leather Watch In Black</a>
                                        <p><strong>Sold by:</strong> YOUNG SHOP</p><small>1 x $59.99</small>
                                    </div>
                                </div>
                                <div class="ps-product--cart-mobile">
                                    <div class="ps-product__thumbnail"><a ><img src="${pageContext.servletContext.contextPath}/img/products/clothing/5.jpg" alt=""></a></div>
                                    <div class="ps-product__content"><a class="ps-product__remove" ><i class="icon-cross"></i></a><a href="product-default.html">Sleeve Linen Blend Caro Pane Shirt</a>
                                        <p><strong>Sold by:</strong> YOUNG SHOP</p><small>1 x $59.99</small>
                                    </div>
                                </div>
                            </div>
                            <div class="ps-cart__footer">
                                <h3>Sub Total:<strong>$0.00</strong></h3>
                                <figure>
                                    <c:choose>
                                        <c:when test="${user !=null}">
                                            <a class="ps-btn" href="${pageContext.servletContext.contextPath}/customer/product/checkout-page">View Cart</a>

                                        </c:when>
                                        <c:otherwise>
                                            <a class="ps-btn" href="${pageContext.servletContext.contextPath}/cart">View Cart</a>
                                        </c:otherwise>
                                    </c:choose>
                                    <a class="ps-btn" href="${pageContext.servletContext.contextPath}/customer/product/checkout">Checkout</a></figure>
                            </div>
                        </div >
                    </div>
                    <div class="ps-block--user-header">
                        <div class="ps-block__left"><i class="icon-user"></i></div>
                        <c:choose>


                            <c:when test="${user !=null }">

                                <ul class="navigation__extra">
                                     <li>
                                        <div class="ps-dropdown language">
                                            <div class="ps-block__right"><a
                                    <c:choose>
                                    <c:when test="${user.role  == 'ROLE_USER' }">
                                     href="${pageContext.servletContext.contextPath}/customer"
                                    </c:when>
                                    <c:otherwise>
                                    href="${pageContext.servletContext.contextPath}/admin"
                                    </c:otherwise>
                                    </c:choose>

                                            >${user.username}</a></div>
                                    <ul class="ps-dropdown-menu" >
                                            <c:choose>
                                            <c:when test="${user.role  == 'ROLE_USER' }">
                                                <li style="border-bottom: 1px solid black"><a href="${pageContext.servletContext.contextPath}/customer/info">Info</a></li>
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
                    <li ><a href="${pageContext.servletContext.contextPath}/contact">Contact Us</a>
                    </li>
                </ul>
                <ul class="navigation__extra">
                    <li><a href="${pageContext.servletContext.contextPath}/product">Sell on Martfury</a></li>
                    <li><a href="${pageContext.servletContext.contextPath}/customer/product/checkout-page">Track your order</a></li>
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
                <li><a >Sell on Martfury</a></li>
                <li><a >Tract your order</a></li>
                <li>
                    <div class="ps-dropdown"><a >US Dollar</a>
                        <ul class="ps-dropdown-menu">
                            <li><a >Us Dollar</a></li>
                            <li><a >Euro</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div class="ps-dropdown language"><a ><img src="${pageContext.servletContext.contextPath}/img/flag/en.png" alt="">English</a>
                        <ul class="ps-dropdown-menu">
                            <li><a ><img src="${pageContext.servletContext.contextPath}/img/flag/germany.png" alt=""> Germany</a></li>
                            <li><a ><img src="${pageContext.servletContext.contextPath}/img/flag/fr.png" alt=""> France</a></li>
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
                <div class="ps-cart--mini appendFooter"><a class="header__extra" ><i class="icon-bag2"></i><span><i id="cartItemCount-2">0</i></span></a>
                    <div class="ps-cart__content"  id="cart-content-2" style="display: none">
                        <div class="ps-cart__items">
                            <div class="ps-product--cart-mobile">
                                <div class="ps-product__thumbnail"><a ><img src="${pageContext.servletContext.contextPath}/img/products/clothing/7.jpg" alt=""></a></div>
                                <div class="ps-product__content"><a class="ps-product__remove" ><i class="icon-cross"></i></a><a href="product-default.html">MVMTH Classical Leather Watch In Black</a>
                                    <p><strong>Sold by:</strong> YOUNG SHOP</p><small>1 x $59.99</small>
                                </div>
                            </div>
                            <div class="ps-product--cart-mobile">
                                <div class="ps-product__thumbnail"><a ><img src="${pageContext.servletContext.contextPath}/img/products/clothing/5.jpg" alt=""></a></div>
                                <div class="ps-product__content"><a class="ps-product__remove" ><i class="icon-cross"></i></a><a href="product-default.html">Sleeve Linen Blend Caro Pane Shirt</a>
                                    <p><strong>Sold by:</strong> YOUNG SHOP</p><small>1 x $59.99</small>
                                </div>
                            </div>
                        </div>
                        <div class="ps-cart__footer">
                            <h3>Sub Total:<strong>$59.99</strong></h3>
                            <figure>
                                <c:choose>
                                    <c:when test="${user !=null}">
                                        <a class="ps-btn" href="${pageContext.servletContext.contextPath}/customer/product/checkout-page">View Cart</a>
                                    </c:when>
                                    <c:otherwise>
                                        <a class="ps-btn" href="${pageContext.servletContext.contextPath}/cart">View Cart</a>
                                    </c:otherwise>
                                </c:choose>
                                <a class="ps-btn" href="${pageContext.servletContext.contextPath}/customer/product/checkout">Checkout</a></figure>
                        </div>
                    </div>
                </div>
                <div class="ps-block--user-header">
                    <div class="ps-block__left"><i class="icon-user"></i></div>
                    <c:choose>
                        <c:when test="${user !=null }">
                                                <c:choose>
                                                    <c:when test="${user.role  == 'ROLE_USER' }">
                                                        <div class="ps-block__right"><a href="${pageContext.servletContext.contextPath}/customer/info">${user.username}</a></div>

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