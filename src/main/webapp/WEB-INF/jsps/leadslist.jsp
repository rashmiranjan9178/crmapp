<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="Index.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- JSTL Directive
Tag -->
<!DOCTYPE html>
<html>
<head>

<style>
		body {
			background-color: #f0f0f0;
		}

		.container {
			max-width: 800px;
			margin: 0 auto;
			padding: 20px;
		}

		.hoverTable {
			width: 100%;
			border-collapse: collapse;
		}

		.hoverTable th,
		.hoverTable td {
			padding: 10px;
			text-align: left;
		}

		.hoverTable th {
			background-color: #FF5722;
			color: #fff;
		}

		.hoverTable tr:nth-child(even) {
			background-color: #f2f2f2;
		}

		.hoverTable tr:hover {
			background-color: #ddd;
		}

		a {
			text-decoration: none;
			color: #FF5722;
		}

		a:hover {
			color: #FF4F00;
		}
		
		body {
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
}

.container {
	margin: 20px;
}

.hoverTable {
	width: 100%;
	border-collapse: collapse;
}

.hoverTable th,
.hoverTable td {
	padding: 10px;
	text-align: left;
}

.hoverTable th {
	background-color: #FF5722;
	color: #fff;
}

.hoverTable tr:nth-child(even) {
	background-color: #f2f2f2;
}

.hoverTable tr:hover {
	background-color: #ddd;
}

a {
	text-decoration: none;
	color: #FF5722;
}

a:hover {
	color: #FF4F00;
}
		
		
		
	</style>


<link rel="stylesheet" type="text/css" href="/css/list_style.css">
<meta charset="ISO-8859-1">
<title>All Leads</title>
</head>
<body class="heading-body">
	<div class='console-container'>
		<span id='text'></span>
		<script type="text/javascript" src="js/leadList.js"></script>
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
					<th>SOURCE</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="lead" items="${leads}">
					<tr>
						<td style="text-align: center"><a
							href="leadInfo?id=${lead.id}"> ${lead.id}</a></td>
						<td>${lead.firstName}</td>
						<td>${lead.lastName}</td>
						<td>${lead.email}</td>
						<td>${lead.mobile}</td>
						<td>${lead.source}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>