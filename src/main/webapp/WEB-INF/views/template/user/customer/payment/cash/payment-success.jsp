
<jsp:include page="../../../components/head.jsp"></jsp:include>

<body>
<jsp:include page="../../../components/header.jsp"></jsp:include>
<jsp:include page="../../../components/sidebar.jsp"></jsp:include>
<br><br><br>
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
            <div class="ps-block--payment-success">
                <h3>Your order success !</h3>
                <p>Thanks for choosing us. Please visit<a href="${pageContext.servletContext.contextPath}/customer/order"> here</a> to check your order status.</p>
            </div>
        </div>
    </section>
</main>
<jsp:include page="../../../components/footer.jsp"></jsp:include>
</body>

