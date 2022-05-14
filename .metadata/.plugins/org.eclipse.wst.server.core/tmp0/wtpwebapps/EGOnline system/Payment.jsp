<%@page import="model.Payment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Management</title>

<link rel="stylesheet" href="Views/bootstrap.min.css"> 
<script src="components/jquery-3.6.0.js"></script>
<script src="components/pay.js"></script>


<nav class="navbar navbar-expand-md navbar-dark" style="background-color: #638CC3">
                   
	<ul class="navbar-nav">
		<li><a href="Index.jsp" class="nav-link" style="font-family: cursive;"> ELECTROGRID ONLINE SERVICE PLATFORM</a></li>
	</ul>
</nav>

</head>
<body>

<br>
<br>
<div class="container"> 
	<div class="row">  
    	<div class="container col-md-5">
    	   <br><br><br>
        	<div class="card">
            	<div class="card-body">
                	<caption>
                    	<center><h2 style="font-family: Georgia, serif;">
                        	Payment Management
                        </h2></center>
                 	</caption>  
                 	<br>
				
				<form id="formPayment" name="formPayment" method="post" action="Payment.jsp">  
				
					Payment Date:  
					<input id="PaymentDate" name="PaymentDate" type="text" class="form-control form-control-sm">  
					
					<br> 
					Payment Type:  
					<input id="PaymentType" name="PaymentType" type="text" class="form-control form-control-sm">  
					
					<br>
					 Amount:  
					 <input id="Amount" name="Amount" type="text" class="form-control form-control-sm">  
					 
					 <br> 
					 Card Number:  
					 <input id="CardNumber" name="CardNumber" type="text" class="form-control form-control-sm">  		 
					 
					 <br>  
					 <input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary"style="background-color:#067fc9">  
					 <input type="hidden" id="hidPaymentIDSave" name="hidPaymentIDSave" value=""> 
					 
					 
				</form> 
				     
				</div>
			</div>
			<br>
				<div id="alertSuccess" class="alert alert-success"></div>  
		        <div id="alertError" class="alert alert-danger"></div> 
		</div>
				
		
				
							
        <div class="row">
               
			<div class="container">
				<div class="container text-right">
			    	<a href="Index.jsp" class="btn btn-success"style="background-color:#067fc9">Navigate To Home page</a>
            	</div>
                <br><br>
            	<h3 class="text-center" style="font-family: serif;">Payment Details</h3>
                <hr>
                	<br>
                    <div id="divItemsGrid">   
						<%    
					    	Payment paymentObj = new Payment();
							out.print(paymentObj.readPayment());   
						%>  
					
					<br><br><br>
					</div> 
			</div>
		</div>			  
	</div>	 
</div>   
<br>
</body>

<br>

</html>