<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Income</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<script type="text/javascript">
		function validate() {
			alert("Data Deleted Successfully!");
		}
	</script>

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
				<a href="index.jsp" class="navbar-brand"> Bill </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="ViewIncome.jsp" class="nav-link"> View Bill
				</a></li>
			</ul>

			<ul class="navbar-nav">
				<li><a href="Income.jsp" class="nav-link"> Add Bill</a></li>
			</ul>
			<ul class="navbar-nav">
				<li><a href="Report.jsp"
					class="nav-link">Reports</a></li>
			</ul>
		</nav>
	</header>

	<%
	int id = Integer.parseInt(request.getParameter("id"));
	String invoiceId = request.getParameter("invoiceId");
	String name = request.getParameter("name");
	String discount = request.getParameter("discount");
	float total = Float.parseFloat(request.getParameter("total"));
	
	%>

	<div class="container" style="margin-left: 20%; padding-top: 5%">
		<div class="card"
			style="background-color: #F3F3F3; border-radius: 15px 15px 15px 15px; box-shadow: 0 0 20px rgba(0, 0, 0, .15)">
			<div class="card-body">

				<form action="DeleteIncome" method="post">

					<fieldset class="form-group">
						<label>ID</label> <input type="text" name="id"
							class="form-control" value="<%=id%>" readonly><br>
					</fieldset>

					<fieldset class="form-group">
						<label>Invoice Id</label> <br> <input type="text" name="type"
							class="form-control" value="<%=invoiceId%>"> <br>
					</fieldset>

					<fieldset class="form-group">
						<label>Name</label> <input type="text" name="id"
							class="form-control" value="<%=name%>" ><br>
					</fieldset>
					<fieldset class="form-group">
						<label>Discount</label> <input type="text" name="discount"
							class="form-control" value="<%=discount%>" ><br>
					</fieldset>
					<fieldset class="form-group">
						<label>Total</label> <br> <input type="text" name="total"
							class="form-control" value="<%=total%>" id="total"
							onkeypress="isInputNumber(event)">
					</fieldset>

					<button type="submit" name="submit" onClick="return validate();"
						class="btn-xl btn-danger">Delete Bill</button>

				</form>
			</div>
		</div>
	</div>
</body>
</html>