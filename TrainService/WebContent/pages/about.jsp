<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" uri="/WEB-INF/teg.tld"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title><t:i18n id="header.about" /></title>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no" />

<jsp:include page="links.jsp"></jsp:include>


</head>
<body class="" id="top">
	<div class="main">
		<!--==============================header=================================-->
		<header>
			<div class="menu_block">
				<div class="container_12">
					<div class="grid_12">
						<nav class="horizontal-nav full-width horizontalNav-notprocessed">
								<ul class="sf-menu">
									<li><a href="home"><t:i18n
														id="header.home" /></a></li>
									<li class="current"><a href="about"><t:i18n
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
						<a href="home"> <img src="${pageContext.request.contextPath}/images/logo.png"
							alt="Your Happy Family">
						</a>
					</h1>
				</div>
			</div>
			<div class="clear"></div>
		</header>
		<!--==============================Content=================================-->
		<div class="content">

			<div class="container_12">
				<div class="grid_7">
					<h3>A Few Words About Us</h3>
					<img src="${pageContext.request.contextPath}/images/page2_img1.jpg" alt="" class="img_inner fleft">
					<div class="extra_wrapper">
						<div class="text1 color2">
							<a href="#">Lorem ipsum dolor sit amet, consecteturpiscinger
								elit. </a>
						</div>
						<p>
							Dorem ipsum dolor sit amet, consectetur adipiscinger elit. In
						mollis erat mattis neque facilisis, sit ameter ultricies erat
						rutrum. Cras facilisis, nulla vel viver auctor, leo magna sodales
						felis, quis malesuad </p>
					</div>
					<div class="clear cl1"></div>
					<p>Cras er te facilisis, nulla vel viver auctor, leo magna
						sodales felis, quis malesuad nibh odio ut veliter loki molo.
						Vivamus at magna non nunc tristique rhoncus. Aliquam nibh ante,
						egestas id dictum atermolok commodo luctus erito libero.</p>
					Praesent faucibus malesuada faucibus. Donec laoreet metus id
					laoreet malesuada. Lorem ipsum dolor sit amet, consectetur
					adipiscing elit. Nullam consectetur orci sed nulla facilisis
					consequatertolomon. Curabitur vel lorem sit amet nulla ullamcorper
					fermentum.
				</div>
				<div class="grid_4 prefix_1">
					<h3>Why Choose Us</h3>
					<ul class="list li">
						<li class="list_count">1</li>
						<li class="extra_wrapper">
							<div class="text1 color2">
								<a href="#">Econsecteturpiscinger elit</a>
							</div> Sit meter ultricies erat rutrum. Cras er te facilisis, nulla vel
							viver auctor, leo magna sodales felis, quis malesuad nibh odio ut
						</li>
					</ul>
					<ul class="list li">
						<li class="list_count">2</li>
						<li class="extra_wrapper">
							<div class="text1 color2">
								<a href="#">Fconsecteturpiscingerelite</a>
							</div> Git meter ultricies erat rutrum. Cras er te facilisis, nulla vel
							viver auctor, leo magna sodales felis, quis malesuad nibh odio
						</li>
					</ul>
					<ul class="list li">
						<li class="list_count">3</li>
						<li class="extra_wrapper">
							<div class="text1 color2">
								<a href="#">Hconsecteturpiscingeliter</a>
							</div> Hit meter ultricies erat rutrum. Cras er te facilisis, nulla vel
							viver auctor, leo magna sodales felis, quis malesuad nibut velit.
						</li>
					</ul>
					<ul class="list li">
						<li class="list_count">4</li>
						<li class="extra_wrapper">
							<div class="text1 color2">
								<a href="#">Mconsecteturpiscinr elitwert</a>
							</div> Kit meter ultricies erat rutrum. Cras er te facilisis, nulla vel
							viver auctor, leo magna sodales felis, quis malesuabh odio uter
						</li>
					</ul>
				</div>
				<div class="clear"></div>
				<div class="grid_12">
					<h3 class="h3__ind1">Testimonials</h3>
				</div>
				<div class="grid_4">
					<blockquote class="bq1">
						<p>
							<i>Lorem ipsum dolor sit amet, consectetur adipiscinger elit.
								In mollis erat mattis neque facilisis, sit ameter ultricies erat
								rutrum. Cras facilisis, nulla vel viver auctor, leo magna... </i>
						</p>
						<div class="color2">Tim Barkley</div>
					</blockquote>
				</div>
				<div class="grid_4">
					<blockquote class="bq1">
						<p>
							<i>Dorem ipsum dolor sit amet, consectetur adipiscinger elit.
								In mollis erat mattis neque facilisis, sit ameter ultricies erat
								rutrum. Cras facilisis, nulla vel viver auctor, leo magwe... </i>
						</p>
						<div class="color2">Linda Grey</div>
					</blockquote>
				</div>
				<div class="grid_4">
					<blockquote class="bq1">
						<p>
							<i>Gorem ipsum dolor sit amet, consectetur adipiscinger elit.
								In mollis erat mattis neque facilisis, sit ameter ultricies erat
								rutrum. Cras facilisis, nulla vel viver auctoro magndales...</i>
						</p>
						<div class="color2">Ann Pool</div>
					</blockquote>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<!--==============================footer=================================-->
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>