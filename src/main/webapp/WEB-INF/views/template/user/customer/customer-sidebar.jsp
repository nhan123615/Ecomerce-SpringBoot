<div class="ps-section__left">
    <aside class="ps-widget--account-dashboard">
        <div class="ps-widget__header"><img src="${pageContext.servletContext.contextPath}/img/users/3.jpg" alt="">
            <figure>
                <figcaption>Hello</figcaption>
                <p><a href="#">${user.username}</a></p>
            </figure>
        </div>
        <div class="ps-widget__content">
            <ul>
                <li class="active"><a href="${pageContext.servletContext.contextPath}/customer/info"><i class="icon-user"></i> Account Information</a></li>
                <li><a href="#"><i class="icon-alarm-ringing"></i> Notifications</a></li>
                <li><a href="${pageContext.servletContext.contextPath}/customer/order"><i class="icon-papers"></i> Orders</a></li>
                <li><a href="#"><i class="icon-map-marker"></i> Address</a></li>
                <li><a href="#"><i class="icon-store"></i> Recent Viewed Product</a></li>
                <li><a href="#"><i class="icon-heart"></i> Wishlist</a></li>
                <li><a href="${pageContext.servletContext.contextPath}/logout"><i class="icon-power-switch"></i>Logout</a></li>
            </ul>
        </div>
    </aside>
</div>