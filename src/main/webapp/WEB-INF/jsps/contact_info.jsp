<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Index.jsp"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="/css/info_style.css">
<head>

<style type="text/css">

/* CSS for the Contact Information page */
body {
  font-family: Arial, sans-serif;
  background-color: #f9f9f9;
}

.profile-card {
  max-width: 400px;
  margin: 0 auto;
  padding: 30px;
  background-color: #fff;
  border-radius: 8px;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.profile-card header {
  text-align: center;
  margin-bottom: 30px;
}

.profile-card header .fa-user {
  font-size: 80px;
  color: #15172b;
}

.profile-card h1 {
  font-size: 24px;
  color: #15172b;
  margin-top: 10px;
  margin-bottom: 5px;
}

.profile-card h2 {
  font-size: 18px;
  color: #555;
  margin-bottom: 30px;
}

.profile-bio p {
  font-size: 15px;
  color: #555;
  margin-bottom: 5px;
}

.profile-bio p.mobile {
  font-size: 22px;
  font-family: Verdana, sans-serif;
  color: #FF5722;
  margin-top: 5px;
  margin-bottom: 20px;
}

.social {
  text-align: center;
}

.social input[type="submit"] {
  border: none;
  color: #fff;
  cursor: pointer;
  font-size: 14px;
  padding: 8px 16px;
  margin-right: 10px;
  transition: background-color 0.3s ease;
}

.social input[type="submit"]:hover {
  background-color: #555;
}

.btn-hover {
  transition: all 0.3s ease;
  position: relative;
  overflow: hidden;
}

.btn-hover:before {
  content: "";
  position: absolute;
  top: 100%;
  left: 110%;
  width: 30px;
  height: 30px;
  border-radius: 50%;
  background-color: #555;
  transform: translate(-50%, -50%);
  opacity: 0;
  transition: all 0.3s ease;
}

.btn-hover:hover:before {
  left: 50%;
  opacity: 1;
}

.color-8 {
  background: #4CAF50;
}

.color-10 {
  background: #F44336;
}

.color-9 {
  background: #2196F3;
}

/* Responsive styles */
@media (max-width: 768px) {
  .profile-card {
    padding: 20px;
  }
}


</style>



<meta charset="ISO-8859-1">
<title>Contact Information</title>
</head>
<body>
	<aside class="profile-card">
		<header>
			<a class="fa fa-user" style="font-size: 80px; color: #15172b"></a>
			<h1>${contact.firstName} ${contact.lastName}</h1>
			<h2>${contact.email}</h2>
		</header>
		<div class="profile-bio">
			<p style="font-size: 15px">Mobile:</p>
			<p style="font-size: 22px; font-family: verdana; color: #FF5722">
				${contact.mobile}</p>
			<br>
		</div>
		<div class="social">
			<a href="updateContact?id=${contact.id}"><input
				class="btn-hover color-8" type="submit" value="Billing"></a> <a
				href="delete?id=${contact.id}"><input class="btn-hover color-10"
				type="submit" value="Delete"></a> <a
				href="updateContact?id=${contact.id}"><input
				class="btn-hover color-9" type="submit" value="Update"></a>
		</div>
	</aside>
</body>
</html>