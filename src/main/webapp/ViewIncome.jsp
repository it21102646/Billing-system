<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Income List</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<style>
.table {
	border-collapse: collapse;
	min-width: 400px;
	border-radius: 15px 15px 15px 15px;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0, 0, 0, .15);
	background-color: #fff;
}

tbody tr:nth-of-type(even) {
	background-color: #F3F3F3;
	color: #012840;
	font-weight: 500;
}

tbody tr:last-of-type {
	border-bottom: 2px solid #012840;
}
</style>

<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style>
fieldset label {
	font-size: 20px;
}

.btn-xl {
	padding: 5px 30px;
	font-size: 20px;
	border-radius: 10px;
}
</style>

</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #FF5722 ; padding: 20px;">
			<div>
				<a href="" class="navbar-brand"> Bill</a>
			</div>

			<ul class="navbar-nav">
				<li><a href="ViewIncome.jsp" class="nav-link">View Bill</a></li>
			</ul>

			<ul class="navbar-nav">
				<li><a href="Income.jsp" class="nav-link">Add Bill</a></li>
			</ul>
			<ul class="navbar-nav">
				<li><a href="Report.jsp"
					class="nav-link">Reports</a></li>
			</ul>

		</nav>
	</header>


	<div class="container" style="margin-left: 20%; padding-top: 5%">
		<div class="card"
			style="background-color: #F3F3F3; border-radius: 15px 15px 15px 15px; box-shadow: 0 0 20px rgba(0, 0, 0, .15)">
			<div class="card-body">

				<form action="IncomeServlet" method="post">

					<button type="submit" name="submit" class="btn-xl">View
						All Bills</button>
					<br> <br>

				</form>

				<form action="SelectIncome" method="post">

					<fieldset>
						<label>Select invoice Id</label> <br> <input type="text" name="invId"  class="form-control"> <br>
					</fieldset>
				
					<button type="submit" name="submit" onClick="return validate();"
						class="btn-xl btn-primary">Search</button>
				</form>
			</div>
		</div>
	</div>

	<div class="container" style="margin-left: 20%; padding-top: 5%">
		<div class="card"
			style="background-color: #F3F3F3; border-radius: 15px 15px 15px 15px; box-shadow: 0 0 20px rgba(0, 0, 0, .15)">
			<div class="card-body">
				<table>
					<tr>
						<th style="text-align: center">ID</th>
						<th style="text-align: center">Invoice ID</th>
						<th style="text-align: center">Name</th>
						<th style="text-align: center">Discount</th>
						<th style="text-align: center">Total</th>
						
					</tr>

					<c:forEach var="inc" items="${incDetails}">
						<c:set var="id" value="${inc.id}" />
						<c:set var="invoiceId" value="${inc.invoiceId}" />
						<c:set var="name" value="${inc.name}" />
						<c:set var="discount" value="${inc.discount}" />
						<c:set var="total" value="${inc.total}" />
						

						<tr>
							<td style="text-align: center">${inc.id}</td>
							<td style="text-align: center; width: 110px">${inc.invoiceId}</td>
							<td style="text-align: center; width: 110px">${inc.name}</td>
							<td style="text-align: center; width: 110px">${inc.discount}</td>
							<td style="text-align: center; width: 110px">${inc.total}</td>
							<td>
								<c:url value="UpdateIncome.jsp" var="incUpdate">
									<c:param name="id" value="${id}" />
									<c:param name="invoiceId" value="${invoiceId}" />
									<c:param name="name" value="${name}" />
									<c:param name="discount" value="${discount}" />
									<c:param name="total" value="${total}" />
									
								</c:url> <a href="${incUpdate}">
							<button type="submit" name="submit" class="btn btn-primary">Update</button></a>
							</td>

							<td>
								<c:url value="DeleteIncome.jsp" var="incDelete">
									<c:param name="id" value="${id}" />
									<c:param name="invoiceId" value="${invoiceId}" />
									<c:param name="name" value="${name}" />
									<c:param name="discount" value="${discount}" />
									<c:param name="total" value="${total}" />
									

								</c:url> <a href="${incDelete}">
									<button type="submit" name="submit" class="btn btn-danger">Delete</button>
							</a>
							</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
</body>
</html>