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

            <form class="ps-form--account ps-tab-root" action="#"  >
                <ul class="ps-tab-list">
                    <li class="active"><a href="#sign-in">Your Password updated successfully !</a></li>
                </ul>
                        <div class="ps-form__content">

                            <div class="form-group submtit">
                                <a class="ps-btn ps-btn--fullwidth" href="${pageContext.servletContext.contextPath}/login">Back to login</a>
                            </div>
                        </div>
                        <div class="ps-form__footer">
                        </div>

            </form>
        </div>
    </div>
</div>
<jsp:include page="../components/footer.jsp"></jsp:include>
</body>

