<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en" class="no-js">
<head>
	<meta charset="UTF-8" />

	<title>Login and Registration Form</title>
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
<div class="container">
	<header>
		<h1>Login and Registration Java <span>CapGemini</span></h1>

	</header>
	<section>
		<div id="container_demo" >

			<a class="hiddenanchor" id="toregister"></a>
			<a class="hiddenanchor" id="tologin"></a>
			<div id="wrapper">
				<div id="login" class="animate form">
					<form  action="login" autocomplete="on" method="post">
						<h1>Log in</h1>
						<p>
							<label for="user" class="uname" data-icon="u" > Su email </label>
							<input id="user" name="ctrlName" required="required" type="email" placeholder="mymail@mail.com"/>
						</p>
						<p>
							<label for="password" class="youpasswd" data-icon="p"> Su password </label>
							<input id="password" name="ctrlPassword" required="required" type="password" placeholder="Ej. X8df!90EO" />
						</p>

						<p class="login button">
							<input type="submit" value="Login" />
						</p>
						<p class="change_link">
							No está registrado?
							<a href="signUp.jsp" class="to_register">Únase</a>
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