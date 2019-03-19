<%@ page import="com.capgemini.heskuelita.core.beans.User" contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html lang="en" class="no-js">
<head>
	<meta charset="UTF-8" />

	<title>Bienvenido</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
	<meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
	<meta name="author" content="Leiva Diego" />
	<link rel="shortcut icon" href="../favicon.ico">
	<link rel="stylesheet" type="text/css" href="css/demo.css" />
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
</head>
<body>
<%User us = (User)session.getAttribute ("user");%>
<div class="container">
	<header>
		<h1>Bien<span>venido</span></h1>

	</header>
	<section>
		<div id="container_demo" >

			<a class="hiddenanchor" id="toregister"></a>
			<a class="hiddenanchor" id="tologin"></a>
			<div id="wrapper">
				<div id="login" class="animate form">
					<form  action="login" autocomplete="on" method="post">
						<h1>Conectado satisfactoriamente</h1>
						<p>
							<label for="user" class="uname" data-icon="u" > Nombre </label>
							<input id="user" name="ctrlName" required="required" type="email" readonly="readonly" placeholder="<%= us.getName()%>  <%= us.getLastname()%> "/>
						</p>
						<p>
							<label for="password" class="youpasswd" data-icon="p"> Email </label>
							<input id="password" name="ctrlPassword" required="required" type="password" readonly="readonly" placeholder="<%= us.getEmail()%>" />
						</p>


						<p class="change_link">

							<a href="index.jsp" class="to_register">Volver</a>
						</p>
					</form>
				</div>


			</div>

		</div>
</div>
</section>
</div>
</body>
</html>