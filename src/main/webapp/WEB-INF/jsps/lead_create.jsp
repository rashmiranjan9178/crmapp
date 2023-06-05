<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="Index.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Create Lead</title>
	<link rel="stylesheet" type="text/css" href="/css/old css/style.css">
	<style>
		/* Responsive styles */
		@media (max-width: 600px) {
			.form {
				width: 90%;
			}
		}

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
			box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
		}

		.title {
			font-size: 24px;
			font-weight: bold;
			text-align: center;
			margin-bottom: 30px;
		}

		.input-container {
			position: relative;
			margin-bottom: 30px;
		}

		.input-container label {
			position: absolute;
			top: 0;
			left: 0;
			opacity: 0.5;
			transition: all 0.2s ease-out;
			pointer-events: none;
		}

		.input-container .placeholder {
			transform: translate(0, 24px) scale(1);
			opacity: 1;
		}

		.input-container .cut {
			position: relative;
			overflow: hidden;
		}

		.input-container .cut:before,
		.input-container .cut:after {
			content: "";
			position: absolute;
			bottom: 0;
			right: 0;
			background-color: #fff;
			width: 50%;
			height: 80%;
		}

		.input-container .cut:before {
			transform-origin: right bottom;
			border-radius: 50% 0 0 50%;
		}

		.input-container .cut:after {
			transform-origin: left bottom;
			border-radius: 0 50% 50% 0;
		}

		.input-container .cut:before,
		.input-container .cut:after {
			transform: rotate(0deg);
			transition: transform 0.3s ease;
		}

		.input-container.focus .cut:before {
			transform: rotate(-45deg);
		}

		.input-container.focus .cut:after {
			transform: rotate(45deg);
		}

		.input-container.focus label {
			transform: translate(0, -10px) scale(0.8);
			opacity: 0.8;
		}

		.input-container .input {
			width: 100%;
			padding: 10px;
			border: none;
			border-bottom: 1px solid #ddd;
			font-size: 16px;
			background-color: transparent;
		}

		.submit {
			width: 100%;
			padding: 15px;
			border: none;
			background-color: #4caf50;
			color: #fff;
			font-size: 16px;
			font-weight: bold;
			cursor: pointer;
			transition: background-color 0.3s ease;
		}

		.submit:hover {
			background-color: #45a049;
		}
	</style>
	<script>
		// JavaScript to handle input field behavior
		window.addEventListener('DOMContentLoaded', function() {
			var inputs = document.querySelectorAll('.input-container .input');
			Array.prototype.forEach.call(inputs, function(input) {
				input.addEventListener('input', function() {
					if (this.value !== '') {
						this.classList.add('has-value');
					} else {
						this.classList.remove('has-value');
					}
				});
			});
		});
	</script>
</head>
<body>
	<form action="saveLead" method="post">
		<div class="form">
			<div class="title">Create Lead</div>
			<div class="input-container">
				<label for="firstname" class="placeholder">First Name</label>
				<input name="firstName" id="firstname" class="input" type="text" required />
				<div class="cut"></div>
			</div>
			<div class="input-container">
				<label for="lastname" class="placeholder">Last Name</label>
				<input name="lastName" id="lastname" class="input" type="text" required />
				<div class="cut"></div>
			</div>
			<div class="input-container">
				<label for="email" class="placeholder">Email</label>
				<input name="email" id="email" class="input" type="email" required />
				<div class="cut cut-short1"></div>
			</div>
			<div class="input-container">
				<label for="mobile" class="placeholder">10 Digit Mobile Number</label>
				<input name="mobile" id="mobile" class="input" type="text" minlength="10" maxlength="10" required />
				<div class="cut cut-short"></div>
			</div>
			<div class="input-container">
				<label for="source" class="placeholder">Select Lead Source</label>
				<select name="source" id="source" class="input" required>
					<option value="" disabled selected>Select Lead Source</option>
					<option value="Google Ads">Google Ads</option>
					<option value="Facebook">Facebook</option>
					<option value="Twitter">Twitter</option>
					<option value="News Paper">News Paper</option>
					<option value="TV Commercial">TV Commercial</option>
				</select>
				<div class="cut cut-short2"></div>
			</div>
			<button type="submit" class="submit">Create Lead</button>
		</div>
	</form>
</body>
</html>
