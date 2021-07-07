<%@ page import="java.util.List"%>
<%@ page import="com.coeding.entity.Product"%>
<div class="ps-deal-of-day">
	<div class="ps-container">
		<div class="ps-section__header">
			<div class="ps-block--countdown-deal">
				<div class="ps-block__left">
					<h3>Deals of the day</h3>
				</div>
				<div class="ps-block__right">
					<figure>
						<figcaption>End in:</figcaption>
						<ul class="ps-countdown" data-time="December 30, 2021 15:37:25">
							<li><span class="days"></span></li>
							<li><span class="hours"></span></li>
							<li><span class="minutes"></span></li>
							<li><span class="seconds"></span></li>
						</ul>
					</figure>
				</div>
			</div>
			<a href="#">View all</a>
		</div>
		<div class="ps-section__content">
			<div class="ps-carousel--nav owl-slider" data-owl-auto="false"
				data-owl-loop="false" data-owl-speed="10000" data-owl-gap="30"
				data-owl-nav="true" data-owl-dots="true" data-owl-item="7"
				data-owl-item-xs="2" data-owl-item-sm="3" data-owl-item-md="4"
				data-owl-item-lg="5" data-owl-item-xl="6" data-owl-duration="1000"
				data-owl-mousedrag="on">
				<%
				List<Product> prt = (List<Product>) request.getAttribute("products");
				for (Product p : prt) {
				%>

				<div class="ps-product ps-product--inner">
					<div class="ps-product__thumbnail">
						<a href="product-default.html"><img
							src="<%= p.getImages() %>" alt=""></a>
						<div class="ps-product__badge">-16%</div>
						<ul class="ps-product__actions">
							<li><a href="#" data-toggle="tooltip" data-placement="top"
								title="Read More"><i class="icon-bag2"></i></a></li>
							<li><a href="#" data-placement="top" title="Quick View"
								data-toggle="modal" data-target="#product-quickview"><i
									class="icon-eye"></i></a></li>
							<li><a href="#" data-toggle="tooltip" data-placement="top"
								title="Add to Whishlist"><i class="icon-heart"></i></a></li>
							<li><a href="#" data-toggle="tooltip" data-placement="top"
								title="Compare"><i class="icon-chart-bars"></i></a></li>
						</ul>
					</div>
					<div class="ps-product__container">
						<p class="ps-product__price sale">
							<%= p.getPrice() %>
							<del>$670.00 </del>
							<small>18% off</small>
						</p>
						<div class="ps-product__content">
							<a class="ps-product__title" href="product-default.html"><%= p.getProductName() %></a>
							<div class="ps-product__rating">
								<select class="ps-rating" data-read-only="true">
									<option value="1">1</option>
									<option value="1">2</option>
									<option value="1">3</option>
									<option value="1">4</option>
									<option value="2">5</option>
								</select><span>01</span>
							</div>
							<div class="ps-product__progress-bar ps-progress" data-value="59">
								<div class="ps-progress__value">
									<span></span>
								</div>
								<p>Sold:32</p>
							</div>
						</div>
					</div>
				</div>

				<%
				}
				%>
			</div>
		</div>
	</div>