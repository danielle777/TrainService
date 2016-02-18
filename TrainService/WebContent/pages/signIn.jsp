<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" uri="/WEB-INF/teg.tld"%>
<!DOCTYPE html>
<html>
<head>
<title>Sign in</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
									<li><a href="contacts"><t:i18n
														id="header.contacts" /></a></li>
									<c:choose>
										<c:when test="${currentUser == null}">
											<li class="current"><a href="ShowSignIn"><t:i18n
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
						<a href="home"> <img
							src="${pageContext.request.contextPath}/images/logo.png"
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
			
			<div class="grid_5">
						<h3>Sign In</h3>
						
						<form id="bookingForm"  action="SignIn" method="post">
												
							<strong>Login:</strong>
							<div class="tmInput">
								<input name="login" placeHolder="" type="text"  pattern="[а-яА-Яa-zA-Z0-9-_]{3,40}" required="required">
							</div>
							<div class="clear"></div>
							<strong>Password:</strong>
							<div class="tmInput">
								<input name="pass" placeHolder="" type="password"  pattern="[а-яА-Яa-zA-Z0-9-_]{6,40}" required="required">
							</div>
							<div class="clear"></div>
							<span class="error"> ${err } </span>
							
							<div class="clear"></div>
	                        <input type="submit" class="btn" name="submit" value="Submit" data-type="submit">

							
							
							
							<p class="change_link">
									Not a member yet ?
									<a href="ShowRegistration" class="to_register">Join us</a>
								</p>
							
						</form>
					</div>
			

				<div class="clear"></div>
			</div>
		</div>
	</div>


	<!--==============================footer=================================-->
	<jsp:include page="footer.jsp"></jsp:include>
	
	
	<script>
		$(function() {
			$('#bookingForm').bookingForm({
				ownerEmail : '#'
			});
		})
		$(function() {
			$('#bookingForm input, #bookingForm textarea').placeholder();
		});
	</script>


</body>
</html>