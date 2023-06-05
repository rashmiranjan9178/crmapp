<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Index.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- JSTL Directive
Tag -->
<!DOCTYPE html>
<html>
<head>

<style type="text/css">

/* CSS for the Contact List page */
body {
  font-family: Arial, sans-serif;
  background-color: #f9f9f9;
}

.console-container {
  text-align: center;
  margin-top: 50px;
}

#text {
  font-size: 24px;
  color: #15172b;
}

.console-underscore {
  display: inline-block;
  position: relative;
  top: -0.1em;
  animation: console-animation 0.5s infinite;
}

@keyframes console-animation {
  0% {
    opacity: 0;
  }
  50% {
    opacity: 1;
  }
  51% {
    opacity: 0;
  }
}

.container {
  max-width: 600px;
  margin: 50px auto;
}

.hoverTable {
  width: 100%;
  border-collapse: collapse;
}

.hoverTable th,
.hoverTable td {
  padding: 8px;
  text-align: left;
}

.hoverTable thead th {
  background-color: #555;
  color: #fff;
}

.hoverTable tbody tr:nth-child(even) {
  background-color: #f2f2f2;
}

.hoverTable tbody tr:hover {
  background-color: #ddd;
}

.social {
  display: flex;
  justify-content: space-between;
}

.social input[type="submit"] {
  border: none;
  color: #fff;
  padding: 8px 16px;
  cursor: pointer;
  font-size: 14px;
  transition: background-color 0.3s ease;
}

.social input[type="submit"].btn-hover {
  border-radius: 4px;
}

.social input[type="submit"].color-8 {
  background-color: #FF5722;
}

.social input[type="submit"].color-8:hover {
  background-color: #c4460c;
}

.social input[type="submit"].color-9 {
  background-color: #2196F3;
}

.social input[type="submit"].color-9:hover {
  background-color: #1c87e9;
}

.social input[type="submit"].color-10 {
  background-color: #e91e63;
}

.social input[type="submit"].color-10:hover {
  background-color: #d21752;
}


</style>


<link rel="stylesheet" type="text/css" href="/css/list_style.css">
<meta charset="ISO-8859-1">
<title>Contact List</title>
</head>
<body class="heading-body">
	<div class='console-container'>
		<span id='text'></span>
		<script type="text/javascript" src="js/contactList.js"></script>
		<div class='console-underscore' id='console'>&#95;</div>
	</div>
</body>
<body>
	<div class="container">
		<table class="hoverTable">
			<thead>
				<tr>
					<th>ID No.</th>
					<th>FIRST NAME</th>
					<th>LAST NAME</th>
					<th>EMAIL</th>
					<th>MOBILE</th>
					<th>ACTION</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="contact" items="${contact}">
					<tr>
						<td style="text-align: center"><a
							href="contactInfo?id=${contact.id}"> ${contact.id}</a></td>
						<td>${contact.firstName}</td>
						<td>${contact.lastName}</td>
						<td>${contact.email}</td>
						<td>${contact.mobile}</td>
						<td>
							<div class="social">
								<a href="billingPage?id=${contact.id}"><input
									class="btn-hover color-8" type="submit" value="Billing"></a>
								<a href="deleteContact?id=${contact.id}"><input
									class="btn-hover color-10" type="submit" value="Delete"></a>
								<a href="updateContact?id=${contact.id}"><input
									class="btn-hover color-9" type="submit" value="Update"></a>
							</div>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>