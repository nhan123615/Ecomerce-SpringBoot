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

            <div class="ps-form--account ps-tab-root" >
                <ul class="ps-tab-list">
                    <li class="active"><a href="#sign-in">Reset Password</a></li>
                </ul>
                <div class="ps-tabs">
                    <div class="ps-tab active" id="sign-in">
                        <div class="ps-form__content">
                            <h5>Enter Your New Password</h5>
                            <form action="${pageContext.servletContext.contextPath}/forgot-password/update-password"  method="post" modelAttribute="forgotUser" id="frm">
                                <div class="form-group">
                                    <input type="hidden" name="id" value="${forgotUser.id}" />
                                </div>
                                <div class="form-group">
                                    <input class="form-control" type="password" placeholder="Your New Password" name="password" id="new">
                                    <span id="new-error" class="error invalid-feedback"></span>

                                </div>

                                <div class="form-group">
                                    <label>Confirm New Password</label>
                                    <input class="form-control" type="password" placeholder="Please confirm new password..." id="confirm" >
                                    <span id="confirm-error" class="error invalid-feedback"></span>
                                </div>
                            </form>

                            <div class="form-group submtit">
                                <button class="ps-btn ps-btn--fullwidth" id="btnSubmit">Save</button>
                            </div>
                        </div>
                        <div class="ps-form__footer">
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<jsp:include page="../components/footer.jsp"></jsp:include>
<script>
    $('#btnSubmit')
        .on(
            'click',
            function () {
                let newPass = $('#new');
                let newPassError = $('#new-error');
                let confirm = $('#confirm');
                let confirmError = $('#confirm-error');
                let hasSubmit = [];

                if (confirm.val().length > 250) {
                    hasSubmit.push(1);
                    confirm.addClass(
                        'form-control is-invalid');
                    confirmError.html(
                        'Must be below 250 characters!');
                }

                if (newPass.val().length > 250) {
                    hasSubmit.push(1);
                    newPass.addClass(
                        'form-control is-invalid');
                    newPassError.html(
                        'Must be below 250 characters!');
                }
                if (newPass.val().length === 0) {
                    hasSubmit.push(1);
                    newPass.addClass(
                        'form-control is-invalid');
                    newPassError.html(
                        'Please enter New Password!');
                }

                if (confirm.val().length === 0) {
                    hasSubmit.push(1);
                    confirm.addClass(
                        'form-control is-invalid');
                    confirmError.html(
                        'Please enter Confirm New Password!');
                }

                if (confirm.val() !== newPass.val()) {
                    hasSubmit.push(1);
                    confirm.addClass(
                        'form-control is-invalid');
                    confirmError.html(
                        'Confirm New Password must be the same!');
                }


                if (hasSubmit.length === 0) {
                    $('#frm').submit();
                }

            });
</script>

</body>

