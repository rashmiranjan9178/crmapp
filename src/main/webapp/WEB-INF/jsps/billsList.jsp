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

/* CSS for the All Bills page */
body {
  font-family: Arial, sans-serif;
  background-color: #f9f9f9;
}

.container {
  max-width: 800px;
  margin: 0 auto;
  padding: 30px;
}

table {
  width: 100%;
  border-collapse: collapse;
  margin-top: 20px;
}

table thead th {
  background-color: #f5f5f5;
  border-bottom: 1px solid #ddd;
  padding: 10px;
  text-align: left;
  font-weight: bold;
}

table tbody td {
  padding: 10px;
  border-bottom: 1px solid #ddd;
}

table tbody td.text-center {
  text-align: center;
}

table tfoot td {
  padding: 10px;
  border-top: 1px solid #ddd;
}

.social input[type="submit"],
div input[type="submit"] {
  border: none;
  color: #fff;
  cursor: pointer;
  font-size: 14px;
  padding: 8px 16px;
  transition: background-color 0.3s ease;
}

.social input[type="submit"]:hover,
div input[type="submit"]:hover {
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

.console-container {
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  background-color: #f9f9f9;
}

#text {
  font-size: 24px;
  color: #555;
}

.console-underscore {
  display: inline-block;
  position: relative;
  bottom: 5px;
  width: 10px;
  height: 20px;
  background-color: #555;
  animation: blink 1s infinite;
}

@keyframes blink {
  50% {
    opacity: 0;
  }
}

/* Responsive styles */
@media (max-width: 768px) {
  .container {
    padding: 20px;
  }
}


</style>


<link rel="stylesheet" type="text/css" href="/css/list_style.css">
<meta charset="ISO-8859-1">
<title>All Bills</title>
</head>
<body class="heading-body">
	<div class='console-container'>
		<span id='text'></span>
		<script type="text/javascript" src="js/billList.js"></script>
		<div class='console-underscore' id='console'>&#95;</div>
	</div>
</body>
<body>
	<div class="container">
		<table class="hoverTable">
			<thead>
				<tr>
					<th>#</th>
					<th>CLIENT</th>
					<th>EMAIL</th>
					<th>MOBILE</th>
					<th>PRODUCT</th>
					<th>AMOUNT</th>
					<th colspan="2">ACTION</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="bill" items="${bills}">
					<tr>
						<td style="text-align: center"><a
							href="billInfo?invoiceNo=${bill.invoiceNo}">${bill.invoiceNo}</a></td>
						<td>${bill.firstName}${bill.lastName}</td>
						<td>${bill.email}</td>
						<td>${bill.mobile}</td>
						<td>${bill.product}</td>
						<td>${bill.price}</td>
						<td>
							<div class="social">
								<a href="billInfo?invoiceNo=${bill.invoiceNo}"><input
									class="btn-hover color-8" type="submit" value="View"></a>
							</div>
						</td>
						<td>
							<div>
								<a href="deleteBill?invoiceNo=${bill.invoiceNo}"><input
									class="btn-hover color-10" type="submit" value="Delete"></a>
							</div>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>