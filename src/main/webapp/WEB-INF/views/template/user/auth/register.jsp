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

            <div class="ps-form--account ps-tab-root" >
                <ul class="ps-tab-list">
                    <li class="active"><a href="#sign-in">Register</a></li>
                </ul>
                <div class="ps-tabs">
                    <div class="ps-tab active" id="sign-in">
                        <div class="ps-form__content">
                            <h5>Register Your Account</h5>
                            <form action="${pageContext.servletContext.contextPath}/register" method="post" modelAttribute="user" id="frm">
                                <div class="form-group">
                                    <input class="form-control" type="text" placeholder="Username" name="username" id="uname">
                                    <span id="uname-error" class="error invalid-feedback"></span>
                                </div>
                                <div class="form-group form-forgot">
                                    <input class="form-control" type="password" placeholder="Password" name="password" id="pass">
                                    <span id="pass-error" class="error invalid-feedback"></span>
                                </div>

                                <div class="form-group form-forgot">
                                    <input class="form-control" type="password" placeholder="Confirm Password"  id="confirm">
                                    <span id="confirm-error" class="error invalid-feedback"></span>
                                </div>

                                <div class="form-group form-forgot">
                                    <input class="form-control" type="email" placeholder="Email" name="email" id="email">
                                    <span id="email-error" class="error invalid-feedback"></span>

                                </div>
                            </form>
                            <div class="form-group submtit">
                                <button class="ps-btn ps-btn--fullwidth" id="btnRegister">Register</button>
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
    function IsEmail(email) {
        var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        if(!regex.test(email)) {
            return false;
        }else{
            return true;
        }
    }

    $('#btnRegister')
        .on(
            'click',
            function () {
                let uname = $('#uname');
                let unameError = $('#uname-error');
                let pass = $('#pass');
                let passError = $('#pass-error');
                let email = $('#email');
                let emailError = $('#email-error');
                let confirmPass = $('#confirm');
                let confirmPassError = $('#confirm-error');
                let hasSubmit = [];

                if (confirmPass.val().length >250) {
                    hasSubmit.push(1);
                    confirmPass.addClass(
                        'form-control is-invalid');
                    confirmPassError.html(
                        'Must be below 250 characters!');
                }
                if (email.val().length >250) {
                    hasSubmit.push(1);
                    email.addClass(
                        'form-control is-invalid');
                    emailError.html(
                        'Must be below 250 characters!');
                }
                if (pass.val().length >250) {
                    hasSubmit.push(1);
                    pass.addClass(
                        'form-control is-invalid');
                    passError.html(
                        'Must be below 250 characters!');
                }
                if (uname.val().length >250) {
                    hasSubmit.push(1);
                    uname.addClass(
                        'form-control is-invalid');
                    unameError.html(
                        'Must be below 250 characters!');
                }

                if (uname.val().length === 0) {
                    hasSubmit.push(1);
                    uname.addClass(
                        'form-control is-invalid');
                    unameError.html(
                        'Please enter Username!');
                }

                if (pass.val().length === 0) {
                    hasSubmit.push(1);
                    pass.addClass(
                        'form-control is-invalid');
                    passError.html(
                        'Please enter Password!');
                }

                if(IsEmail(email.val())==false){
                    hasSubmit.push(1);
                    email.addClass(
                        'form-control is-invalid');
                    emailError.html(
                        'Email invalid!');
                }


                if (email.val().length === 0) {
                    hasSubmit.push(1);
                    email.addClass(
                        'form-control is-invalid');
                    emailError.html(
                        'Please enter Email!');
                }

                if (confirmPass.val().length === 0) {
                    hasSubmit.push(1);
                    confirmPass.addClass(
                        'form-control is-invalid');
                    confirmPassError.html(
                        'Please enter Password!');
                }

                if (confirmPass.val() !== pass.val()) {
                    hasSubmit.push(1);
                    confirmPass.addClass(
                        'form-control is-invalid');
                    confirmPassError.html(
                        'Confirm  Password must be the same!');
                }


                if (hasSubmit.length === 0) {
                    $('#frm').submit();
                }

            });
</script>

</body>

