
<jsp:include page="../components/head.jsp"></jsp:include>

<body>
<%@ page import = "java.util.List" %>
<%@ page import="com.coeding.entity.Product" %>
<jsp:include page="../components/header.jsp"></jsp:include>
<jsp:include page="../components/sidebar.jsp"></jsp:include>
<br><br><br>
<br><br><br>
<div id="homepage-1">
    <%--                                            #//commit--%>

    <div class="ps-home-banner ps-home-banner--1">
        <div class="ps-container">
            <div class="ps-section__left">
                <div class="ps-carousel--nav-inside owl-slider" data-owl-auto="true" data-owl-loop="true" data-owl-speed="5000" data-owl-gap="0" data-owl-nav="true" data-owl-dots="true" data-owl-item="1" data-owl-item-xs="1" data-owl-item-sm="1" data-owl-item-md="1" data-owl-item-lg="1" data-owl-duration="1000" data-owl-mousedrag="on" data-owl-animate-in="fadeIn" data-owl-animate-out="fadeOut">
                    <div class="ps-banner bg--cover" data-background="img/slider/home-1/slide-1.jpg"><a class="ps-banner__overlay" href="shop-default.html"></a></div>
                    <div class="ps-banner bg--cover" data-background="img/slider/home-1/slide-2.jpg"><a class="ps-banner__overlay" href="shop-default.html"></a></div>
                    <div class="ps-banner bg--cover" data-background="img/slider/home-1/slide-3.jpg"><a class="ps-banner__overlay" href="shop-default.html"></a></div>
                </div>
            </div>
            <div class="ps-section__right"><a class="ps-collection" href="#"><img src="img/slider/home-1/promotion-1.jpg" alt=""></a><a class="ps-collection" href="#"><img src="img/slider/home-1/promotion-2.jpg" alt=""></a></div>
        </div>
    </div>
    <div class="ps-site-features">
        <div class="ps-container">
            <div class="ps-block--site-features">
                <div class="ps-block__item">
                    <div class="ps-block__left"><i class="icon-rocket"></i></div>
                    <div class="ps-block__right">
                        <h4>Free Delivery</h4>
                        <p>For all oders over $99</p>
                    </div>
                </div>
                <div class="ps-block__item">
                    <div class="ps-block__left"><i class="icon-sync"></i></div>
                    <div class="ps-block__right">
                        <h4>90 Days Return</h4>
                        <p>If goods have problems</p>
                    </div>
                </div>
                <div class="ps-block__item">
                    <div class="ps-block__left"><i class="icon-credit-card"></i></div>
                    <div class="ps-block__right">
                        <h4>Secure Payment</h4>
                        <p>100% secure payment</p>
                    </div>
                </div>
                <div class="ps-block__item">
                    <div class="ps-block__left"><i class="icon-bubbles"></i></div>
                    <div class="ps-block__right">
                        <h4>24/7 Support</h4>
                        <p>Dedicated support</p>
                    </div>
                </div>
                <div class="ps-block__item">
                    <div class="ps-block__left"><i class="icon-gift"></i></div>
                    <div class="ps-block__right">
                        <h4>Gift Service</h4>
                        <p>Support gift service</p>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <%@ include file="./product/dealsoftheday.jsp" %>

<jsp:include page="../components/footer.jsp"></jsp:include>


</body>

