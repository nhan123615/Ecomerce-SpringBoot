<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../components/head.jsp"></jsp:include>

<body>
<jsp:include page="../components/header.jsp"></jsp:include>
<jsp:include page="../components/sidebar.jsp"></jsp:include>

<div class="ps-page--my-account">
    <div class="ps-breadcrumb">
        <div class="container">
<%--            <jsp:include page="../message/message.jsp"></jsp:include>--%>
            <ul class="breadcrumb">
                <li><a href="index.html">Home</a></li>
                <li>My account</li>
            </ul>
        </div>
    </div>
    <div class="ps-my-account">
        <div class="container">

            <form class="ps-form--account ps-tab-root" action="${pageContext.servletContext.contextPath}/forgot-password/update-password" method="post" modelAttribute="forgotUser">
                <ul class="ps-tab-list">
                    <li class="active"><a href="#sign-in">Reset Password</a></li>
                </ul>
                <div class="ps-tabs">
                    <div class="ps-tab active" id="sign-in">
                        <div class="ps-form__content">
                            <h5>Enter Your New Password</h5>
                            <div class="form-group">
                            <input type="hidden" name="id" value="${forgotUser.id}" />
                            </div>
                            <div class="form-group">
                                <input class="form-control" type="password" placeholder="Your New Password" name="password">
                            </div>

                            <div class="form-group submtit">
                                <button class="ps-btn ps-btn--fullwidth">Save</button>
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

