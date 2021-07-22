
<jsp:include page="../../components/head.jsp"></jsp:include>

<body>
<jsp:include page="../../components/header.jsp"></jsp:include>
<jsp:include page="../../components/sidebar.jsp"></jsp:include>
<br><br><br><br><br><br>
<main class="ps-page--my-account">
    <section class="ps-section--account">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <%--                    side bar--%>
                    <jsp:include page="../customer-sidebar.jsp"></jsp:include>
                    <%--                    side bar--%>

                </div>
                <div class="col-lg-8">
                    <div class="ps-section__right">
                        <div class="ps-form--account-setting">
                            <div class="ps-form__header">
                                <h3>Register User Information</h3>
                            </div>
                            <br>
                            <form class="ps-form__content" action="${pageContext.servletContext.contextPath}/customer/info/new"
                            method="post" id="frm"
                            >
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>First Name</label>
                                            <input class="form-control" type="text" placeholder="Please enter first name..."
                                                   name="firstName" id="fname">
                                            <span id="fname-error" class="error invalid-feedback"></span>

                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Last Name</label>
                                            <input class="form-control" type="text" placeholder="Please enter last name..."
                                                name="lastName" id="lname" >
                                            <span id="lname-error" class="error invalid-feedback"></span>

                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>Phone Number</label>
                                            <input class="form-control" type="text" placeholder="Please enter phone number..."
                                                  name="phone" id="phone">
                                            <span id="phone-error" class="error invalid-feedback"></span>

                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>Address</label>
                                            <input class="form-control" type="text" placeholder="Please enter your address..."
                                                   name="address" id="address">
                                            <span id="address-error" class="error invalid-feedback"></span>

                                        </div>
                                    </div>
                                </div>

                            </form>
                            <div class="form-group submit">
                                <button class="ps-btn" id="btnSave" >Save</button>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
<jsp:include page="../../components/footer.jsp"></jsp:include>
<script>
    function IsPhone(phone) {
        var regex =   /^((\+[1-9]{1,4}[ \-]*)|(\([0-9]{2,3}\)[ \-]*)|([0-9]{2,4})[ \-]*)*?[0-9]{3,4}?[ \-]*[0-9]{3,4}?$/;
        if(!regex.test(phone)) {
            return false;
        }else{
            return true;
        }
    }

    $('#btnSave')
        .on(
            'click',
            function () {
                let fname = $('#fname');
                let fnameError = $('#fname-error');
                let lname = $('#lname');
                let lnameError = $('#lname-error');
                let phone = $('#phone');
                let phoneError = $('#phone-error');
                let address = $('#address');
                let addressError = $('#address-error');
                let hasSubmit = [];

                if (address.val().length > 250) {
                    hasSubmit.push(1);
                    address.addClass(
                        'form-control is-invalid');
                    addressError.html(
                        'Must be below 250 characters!');
                }
                if (phone.val().length > 250) {
                    hasSubmit.push(1);
                    phone.addClass(
                        'form-control is-invalid');
                    phoneError.html(
                        'Must be below 250 characters!');
                }
                if (lname.val().length > 250) {
                    hasSubmit.push(1);
                    lname.addClass(
                        'form-control is-invalid');
                    lnameError.html(
                        'Must be below 250 characters!');
                }
                if (fname.val().length > 250) {
                    hasSubmit.push(1);
                    fname.addClass(
                        'form-control is-invalid');
                    fnameError.html(
                        'Must be below 250 characters!');
                }
                if (fname.val().length === 0) {
                    hasSubmit.push(1);
                    fname.addClass(
                        'form-control is-invalid');
                    fnameError.html(
                        'Please enter First name!');
                }

                if (lname.val().length === 0) {
                    hasSubmit.push(1);
                    lname.addClass(
                        'form-control is-invalid');
                    lnameError.html(
                        'Please enter Last name!');
                }

                if(IsPhone(phone.val())==false){
                    hasSubmit.push(1);
                    phone.addClass(
                        'form-control is-invalid');
                    phoneError.html(
                        'Phone invalid!');
                }


                if (address.val().length === 0) {
                    hasSubmit.push(1);
                    address.addClass(
                        'form-control is-invalid');
                    addressError.html(
                        'Please enter Address!');
                }



                if (hasSubmit.length === 0) {
                    $('#frm').submit();
                }

            });
</script>

</body>

