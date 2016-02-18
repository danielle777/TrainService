<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" uri="/WEB-INF/teg.tld"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title><t:i18n id="header.contacts" /></title>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no" />

<jsp:include page="links.jsp"></jsp:include>

</head>
<body class="" id="top">
	<div class="main">
		<!--==============================header=================================-->
		<header>
			<div class="menu_block ">
				<div class="container_12">
					<div class="grid_12">
						<nav class="horizontal-nav full-width horizontalNav-notprocessed">
								<ul class="sf-menu">
									<li><a href="home"><t:i18n
														id="header.home" /></a></li>
									<li><a href="about"><t:i18n
														id="header.about" /></a></li>
									<li class="current"><a href="contacts"><t:i18n
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
		<!--==============================Content=================================-->
		<div class="content">
			<div class="container_12">
				<div class="grid_12">
					<h3>Find Us</h3>
					<div class="map">
						<figure>
							<iframe
								src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJRf2tWEpPYA0RLsiXB7SLqlg&key=AIzaSyAQkLDNstjGvkfekaaqmxOyTE2yqkm0jg8"
								style="border: 0"></iframe>
						</figure>
					</div>
				</div>
				<div class="grid_5">
					<h3>Contact Info</h3>
					<div class="map">
						<div class="text1 color2">Lorem ipsum dolor sit amet,
							consecteturpiscinger elit um dolor sit amet, consecteturpiscing.</div>
		
						<address>
							<dl>
								<dt>
									Blue Train Inc. <br> 46004 Carrer d'Alacant,<br>
									València, España
								</dt>
								<dd>
									<span>Telephone:</span> +1 800 603 6035
								</dd>
								<dd>
									<span>FAX:</span> +1 800 889 9898
								</dd>
								<dd>
									E-mail: <a href="#" class="color1">mail@demolink.org</a>
								</dd>
							</dl>
						</address>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<!--==============================footer=================================-->
	<jsp:include page="footer.jsp"></jsp:include>



</body>
</html>