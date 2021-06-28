
<jsp:include page="../../../components/head.jsp"></jsp:include>

<body>
<jsp:include page="../../../components/header.jsp"></jsp:include>
<jsp:include page="../../../components/sidebar.jsp"></jsp:include>

<main class="ps-page--my-account">
    <div class="ps-breadcrumb">
        <div class="container">
            <ul class="breadcrumb">
                <li><a href="index.html">Home</a></li>
                <li><a href="user-information.html">Account</a></li>
                <li>Payment</li>
            </ul>
        </div>
    </div>
    <section class="ps-section--account ps-checkout">
        <div class="container">
            <div class="ps-section__header">
                <h3>Payment</h3>
            </div>
            <div class="ps-section__content">
                <form class="ps-form--checkout" action="index.html" method="get">
                    <div class="ps-form__content">
                        <div class="row">
                            <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-12 ">
                                <div class="ps-block--shipping">
                                    <div class="ps-block__panel">
                                        <figure><small>Contact</small>
                                            <p><a href="#">user@gmail.com</a></p><a href="#">Change</a>
                                        </figure>
                                        <figure><small>Ship to</small>
                                            <p>2015 South Street, Midland, Texas</p><a href="#">Change</a>
                                        </figure>
                                    </div>
                                    <h4>Shipping method</h4>
                                    <div class="ps-block__panel">
                                        <figure><small>International Shipping</small><strong> $20.00</strong></figure>
                                    </div>
                                    <h4>Payment Methods</h4>
                                    <div class="ps-block--payment-method">
                                        <ul class="ps-tab-list">
                                            <li class="active"><a class="ps-btn ps-btn--sm" href="#visa">Visa / Master Card</a></li>
                                            <li><a class="ps-btn ps-btn--sm" href="#paypal">Paypal</a></li>
                                        </ul>
                                        <div class="ps-tabs">
                                            <div class="ps-tab active" id="visa">
                                                <form class="ps-form--visa" action="index.html" method="get">
                                                    <div class="form-group">
                                                        <label>Card number</label>
                                                        <input class="form-control" type="text" placeholder="">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Card Holders</label>
                                                        <input class="form-control" type="text" placeholder="">
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-8">
                                                            <div class="form-group">
                                                                <label>Experation Date</label>
                                                                <div class="row">
                                                                    <div class="col-6">
                                                                        <div class="form-group">
                                                                            <input class="form-control" type="text" placeholder="Month">
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-6">
                                                                        <div class="form-group">
                                                                            <input class="form-control" type="text" placeholder="Year">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-4">
                                                            <div class="form-group">
                                                                <label>CVV</label>
                                                                <input class="form-control" type="text" placeholder="">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group submit">
                                                        <button class="ps-btn ps-btn--fullwidth">Submit</button>
                                                    </div>
                                                </form>
                                            </div>

                                                <div class="ps-tab" id="paypal">
                                                    <form action="${pageContext.servletContext.contextPath}/customer/payment/paypal" method="post">
                                                    <button class="ps-btn" >Proceed with Paypal</button>
                                                    </form>
                                                </div>


                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12 ">
                                <div class="ps-block--checkout-order">
                                    <div class="ps-block__content">
                                        <figure>
                                            <figcaption><strong>Product</strong><strong>Total</strong></figcaption>
                                        </figure>
                                        <figure class="ps-block__items"><a href="#"><strong>Marshall Kilburn Portable Wireless Speaker</strong><span>x1<small>$ 42.99</small></span></a><a href="#"><strong>Herschel Leather Duffle Bag In Brown Color</strong><span>x1<small>$ 125.30</small></span></a>
                                        </figure>
                                        <figure>
                                            <figcaption><strong>Subtotal</strong><strong>$1259.99</strong></figcaption>
                                        </figure>
                                        <figure>
                                            <figcaption><strong>Shipping</strong><strong>$20.00</strong></figcaption>
                                        </figure>
                                        <figure class="ps-block__total">
                                            <h3>Total<strong>$1279.99</strong></h3>
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
</main>

<jsp:include page="../../../components/footer.jsp"></jsp:include>
</body>

