<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../components/head.jsp"></jsp:include>

<body>
<jsp:include page="../components/header.jsp"></jsp:include>
<jsp:include page="../components/sidebar.jsp"></jsp:include>

<div class="ps-page--my-account">
    <div class="ps-breadcrumb">
        <div class="container">
            <ul class="breadcrumb">
                <li><a href="index.html">Home</a></li>
                <li>My account</li>
            </ul>
        </div>
    </div>
    <div class="ps-my-account">
        <div class="container">
<%--            <jsp:include page="../message/message.jsp"></jsp:include>--%>




            <form class="ps-form--account ps-tab-root" action="${pageContext.servletContext.contextPath}/login" method="post" modelAttribute="user">
                <ul class="ps-tab-list">
                    <li class="active"><a href="#sign-in">Login</a></li>
                </ul>
                <div class="ps-tabs">
                    <div class="ps-tab active" id="sign-in">
                        <div class="ps-form__content">
                            <h5>Log In Your Account</h5>
                            <div class="form-group">
                                <input class="form-control" type="text" placeholder="Username" name="username">
                            </div>
                            <div class="form-group form-forgot">
                                <input class="form-control" type="password" placeholder="Password" name="password"><a href="${pageContext.servletContext.contextPath}/forgot-password">Forgot?</a>
                            </div>
                            <div class="form-group">
                                <div class="ps-checkbox">
                                    <input class="form-control" type="checkbox" id="remember-me" name="remember-me">
                                    <label for="remember-me">Rememeber me</label>
                                </div>
                            </div>
                            <div class="form-group submtit">
                                <button class="ps-btn ps-btn--fullwidth">Login</button>
                            </div>
                        </div>
                        <div class="ps-form__footer">
                        </div>
                    </div>
                </div>

            </form>
        </div>
    </div>
</div>
<jsp:include page="../components/footer.jsp"></jsp:include>
</body>

