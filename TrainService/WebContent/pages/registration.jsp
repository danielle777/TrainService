<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" uri="/WEB-INF/teg.tld"%>
<!DOCTYPE html>
<html>
<head>
<title><t:i18n id="header.signUp" /></title>
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
						<h3>Registration Form</h3>
						<form id="bookingForm"  action="registration" method="post">
												
							<strong>Login:</strong>
							<div class="tmInput">
								<input name="login" type="text" pattern="[а-яА-Яa-zA-Z0-9-_]{3,40}"  autofocus="autofocus">
							</div>
							<div class="clear"></div>
							<strong>Password:</strong>
							<div class="tmInput">
								<input name="pass" type="password" pattern="[а-яА-Яa-zA-Z0-9-_]{6,40}" >
							</div>
							<div class="clear"></div>
							<strong>First Name:</strong>
							<div class="tmInput">
								<input name="fname" type="text" pattern="[а-яА-Яa-zA-Z-']+" value="${fname }">
							</div>
							<div class="clear"></div>
							<strong>Last Name:</strong>
							<div class="tmInput">
								<input name="lname" type="text" pattern="[а-яА-Яa-zA-Z-']+" value="${lname }">
							</div>
							<div class="clear"></div>
							<strong>Passport Info:</strong>
							<div class="tmInput">
								<input name="passport_data" type="text" pattern="[А-ЯA-Z]{2}[0-9]{6}" value="${passport_data }">
							</div>
							<div class="clear"></div>
							<strong>Phone:</strong>
							<div class="tmInput">
								<input name="phone" type="text" placeHolder="+xx (xxx) xx-xx-xxx" pattern="+[0-9]{12}" value="${phone }">
							</div>
							<div class="clear"></div>
							
							<span class="error"> ${err } </span>
							
							<div class="clear"></div>
						
	                        <input type="submit" class="btn" name="submit" value="Submit">
							
							<p class="change_link">  
									Already a member?
									<a href="ShowSignIn" class="to_register"> Go and sign in </a>
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