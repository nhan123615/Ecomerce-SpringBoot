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
	<div class="ps-contact-info">
		<div class="container">
			<div class="ps-section__header">
				<h3>Contact Us For Any Questions</h3>
			</div>
			<div class="ps-section__content">
				<div class="row">
					<div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-12 ">
						<div class="ps-block--contact-info">
							<h4>Contact Directly</h4>
							<p><a href="#">contact@martfury.com</a><span>(+004) 912-3548-07</span></p>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-12 ">
						<div class="ps-block--contact-info">
							<h4>Head Quater</h4>
							<p><span>17 Queen St, Southbank, Melbourne 10560, Australia</span></p>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-12 ">
						<div class="ps-block--contact-info">
							<h4>Work With Us</h4>
							<p><span>Send your CV to our email:</span><a href="#">career@martfury.com</a></p>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-12 ">
						<div class="ps-block--contact-info">
							<h4>Customer Service</h4>
							<p><a href="#">customercare@martfury.com</a><span>(800) 843-2446</span></p>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-12 ">
						<div class="ps-block--contact-info">
							<h4>Media Relations</h4>
							<p><a href="#">media@martfury.com</a><span>(801) 947-3564</span></p>
						</div>
					</div>
					<div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-12 ">
						<div class="ps-block--contact-info">
							<h4>Vendor Support</h4>
							<p><a href="#">vendorsupport@martfury.com</a><span>(801) 947-3100</span></p>
						</div>
					</div>
				</div>
			</div>
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
								placeholder="Name *" required>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 ">
						<div class="form-group">
							<input class="form-control" id="email" name="email" type="email"
								placeholder="Email *" required>
						</div>
					</div>
					<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
						<div class="form-group">
							<input class="form-control" type="text" id="subject"
								name="subject" placeholder="Subject *" required>
						</div>
					</div>
					<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
						<div class="form-group">
							<textarea class="form-control" id="message" name="message"
								rows="5" placeholder="Message" required></textarea>
						</div>
					</div>
				</div>
				<div class="form-group submit">
					<button class="ps-btn">Send message</button>
				</div>
			</form>
		</div>
	</div>


	<div class="ps-contact-map">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14049.340485982573!2d-0.12031301106485542!3d51.50228117351734!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x487604ce176ac979%3A0x42af85654e23a0b4!2sThe%20National%20Gallery!5e0!3m2!1sen!2s!4v1582441665587!5m2!1sen!2s" height="500"></iframe>
	</div>

</div>

<jsp:include page="../../components/footer.jsp"></jsp:include>
<script>

</script>