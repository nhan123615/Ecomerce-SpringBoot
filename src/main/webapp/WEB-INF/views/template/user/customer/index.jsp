
<jsp:include page="../components/head.jsp"></jsp:include>

<body>
<jsp:include page="../components/header.jsp"></jsp:include>
<jsp:include page="../components/sidebar.jsp"></jsp:include>
<%@ page import="com.coeding.entity.User"%>
<%@ page import="org.springframework.security.core.Authentication"%>
<main class="ps-page--my-account">
    <div class="ps-breadcrumb">
        <div class="container">
            <ul class="breadcrumb">
                <li><a href="index.html">Home</a></li>
                <li>User Information</li>
            </ul>
        </div>
    </div>
    <section class="ps-section--account">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
<%--                    side bar--%>
              <jsp:include page="customer-sidebar.jsp"></jsp:include>
    <%--                    side bar--%>

                </div>
                <div class="col-lg-8">
                    <div class="ps-section__right">
                        <form class="ps-form--account-setting" action="${pageContext.servletContext.contextPath}/customer/submit"
                         method="post">
                        	<%
                        		User u = (User)request.getAttribute("user");
                        	System.out.print("asdasd"+u);
                        	%>
                            <div class="ps-form__header">
                                <h3> User Information</h3>
                         	<input type="text" name="id" value="<%= u.getId() %>">
                            </div>
                            <div class="ps-form__content">
                                <div class="form-group">
                                    <label>Name</label>
                                    <input class="form-control" type="text" id="name" name="name" placeholder="Please enter your name...">
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Phone Number</label>
                                            <input class="form-control" type="text" id="phone" name="phone" placeholder="Please enter phone number...">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input class="form-control" type="text" id="email" name="email" placeholder="Please enter your email...">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Birthday</label>
                                            <input class="form-control" type="text" id="birthday" name="birthday" placeholder="Please enter your birthday...">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>Gender</label>
                                            <select class="form-control" id="gender" name="gender">
                                                <option value="Male">Male</option>
                                                <option value="Female">Female</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group submit">
                                <button class="ps-btn">Update</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
<jsp:include page="../components/footer.jsp"></jsp:include>
</body>

