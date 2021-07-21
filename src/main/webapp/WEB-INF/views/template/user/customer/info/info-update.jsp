
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
                                <h3>Update User Information</h3>
                            </div>
                            <br>
                            <form class="ps-form__content" action="${pageContext.servletContext.contextPath}/customer/info/update"
                            method="post"
                            >
                                <div class="row">
                                    <input type="hidden" name="id" value="${customerInfo.id}">
                                    <input type="hidden" name="user" value="${customerInfo.user.id}">

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>First Name</label>
                                            <input class="form-control" type="text" placeholder="Please enter phone number..."
                                                   value="${customerInfo.firstName}" name="firstName" required>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Last Name</label>
                                            <input class="form-control" type="text" placeholder="Please enter phone number..."
                                                   value="${customerInfo.lastName}" name="lastName" required >
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>Phone Number</label>
                                            <input class="form-control" type="text" placeholder="Please enter phone number..."
                                                   value="${customerInfo.phone}" name="phone" required>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label>Address</label>
                                            <input class="form-control" type="text" placeholder="Please enter your email..."
                                                   value="${customerInfo.address}" name="address" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group submit">
                                    <button class="ps-btn" >Save</button>
                                </div>
                            </form>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
<jsp:include page="../../components/footer.jsp"></jsp:include>
</body>

