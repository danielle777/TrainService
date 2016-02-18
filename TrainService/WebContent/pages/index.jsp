<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
           
<%@ taglib prefix="t" uri="/WEB-INF/teg.tld"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title><t:i18n id="header.home" /></title>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no" />

<jsp:include page="links.jsp"></jsp:include>
</head>

<body class="page1" id="top">
	<div class="main">
		<!--==============================header=================================-->
			<header>
				<div class="menu_block ">
					<div class="container_12">
						<div class="grid_12">
							<nav class="horizontal-nav full-width horizontalNav-notprocessed">
								<ul class="sf-menu">
									<li class="current"><a href="home"><t:i18n
														id="header.home" /></a></li>
									<li><a href="about"><t:i18n
														id="header.about" /></a></li>
									<li><a href="contacts"><t:i18n
														id="header.contacts" /></a></li>
									<c:choose>
										<c:when test="${currentUser == null}">
											<li><a href="ShowSignIn"><t:i18n
														id="header.signIn" /></a></li>
										</c:when>
										<c:otherwise>
											<li><a href="UserPage"><t:i18n
														id="header.yourPage" /></a></li>
											<li><a href="SignOut"><t:i18n
														id="header.signOut" /></a></li>
										</c:otherwise>
									</c:choose>
									
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown"><t:i18n id="header.language" />
										<i class="fa fa-angle-down"></i></a>
										<ul class="dropdown-menu">
											<li><a href="language?language=ua&country=UA"><t:i18n
														id="header.language1" /></a></li>
											<li><a href="language?language=en&country=US"><t:i18n
														id="header.language2" /></a></li>
										</ul>
									</li>									
								</ul>
								
							</nav>
							<div class="clear"></div>
						</div>
						<div class="clear"></div>
					</div>
				</div>
				<div class="container_12">
					<div class="grid_12">
						<h1>
							<a href="home">
								<img src="${pageContext.request.contextPath}/images/logo.png" alt="Your Happy Family">
							</a>
						</h1>
					</div>
				</div>
				<div class="clear"></div>
			</header>



		<div class="slider_wrapper ">
			<div id="camera_wrap" class="">
				<div data-src="${pageContext.request.contextPath}/images/slide.jpg"></div>
				<div data-src="${pageContext.request.contextPath}/images/slide1.jpg"></div>
				<div data-src="${pageContext.request.contextPath}/images/slide2.jpg"></div>
			</div>
		</div>



		<div class="container_12">
			<div class="grid_4">
				<div class="banner">
					<div class="maxheight">
						<div class="banner_title">
							<img src="${pageContext.request.contextPath}/images/icon1.png"
								alt="">
							<div class="extra_wrapper">
								Fast&amp;
								<div class="color1">Safe</div>
							</div>
						</div>
						Dorem ipsum dolor sit amet, consectetur adipiscinger elit. In
						mollis erat mattis neque facilisis, sit ameter ultricies erat
						rutrum. Cras facilisis, nulla vel viver auctor, leo magna sodales
						felis, quis malesuad <a href="#" class="fa fa-share-square"></a>
					</div>
				</div>
			</div>
			<div class="grid_4">
				<div class="banner">
					<div class="maxheight">
						<div class="banner_title">
							<img src="${pageContext.request.contextPath}/images/icon2.png"
								alt="">
							<div class="extra_wrapper">
								Best
								<div class="color1">Prices</div>
							</div>
						</div>
						Hem ipsum dolor sit amet, consectetur adipiscinger elit. In mollis
						erat mattis neque facilisis, sit ameter ultricies erat rutrum.
						Cras facilisis, nulla vel viver auctor, leo magna sodales felis,
						quis malesuader <a href="#" class="fa fa-share-square"></a>
					</div>
				</div>
			</div>
			<div class="grid_4">
				<div class="banner">
					<div class="maxheight">
						<div class="banner_title">
							<img src="${pageContext.request.contextPath}/images/icon3.png"
								alt="">
							<div class="extra_wrapper">
								Package
								<div class="color1">Delivery</div>
							</div>
						</div>
						Kurem ipsum dolor sit amet, consectetur adipiscinger elit. In
						mollis erat mattis neque facilisis, sit ameter ultricies erat
						rutrum. Cras facilisis, nulla vel viver auctor, leo magna sodales
						felis, quis malesuki <a href="#" class="fa fa-share-square"></a>
					</div>
				</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="c_phone">
			<div class="container_12">
				<div class="grid_12">
					<div class="fa fa-phone"></div>
					+1 800 889 9898 <span>ORDER NOW!</span>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<!--==============================Content=================================-->
		<div class="content">
			<div class="ic"></div>
			<div class="container_12">



				<div class="clear"></div>
			</div>
		</div>
	</div>
	<!--==============================footer=================================-->
	<jsp:include page="footer.jsp"></jsp:include>

	<script>
		$(document).ready(function() {
			jQuery('#camera_wrap').camera({
				loader : false,
				pagination : false,
				minHeight : '444',
				thumbnails : false,
				height : '28.28125%',
				caption : true,
				navigation : true,
				fx : 'mosaic'
			});
		});
	</script>

</body>
</html>