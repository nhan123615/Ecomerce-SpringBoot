
<jsp:include page="../../../components/head.jsp"></jsp:include>

<body>
<jsp:include page="../../../components/header.jsp"></jsp:include>
<jsp:include page="../../../components/sidebar.jsp"></jsp:include>

<main class="ps-page--my-account">
    <div class="ps-breadcrumb">
        <div class="container">
            <ul class="breadcrumb">
                <li><a href="index.html">Home</a></li>
                <li>Payment Success</li>
            </ul>
        </div>
    </div>
    <section class="ps-section--account">
        <div class="container">
            <div class="ps-block--payment-success" >
                <h3 class="text-danger">Payment Failed !</h3>
                <p>Thanks for your payment. Please visit<a href="user-information.html"> here</a> to check your order status.</p>
            </div>
        </div>
    </section>
</main>
<jsp:include page="../../../components/footer.jsp"></jsp:include>
</body>

