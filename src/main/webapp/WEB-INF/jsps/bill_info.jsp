<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>

<style type="text/css">

/* CSS for the Bill Information */
body {
  font-family: Arial, sans-serif;
  background-color: #f9f9f9;
}

#invoice {
  max-width: 800px;
  margin: 0 auto;
  background-color: #fff;
  padding: 30px;
  border-radius: 5px;
}

.toolbar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 20px;
}

.toolbar a {
  text-decoration: none;
}

.toolbar button {
  margin-right: 10px;
}

.invoice {
  overflow: auto;
}

.invoice header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 30px;
}

.company-details h2 a {
  color: #000;
  text-decoration: none;
}

.company-details .address {
  margin-top: 5px;
  font-size: 14px;
  color: #555;
}

.company-details .email {
  font-size: 14px;
  color: #555;
}

.contacts {
  display: flex;
  justify-content: space-between;
  margin-bottom: 30px;
}

.invoice-to {
  flex-basis: 50%;
}

.invoice-to .to {
  font-size: 20px;
  margin-bottom: 5px;
}

.invoice-details {
  flex-basis: 50%;
}

.invoice-details .invoice-id {
  font-size: 24px;
  margin-bottom: 5px;
}

.invoice-details .date {
  font-size: 14px;
  color: #555;
}

table {
  width: 100%;
  border-collapse: collapse;
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

.thanks {
  font-size: 24px;
  text-align: center;
  margin-top: 30px;
}

.notices {
  margin-top: 30px;
}

.notices .notice {
  font-size: 14px;
  color: #555;
}

footer {
  text-align: center;
  margin-top: 30px;
  color: #555;
  font-size: 14px;
}

/* Responsive styles */
@media (max-width: 768px) {
  #invoice {
    padding: 20px;
  }
}


</style>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.4/jspdf.debug.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="css/bill_info.css">
</head>
<title>Bill Information</title>
<div id="invoice">
	<div class="toolbar hidden-print">
		<div class="text-left">
			<a href="/ ">
				<button class="btn btn-info">
					<i class="fa fa-file-pdf-o"> </i> Home
				</button>
			</a>

			<button id="printInvoice" class="btn btn-info">
				<i class="fa fa-print"> <script type="text/javascript"
						src="js/bill3.js">
					
				</script></i> Download/Print
			</button>
		</div>
		<hr>
	</div>
	<div class="invoice overflow-auto">
		<div style="min-width: 600px">
			<header>
				<div class="row">
					<div class="col">
						<a target="_blank" href="https://www.pankajsiracademy.in/"> <img
							src="images/logo.jpg" data-holder-rendered="true" />
						</a>
					</div>
					<div class="col company-details">
						<h2 class="name">
							<a target="_blank" href="https://www.pankajsiracademy.in/">
								Pankaj Sir Academy </a>
						</h2>
						<div>BBSR , GANGAPADA GIFT</div>
						<div>(+91) 8260990238</div>
						<div>rashmiranjan344@gmail.companda</div>
					</div>
				</div>
			</header>
			<main>
				<div class="row contacts">
					<div class="col invoice-to">
						<div class="text-gray-light">INVOICE TO:</div>
						<h2 class="to">${bill.firstName} ${bill.lastName}</h2>
						<div class="address">Mobile: ${bill.mobile}</div>
						<div class="email">
							Email: <a href="mailto:${bill.email}">${bill.email}</a>
						</div>
					</div>
					<div class="col invoice-details">
						<h1 class="invoice-id">INVOICE: ${bill.invoiceNo}</h1>
						<div class="date">Date of Invoice: ${bill.date}</div>
						<div class="date">Due Date: 30/10/2022</div>
					</div>
				</div>
				<table border="0" cellspacing="0" cellpadding="0">
					<thead>
						<tr>
							<th>#</th>
							<th class="text-center">PRODUCT</th>
							<th class="text-center">PRICE</th>
							<th class="text-center">QUANTITY</th>
							<th class="text-center">TOTAL</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="no">01</td>
							<td class="text-left"><h3>${bill.product}</h3>Creating a
								recognizable design solution based on the company's existing
								visual identity</td>
							<td class="unit">Rs. ${bill.price}</td>
							<td class="qty">1</td>
							<td class="total">Rs. ${bill.price}</td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="2"></td>
							<td colspan="2">SUBTOTAL</td>
							<td>Rs. ${bill.price}</td>
						</tr>
						<tr>
							<td colspan="2"></td>
							<td colspan="2">TAX 25%</td>
							<td>0</td>
						</tr>
						<tr>
							<td colspan="2"></td>
							<td colspan="2">GRAND TOTAL</td>
							<td>Rs. ${bill.price}</td>
						</tr>
					</tfoot>
				</table>
				<div class="thanks">Thank you!</div>
				<div class="notices">
					<div>NOTICE:</div>
					<div class="notice">This bill was generated by _M$A_ in Major
						Project for the fulfillment of the certification in "Full Stack
						Web Development".</div>
				</div>
			</main>
			<footer> Contact us: mdsyedaalam@gmail.com </footer>
		</div>
		<div></div>
	</div>
</div>