<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Report</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style type="text/css">
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
<script src="https://code.jquery.com/jquery-1.12.4.js"
	type="text/javascript"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"
	type="text/javascript"></script>


<style type="text/css">
fieldset label {
	font-size: 20px;
}

.btn-xl {
	text-align: center;
	padding: 5px 30px;
	font-size: 20px;
	border-radius: 20px;
}

#container {
	dsiplay: flex;
	position: absolute;
	left: 50%;
	transform: translate(-50%, 50%);
	margin-top: 160px;
	margin-bottom: 60px;
}
</style>

</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #000000; padding: 20px;">
			<div>
				<a href="#" class="navbar-brand">Bill</a>
			</div>

			<ul class="navbar-nav">
				<li><a href="ViewIncome.jsp" class="nav-link">View Bill</a></li>
			</ul>
			<ul class="navbar-nav">
				<li><a href="Income.jsp" class="nav-link">Add Bill</a></li>
			</ul>

			<ul class="navbar-nav">
				<li><a href="Report.jsp" class="nav-link">Reports</a></li>
			</ul>
		</nav>

	</header>
	<div id="container">

		<button>
			<a href="<%=request.getContextPath()%>/Bill.jsp" type="submit"
				name="submit" class="btn-xl ">Print Bill</a>
		</button>
	</div>
</body>
</html>