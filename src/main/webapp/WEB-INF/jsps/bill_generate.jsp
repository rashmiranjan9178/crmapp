<%@ include file="Index.jsp"%>
<!DOCTYPE html>
<html lang="en">
<title>Billing</title>
<head>
<style type="text/css">

/* CSS for the Billing form */
body {
  font-family: 'Poppins', sans-serif;
}

.page-wrapper {
  background-color: #f9f9f9;
}

.title {
  font-size: 32px;
  font-weight: 600;
  text-align: center;
  margin-bottom: 30px;
}

.card {
  border-radius: 10px;
  overflow: hidden;
}

.card-body {
  padding: 50px;
}

.input-group {
  margin-bottom: 20px;
}

.label {
  font-size: 18px;
  font-weight: 500;
}

.input--style-4 {
  font-size: 16px;
  line-height: 24px;
  border-radius: 5px;
  padding: 12px 20px;
  border: 1px solid #ccc;
  width: 100%;
  transition: border-color 0.3s;
}

.input--style-4:focus {
  outline: none;
  border-color: #4cd7b0;
}

.btn--radius-2 {
  font-size: 16px;
  font-weight: 600;
  text-transform: uppercase;
  width: 100%;
  padding: 12px 0;
  border: none;
  border-radius: 5px;
  background-color: #4cd7b0;
  color: #fff;
  cursor: pointer;
  transition: background-color 0.3s;
}

.btn--radius-2:hover {
  background-color: #45c19c;
}

/* Responsive styles */
@media (max-width: 768px) {
  .col-2 {
    width: 100%;
  }
}


</style>


<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-tofit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">
<link href="vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link href="vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Vendor CSS-->
<link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
<link href="vendor/datepicker/daterangepicker.css" rel="stylesheet"
	media="all">
<link href="css/generateBillStyle.css" rel="stylesheet" media="all">
</head>
<body>
	<div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
		<div class="wrapper wrapper--w680">
			<div class="card card-4">
				<div class="card-body">
					<h2 class="title">Billing</h2>
					<form action="generateBill" method="post">
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label">Invoice Date</label>
									<div class="input-group-icon">
										<input name="date" class="input--style-4 js-datepicker"
											type="text" name="birthday" required> <i
											class="zmdi zmdi-calendar-note input-icon jsbtn-calendar"></i>
									</div>
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label class="label">Transaction Type</label>
									<div class="p-t-10">
										<label class="radio-container m-r-45">Credit <input
											type="radio" checked="checked" name="gender"> <span
											class="checkmark"></span>
										</label> <label class="radio-container">Non-Credit <input
											type="radio" name="gender"> <span class="checkmark"></span>
										</label>
									</div>
								</div>
							</div>
						</div>
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label">first name</label> <input
										class="input--style-4" type="text" name="firstName"
										value="${contact.firstName}" readonly>
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label class="label">last name</label> <input
										class="input--style-4" type="text" name="lastName"
										value="${contact.lastName}" readonly>
								</div>
							</div>
						</div>
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label">Email</label> <input
										class="input--style-4" type="email" name="email"
										value="${contact.email}" readonly>
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label class="label">Phone Number</label> <input
										class="input--style-4" type="text" name="mobile"
										value="${contact.mobile}" readonly>
								</div>
							</div>
						</div>
						<div class="input-group">
							<label class="label">Product</label>
							<div class="rs-select2 js-select-simple select--no-search">
								<select name="product" required>
									<option disabled="disabled" selected="selected">Choose
										Product or Service</option>
									<option>Custom Software Development</option>
									<option>Web Hosting</option>
									<option>Website Development</option>
									<option>Cloud Storage</option>
									<option>Web Application Development</option>
									<option>Mobile Application Development</option>
									<option>Cloud Consulting</option>
									<option>DevOps Automation</option>
									<option>Software Prototyping</option>
									<option>Quality Assurance</option>
									<option>Systems Integration</option>
								</select>
								<div class="select-dropdown"></div>
							</div>
						</div>
						<div class="input-group">
							<label class="label">Price</label>
							<div class="rs-select2 js-select-simple select--no-search">
								<input class="input--style-4" type="number" name="price"
									required>
								<div class="select-dropdown"></div>
							</div>
						</div>
						<div class="p-t-15">
							<button class="btn btn--radius-2 btn--blue" type="submit">Generate
								Bill</button>
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
	<script src="js/global.js"></script>
</body>
</html>