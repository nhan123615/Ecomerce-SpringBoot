<div class="ps-section__left">
    <aside class="ps-widget--account-dashboard">
        <div class="ps-widget__header"><img src="${pageContext.servletContext.contextPath}/img/users/3.jpg" alt="">
            <figure>
                <figcaption>Hello</figcaption>
                <p><a >${user.username}</a></p>
            </figure>
        </div>
        <div class="ps-widget__content">
            <ul>
                <li class="${pageContext.request.requestURI.contains("/customer/info") ?"active":""}"><a href="${pageContext.servletContext.contextPath}/customer/info"><i class="icon-user"></i> Account Information</a></li>
                <li class="${pageContext.request.requestURI.contains("/customer/product/checkout-page") ?"active":""}"><a href="${pageContext.servletContext.contextPath}/customer/product/checkout-page" ><i class="icon-alarm-ringing"></i> Checkout </a></li>
                <li class="${pageContext.request.requestURI.contains("/customer/invoice") ?"active":""}"><a href="${pageContext.servletContext.contextPath}/customer/order" style="display: none"><i class="icon-papers"></i> Orders</a></li>
                <li class="${pageContext.request.requestURI.contains("/customer/recent") ?"active":""}"><a href="${pageContext.servletContext.contextPath}/customer/recent"><i class="icon-store"></i> Recent Viewed Product</a></li>
                <li class="${pageContext.request.requestURI.contains("/customer/wishlist") ?"active":""}"><a href="${pageContext.servletContext.contextPath}/customer/wishlist"><i class="icon-heart"></i> Wishlist</a></li>
                <li class="${pageContext.request.requestURI.contains("/auth/change-password") ?"active":""}"><a href="${pageContext.servletContext.contextPath}/customer/password"><i class="icon-papers"></i> Change Password</a></li>
                <li ><a href="${pageContext.servletContext.contextPath}/logout"><i class="icon-power-switch"></i>Logout</a></li>
            </ul>
        </div>
    </aside>
</div>