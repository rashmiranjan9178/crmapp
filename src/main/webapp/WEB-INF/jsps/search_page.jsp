<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="Index.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>Search</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="author" content="colorlib.com">
	<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet" />
	<link href="css/search_style.css" rel="stylesheet" />
	<style>
		body {
			font-family: "Poppins", Arial, sans-serif;
			background-color: #f0f0f0;
		}

		.container {
			display: flex;
			flex-wrap: wrap;
			justify-content: center;
			align-items: center;
			height: 100vh;
		}

		.search-form {
			margin: 10px;
			max-width: 400px;
			width: 100%;
			background-color: #fff;
			border-radius: 4px;
			box-shadow: 0px 2px 6px rgba(0, 0, 0, 0.1);
		}

		.inner-form {
			display: flex;
			align-items: center;
			padding: 10px;
		}

		.input-field {
			flex: 1;
			margin: 0;
			position: relative;
		}

		.svg-wrapper {
			position: absolute;
			left: 10px;
			top: 50%;
			transform: translateY(-50%);
			color: #ccc;
		}

		.svg-wrapper svg {
			width: 20px;
			height: 20px;
		}

		.input-field input {
			width: 100%;
			border: none;
			border-bottom: 1px solid #ccc;
			outline: none;
			padding-left: 30px;
			font-size: 16px;
			color: #333;
		}

		.input-field input::placeholder {
			color: #ccc;
		}

		.input-field .btn-search {
			background-color: #FF5722;
			border: none;
			color: #fff;
			padding: 8px 20px;
			border-radius: 4px;
			cursor: pointer;
			font-size: 16px;
		}

		.input-field .btn-search:hover {
			background-color: #FF4F00;
		}
		
		body {
	font-family: "Poppins", Arial, sans-serif;
	background-color: #f0f0f0;
}

.container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.search-form {
	margin: 10px;
	max-width: 400px;
	width: 100%;
	background-color: #fff;
	border-radius: 4px;
	box-shadow: 0px 2px 6px rgba(0, 0, 0, 0.1);
}

.inner-form {
	display: flex;
	align-items: center;
	padding: 10px;
}

.input-field {
	flex: 1;
	margin: 0;
	position: relative;
}

.svg-wrapper {
	position: absolute;
	left: 10px;
	top: 50%;
	transform: translateY(-50%);
	color: #ccc;
}

.svg-wrapper svg {
	width: 20px;
	height: 20px;
}

.input-field input {
	width: 100%;
	border: none;
	border-bottom: 1px solid #ccc;
	outline: none;
	padding-left: 30px;
	font-size: 16px;
	color: #333;
}

.input-field input::placeholder {
	color: #ccc;
}

.input-field .btn-search {
	background-color: #FF5722;
	border: none;
	color: #fff;
	padding: 8px 20px;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
}

.input-field .btn-search:hover {
	background-color: #FF4F00;
}
		
		
	</style>
</head>
<body>
	<div class="container">
		<div class="search-form s130">
			<form action="searchLead" method="post">
				<div class="inner-form">
					<div class="input-field first-wrap">
						<div class="svg-wrapper">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
								<path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"></path>
							</svg>
						</div>
						<input id="search" name="id" type="text" placeholder="Enter Lead ID#" />
					</div>
					<div class="input-field second-wrap">
						<input class="btn-search" type="submit" value="SEARCH LEAD"></input>
					</div>
				</div>
			</form>
		</div>
		<div class="search-form s130-1">
			<form action="searchContact" method="post">
				<div class="inner-form">
					<div class="input-field first-wrap">
						<div class="svg-wrapper">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
								<path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"></path>
							</svg>
						</div>
						<input name="id" type="text" placeholder="Enter Contact ID#" />
					</div>
					<div class="input-field second-wrap">
						<input class="btn-search" type="submit" value="SEARCH CONTACT"></input>
					</div>
				</div>
			</form>
		</div>
		<div class="search-form s130-2">
			<form action="billInfo" method="post">
				<div class="inner-form">
					<div class="input-field first-wrap">
						<div class="svg-wrapper">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
								<path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"></path>
							</svg>
						</div>
						<input name="invoiceNo" type="text" placeholder="Enter Invoice Number" />
					</div>
					<div class="input-field second-wrap">
						<input class="btn-search" type="submit" value="SEARCH BILL"></input>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
