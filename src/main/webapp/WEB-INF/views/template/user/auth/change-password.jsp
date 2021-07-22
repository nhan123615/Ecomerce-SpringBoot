
<jsp:include page="../components/head.jsp"></jsp:include>

<body>
<jsp:include page="../components/header.jsp"></jsp:include>
<jsp:include page="../components/sidebar.jsp"></jsp:include>
<br><br><br><br><br><br>
<main class="ps-page--my-account">
    <section class="ps-section--account">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <%--                    side bar--%>
                    <jsp:include page="../customer/customer-sidebar.jsp"></jsp:include>
                    <%--                    side bar--%>

                </div>
                <div class="col-lg-8">
                    <div class="ps-section__right">
                        <div class="ps-form--account-setting">
                            <div class="ps-form__header">
                                <h3> Change Password</h3>
                            </div>
                            <br>
                            <form action="${pageContext.servletContext.contextPath}/customer/password" method="post" id="frmPassword">
                                <div class="ps-form__content">
                                    <div class="row" >
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>Old Password</label>
                                                <input class="form-control" type="password" placeholder="Please enter old password..." name="oldPassword" id="old">
                                                <span id="old-error" class="error invalid-feedback"></span>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>New Password</label>
                                                <input class="form-control" type="password" placeholder="Please enter new password..." name="newPassword" id="new">
                                                <span id="new-error" class="error invalid-feedback"></span>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>Confirm New Password</label>
                                                <input class="form-control" type="password" placeholder="Please confirm new password..." id="confirm" >
                                                <span id="confirm-error" class="error invalid-feedback"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </form>
                            <div class="form-group submit">
                                <button class="ps-btn" id="btnUpdate">Update</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
<jsp:include page="../components/footer.jsp"></jsp:include>
<script>
    $('#btnUpdate')
        .on(
            'click',
            function () {
                let old = $('#old');
                let oldError = $('#old-error');
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
                        'Must be below 250 characters');
                }
                if (newPass.val().length > 250) {
                    hasSubmit.push(1);
                    newPass.addClass(
                        'form-control is-invalid');
                    newPassError.html(
                        'Must be below 250 characters');
                }
                if (old.val().length > 250) {
                    hasSubmit.push(1);
                    old.addClass(
                        'form-control is-invalid');
                    oldError.html(
                        'Must be below 250 characters');
                }




                if (old.val().length === 0) {
                    hasSubmit.push(1);
                    old.addClass(
                        'form-control is-invalid');
                    oldError.html(
                        'Please enter Old Password!');
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
                    $('#frmPassword').submit();
                }

            });
</script>

</body>

