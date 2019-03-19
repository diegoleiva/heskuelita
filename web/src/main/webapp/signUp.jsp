<!DOCTYPE html>
<html lang="en">

<head>
	<!-- Required meta tags-->
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Colorlib Templates">
	<meta name="author" content="Colorlib">
	<meta name="keywords" content="Colorlib Templates">

	<!-- Title Page-->
	<title>Au Register Forms by Colorlib</title>

	<!-- Icons font CSS-->
	<link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
	<link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
	<!-- Font special for pages-->
	<link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

	<!-- Vendor CSS-->
	<link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
	<link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

	<!-- Main CSS-->
	<link href="css/main.css" rel="stylesheet" media="all">
</head>

<body>
<div class="page-wrapper bg-blue p-t-100 p-b-100 font-robo">
	<div class="wrapper wrapper--w680">
		<div class="card card-1">
			<div class="card-heading"></div>
			<div class="card-body">
				<h2 class="title">Registration Info</h2>
				<form action="signUp"  method="POST">




					<div class="row row-space">
						<div class="col-2">
							<div class="input-group">
								<input class="col-2" type="text" placeholder="NAME" for="name" name="ctrlName" id="name">
							</div>
						</div>
						<div class="col-2">
							<div class="input-group">
								<div class="rs-select2 js-select-simple select--no-search">
									<input class="col-2" type="text" placeholder="LASTNAME" for="lastName" name="ctrlLastname" id="lastName">
									<div class="select-dropdown"></div>
								</div>
							</div>
						</div>
					</div>



					<div class="row row-space">
						<div class="col-2">
							<div class="input-group">
								<input type="date" class="form-control" name="ctrlBirthdate" id="birthday" min="1919/1/1">
								<!--<input class="input--style-1 js-datepicker" type="text" placeholder="BIRTHDATE" for="birthday " name="ctrlBirthdate" id="birthday" min="1919/1/1">-->
								<i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
							</div>
						</div>
						<div class="col-2">
							<div class="input-group">
								<div class="rs-select2 js-select-simple select--no-search">
									<select name="ctrlGender" >
										<option disabled="disabled" selected="selected" for="gender">GENDER</option>
										<option value="male">Male</option>
										<option value="female">Female</option>
										<option value="other" >Other</option>
									</select>
									<div class="select-dropdown"></div>
								</div>
							</div>
						</div>
					</div>



					<div class="row row-space">
						<div class="col-2">



							<div class="input-group">
								<div class="rs-select2 js-select-simple select--no-search">
									<select name="ctrlDocType">
										<option disabled="disabled" selected="selected" for="documentationType" >DOCUMENTATION TYPE</option>
										<option value="dni"> DNI</option>
										<option value="passport"> PASSPORT</option>
										<option value="other" >Other</option>
									</select>
									<div class="select-dropdown"></div>
								</div>
							</div>
						</div>
						<div class="col-2">
							<div class="input-group">
								<div class="rs-select2 js-select-simple select--no-search">
									<input class="col-2" type="text" for="identification" placeholder="IDENTIFICATION" name="ctrlIdentification" id="identification">
									<div class="select-dropdown"></div>
								</div>
							</div>
						</div>
					</div>

					<div class="input-group">
						<div class="rs-select2 js-select-simple select--no-search">
							<div class="rs-select2 js-select-simple select--no-search">
								<input type="email" class="form-control" name="ctrlEmail" id="user" Placeholder="Username Email" >
								<div class="select-dropdown"></div>
							</div>
						</div>
					</div>


					<div class="row row-space">
						<div class="col-2">
							<div class="input-group">
								<input class="col-2" type="password" placeholder="PASSWORD" for="password" name="ctrlPassword" id="password">
							</div>
						</div>
						<div class="col-2">
							<div class="input-group">
								<div class="rs-select2 js-select-simple select--no-search">
									<input class="col-2" type="text" placeholder="REPEAT PASSWORD" for="passwordRepeat" name="ctrlPassword" id="lastName">
									<div class="select-dropdown"></div>
								</div>
							</div>
						</div>
					</div>



					<div class="input-group">
						<label  class="rs-select2 js-select-simple select--no-search" for="question">Security Question:</label>
						<div class="col-sm-8">
							<select class="form-control" name="ctrlQuestion" id="question">
								<option value="0">Select a question</option>
								<option value="What was the name of your first pet?" >What was the name of your first pet?</option>
								<option value="Which is your favorite color?" >Which is your favorite color?</option>
								<option value="What is your favorite book?" >What is your favorite book?</option>
							</select>
						</div>
					</div>



					<div class="row row-space">
						<div class="col-2">
							<div class="input-group">
								<input class="input--style-1" type="text" placeholder="ANSWER" for="answer" name="ctrlAnswer" id="answer" >
							</div>
						</div>
					</div>
					<div class="p-t-20">
						<button class="btn btn--radius btn--green" type="submit">Submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<!-- Jquery JS-->
<script src="vendor/jquery/jquery.min.js"></script>
<!-- Vendor JS-->
<script src="vendor/select2/select2.min.js"></script>
<script src="vendor/datepicker/moment.min.js"></script>
<script src="vendor/datepicker/daterangepicker.js"></script>

<!-- Main JS-->
<script src="js/global.js"></script>

</body>

</html>

