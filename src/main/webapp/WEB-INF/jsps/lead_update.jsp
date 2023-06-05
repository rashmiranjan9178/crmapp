<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="Index.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Update Lead</title>
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<style>
		/* Responsive styles */
		@media (max-width: 600px) {
			.form {
				width: 90%;
			}
		}
		
		/* CSS for the form */
body {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
}

.form {
	background-color: #fff;
	width: 400px;
	margin: 50px auto;
	padding: 30px;
	border-radius: 5px;
	box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.2);
}

.title {
	font-size: 24px;
	font-weight: bold;
	margin-bottom: 20px;
	text-align: center;
}

.input-container {
	position: relative;
	margin-bottom: 30px;
}

.input {
	width: 100%;
	padding: 10px;
	border: none;
	border-bottom: 1px solid #ccc;
	outline: none;
	background-color: transparent;
	color: #333;
	font-size: 16px;
	transition: all 0.3s ease;
}

.input:focus {
	border-bottom: 2px solid #FF5722;
}

.placeholder {
	position: absolute;
	top: 0;
	left: 0;
	transition: all 0.3s ease;
	pointer-events: none;
}

.input:focus + .placeholder,
.input:not(:placeholder-shown) + .placeholder {
	transform: translateY(-20px);
	font-size: 14px;
	color: #FF5722;
}

.cut {
	position: absolute;
	top: 20px;
	right: 0;
	pointer-events: none;
	width: 16px;
	height: 16px;
	background-image: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16"><path fill="#ccc" d="M15.8,13.1L9,6.3V2.1C9,1,8,0,6.9,0H2.1C1,0,0,1,0,2.1v4.8c0,1.1,1,2.1,2.1,2.1h4.2l6.8,6.8c0.2,0.2,0.4,0.2,0.6,0.2s0.4-0.2,0.6-0.2C16,14.1,16,13.3,15.8,13.1z M2.1,6C1.5,6,1,5.5,1,4.8V2.1C1,1.5,1.5,1,2.1,1h2.7l4.5,4.5H2.1z"></path></svg>');
	background-repeat: no-repeat;
	background-position: center;
	background-size: 12px 12px;
	opacity: 0.5;
	transition: all 0.3s ease;
}

.input-container.ic1 .cut,
.input-container.ic1 .placeholder {
	fill: #FF5722;
}

.input-container.ic2 .cut,
.input-container.ic2 .placeholder {
	fill: #333;
}

.submit {
	width: 100%;
	padding: 10px;
	border: none;
	border-radius: 5px;
	background-color: #FF5722;
	color: #fff;
	font-size: 16px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.submit:hover {
	background-color: #FF4F00;
}

/* Responsive styles */
@media (max-width: 600px) {
	.form {
		width: 90%;
	}
}
		
		
	</style>
</head>
<body>
	<form action="updateLead" method="post">
		<input type="hidden" name="id" value="${leadUpd.id}" />
		<div class="form">
			<div class="title">Update Lead Info.</div>
			<div class="input-container ic1">
				<input name="firstName" id="firstname" class="input" type="text" value="${leadUpd.firstName}" />
				<div class="cut"></div>
				<label for="firstname" class="placeholder">First Name</label>
			</div>
			<div class="input-container ic2">
				<input name="lastName" id="lastname" class="input" type="text" value="${leadUpd.lastName}" />
				<div class="cut"></div>
				<label for="lastname" class="placeholder">Last Name</label>
			</div>
			<div class="input-container ic2">
				<input name="email" id="email" class="input" type="email" value="${leadUpd.email}" />
				<div class="cut cut-short1"></div>
				<label for="email" class="placeholder">Email</label>
			</div>
			<div class="input-container ic2">
				<input name="mobile" id="mobile" class="input" type="text" maxlength="10" value="${leadUpd.mobile}" />
				<div class="cut cut-short"></div>
				<label for="mobile" class="placeholder">10 Digit Mobile Number</label>
			</div>
			<div class="input-container ic2">
				<label for="source" class="placeholder"></label>
				<select name="source" id="source" class="input" required>
					<option value="Google Ads">Google Ads</option>
					<option value="Facebook">Facebook</option>
					<option value="Twitter">Twitter</option>
					<option value="News Paper">News Paper</option>
					<option value="TV Commercial">TV Commercial</option>
					<option value="Other">Other</option>
				</select>
				<div class="cut cut-short2"></div>
				<label for="source" class="placeholder">Select Lead Source</label>
			</div>

			<button type="submit" class="submit">Update Lead</button>
		</div>
	</form>
</body>
</html>
