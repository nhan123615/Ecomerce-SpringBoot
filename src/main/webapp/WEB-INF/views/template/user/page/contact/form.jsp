<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<jsp:include page="../../components/head.jsp"></jsp:include>
<jsp:include page="../../components/header.jsp"></jsp:include>
<%@ page import="java.util.List"%>
<%@ page import="com.coeding.entity.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="ps-page--single" id="contact-us">
        <div class="ps-breadcrumb">
            <div class="container">
                <ul class="breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li>Contact Us</li>
                </ul>
            </div>
        </div>
<div class="ps-contact-form">
	<div class="container">
		<form class="ps-form--contact-us"
			action="${pageContext.servletContext.contextPath}/contact/submit"
			method="post">
			<h3>Get In Touch</h3>
			<div class="row">
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 ">
					<div class="form-group">
						<input class="form-control" id="name" name="name" type="text"
							placeholder="Name *">
					</div>
				</div>
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 ">
					<div class="form-group">
						<input class="form-control" id="email" name="email" type="text"
							placeholder="Email *">
					</div>
				</div>
				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
					<div class="form-group">
						<input class="form-control" type="text" id="subject"
							name="subject" placeholder="Subject *">
					</div>
				</div>
				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
					<div class="form-group">
						<textarea class="form-control" id="message" name="message"
							rows="5" placeholder="Message"></textarea>
					</div>
				</div>
			</div>
			<div class="form-group submit">
				<button class="ps-btn">Send message</button>
			</div>
		</form>
	</div>
</div>
</div>

<jsp:include page="../../components/footer.jsp"></jsp:include>