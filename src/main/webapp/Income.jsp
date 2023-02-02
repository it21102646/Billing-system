<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add Income</title>
	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
		crossorigin="anonymous">
	<link rel="stylesheet"
		href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<script type="text/javascript">
        function validate(){
        
        	var total = document.getElementById("total");
        	
        	 if ((total.value == "") || (tot.value <= 0)) { //total value validation
           	 alert ("Please Insert Valid Amount");
           	 return false;
           }
            else{
            	alert ("Data Inserted Successfully!");
            	return true;
            }
        }
        
	</script>
	
	<script>
            
		function isInputNumber(evt){
                
			var ch = String.fromCharCode(evt.which);
                
			if(!(/[0-9]/.test(ch))){
				evt.preventDefault();
			}
                
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
				<a href="#" class="navbar-brand">Bill</a>
			</div>

			<ul class="navbar-nav">
				<li><a href="ViewIncome.jsp" class="nav-link">View Bill</a></li>
			</ul>
			<ul class="navbar-nav">
				<li><a href="Income.jsp" class="nav-link">Add Bill</a></li>
			</ul>
			<ul class="navbar-nav">
				<li><a href="Report.jsp" class="nav-link">Report</a></li>
			</ul>
		</nav>
	</header>
	
	<div class="container" style="margin-left: 20%; padding-top: 5%">
		<div class="card" style="background-color: #F3F3F3; border-radius: 15px 15px 15px 15px; box-shadow: 0 0 20px rgba(0, 0, 0, .15)">
			<div class="card-body">
				<form name="insert" action="insertIncome" method="post">
					<fieldset class="form-group">
						<label>Invoice ID</label> <br> <input type="text" name="invoiceId" class="form-control"><br>
					</fieldset>
					<fieldset class="form-group">
						<label>Name</label> <br> <input type="text" name="name" class="form-control"><br>
					</fieldset>
					<fieldset class="form-group">
						<label>Discount</label> <br> <input type="text" name="discount" class="form-control"><br>
					</fieldset>
					<fieldset class="form-group">
						<label>Total</label> <br> <input type="number" name="total"
							id="total" class="form-control" onkeypress="isInputNumber(event)"><br>
					</fieldset>
				
					<button type="submit" name="submit" onClick="return validate();" class="btn-xl">Add Bill</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>