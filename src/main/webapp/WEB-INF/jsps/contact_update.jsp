<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Index.jsp"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">

/* CSS for the Update Contact page */
body {
  font-family: Arial, sans-serif;
  background-color: #f9f9f9;
}

.form {
  max-width: 400px;
  margin: 0 auto;
  padding: 30px;
  background-color: #fff;
  border-radius: 8px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.title {
  font-size: 24px;
  color: #15172b;
  margin-bottom: 30px;
  text-align: center;
}

.input-container {
  position: relative;
  margin-bottom: 20px;
}

.input-container .input {
  font-size: 16px;
  padding: 10px 0;
  border: none;
  border-bottom: 1px solid #ccc;
  width: 100%;
  background: transparent;
  outline: none;
}

.input-container .cut {
  position: absolute;
  top: 28px;
  right: 0;
  display: block;
  width: 0;
  height: 2px;
  background-color: #FF5722;
  transition: width 0.3s ease;
}

.input-container .cut-short {
  width: 33%;
}

.input-container .cut-short1 {
  width: 44%;
}

.input-container .cut::after {
  content: '';
  position: absolute;
  top: -1px;
  right: -20px;
  display: block;
  width: 20px;
  height: 2px;
  background-color: #fff;
}

.input-container .placeholder {
  position: absolute;
  top: 0;
  left: 0;
  font-size: 16px;
  color: #aaa;
  transition: all 0.3s ease;
}

.input-container .input:focus + .cut,
.input-container .input:valid + .cut,
.input-container .input:focus + .cut-short1,
.input-container .input:valid + .cut-short1 {
  width: 100%;
}

.input-container .input:focus + .cut:after,
.input-container .input:valid + .cut:after {
  background-color: #FF5722;
}

.input-container .input:focus + .placeholder,
.input-container .input:valid + .placeholder {
  font-size: 12px;
  color: #FF5722;
  transform: translateY(-20px);
  visibility: visible !important;
  opacity: 1;
}

.submit {
  border: none;
  color: #fff;
  background-color: #FF5722;
  cursor: pointer;
  font-size: 16px;
  padding: 10px 20px;
  margin-top: 20px;
  width: 100%;
  transition: background-color 0.3s ease;
}

.submit:hover {
  background-color: #555;
}

.msg {
  font-size: 16px;
  color: #FF5722;
  text-align: center;
  margin-top: 20px;
}


</style>



<link rel="stylesheet" type="text/css" href="/css/style.css">
<meta charset="ISO-8859-1">
</head>
<title>Update Contact</title>
<body>
	<form action="updateContactInfo" method="post">
		<input type="hidden" name="id" value="${contactUpd.id}" />
		<div class="form">
			<div class="title">Update Contact Info.</div>

			PANKAJ SIR ACADEMY
			<div class="input-container ic1">
				<input name="firstName" id="firstname" class="input" type="text"
					value="${contactUpd.firstName}" />
				<div class="cut"></div>
				<label for="firstname" class="placeholder">First Name</label>
			</div>
			<div class="input-container ic2">
				<input name="lastName" id="lastname" class="input" type="text"
					value="${contactUpd.lastName}" />
				<div class="cut"></div>
				<label for="lastname" class="placeholder">Last name</label>
			</div>
			<div class="input-container ic2">
				<input name="email" id="email" class="input" type="email"
					value="${contactUpd.email}" />
				<div class="cut cut-short1"></div>
				<label for="email" class="placeholder">Email</label>
			</div>
			<div class="input-container ic2">
				<input name="mobile" id="mobile" class="input" type="text"
					maxlength="10" value="${contactUpd.mobile}" />
				<div class="cut cut-short"></div>
				<label for="mobile" class="placeholder">10 Digit Mobile
					Number</label>
			</div>
			<button type="submit" class="submit">Update Contact</button>
		</div>
	</form>
	${msg}
</body>
</html>