<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Index.jsp"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="/css/info_style.css">
<head>

<style>
		/* Responsive styles */
		@media (max-width: 600px) {
			.profile-card {
				width: 90%;
			}
		}
		
		/* CSS for the profile card */
body {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
}

.profile-card {
	background-color: #fff;
	width: 400px;
	margin: 50px auto;
	padding: 30px;
	border-radius: 5px;
	box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
}

header {
	text-align: center;
	margin-bottom: 30px;
}

header a {
	text-decoration: none;
}

header h1 {
	font-size: 24px;
	font-weight: bold;
	margin: 10px 0;
}

header h2 {
	font-size: 18px;
	color: #777;
}

.profile-bio p {
	margin: 5px 0;
}

.social {
	margin-top: 30px;
	text-align: center;
}

.social input[type="submit"] {
	width: 100px;
	padding: 10px;
	margin: 5px;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
}

/* Rest of the existing styles... */
		
	</style>

<meta charset="ISO-8859-1">
<title>Lead Information</title>
</head>
<body>
	<aside class="profile-card">
		<header>
			<a class="fa fa-user" style="font-size: 80px; color: #15172b"></a>
			<h1>${lead.firstName} ${lead.lastName}</h1>
			<h2>${lead.email}</h2>
		</header>
		<div class="profile-bio">
			<p style="font-size: 15px">Mobile:</p>
			<p style="font-size: 22px; font-family: verdana; color: #FF5722">
				${lead.mobile}</p>
			<br>
			<p style="font-size: 15px">Source:</p>
			<p style="font-size: 19px; font-family: verdana">${lead.source}</p>
		</div>
		<div class="social">
			<form action="convertLead" method="post" style="display: inline;">
				<input type="hidden" name="id" value="${lead.id}"> <input
					class="btn-hover color-8" type="submit" value="Convert">
			</form>
			<a href="delete?id=${lead.id}"><input class="btn-hover color-10"
				type="submit" value="Delete"></a> <a href="update?id=${lead.id}"><input
				class="btn-hover color-9" type="submit" value="Update"></a>
		</div>
	</aside>
</body>
</html>