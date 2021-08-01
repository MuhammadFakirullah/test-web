<%-- 
    Document   : dashboard
    Created on : Jul 11, 2021, 4:48:44 PM
    Author     : Cool Tech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>AL-Lazeez Nasi Arab - Administrator</title>
  <link href="dashboard photo/logo.jpg" rel="icon">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 28px;
    }
    
  </style>
</head>
<body>
        <%
            String username = (String)request.getSession().getAttribute("username");
            Integer adminid = (Integer) request.getSession().getAttribute("adminid");
        %>
<!--<div class="jumbotron">
  <div class="container text-center">
    <h1>Online Store</h1>      
    <p>Mission, Vission & Values</p>
  </div>
</div>-->

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">AL-Lazeez Nasi Arab</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="dashboard.jsp">Home</a></li>
        <li><a href='viewProfile.jsp?adminID=<%=adminid%>'>My Profile</a></li>
        <li><a href="SignIn.jsp">Logout</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;<%=username%></a></li>
        <!--<li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>-->
      </ul>
        
    </div>
  </div>
</nav>

<center><h1>Welcome to administrator account</h1></center>

<!--<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="dashboard photo/calculate.png" height="200px" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-danger">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="dashboard photo/order.png" height="200px" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-success">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="dashboard photo/employee.png" height="200px" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
  </div>
</div><br>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
  </div>
</div>--><br>
<div class="body">
    <center>
        <table>
            <tr>
                <td><img src="dashboard photo/calculate.png" style="width: 100px; height: 100px;" alt="Image"></td>
                <td>&nbsp;&nbsp;<a href="calculatePrice.jsp">Calculate price</a></td>
            </tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td><img src="dashboard photo/invoice.png" style="width: 100px; height: 100px;" alt="Image"></td>
                <td>&nbsp;&nbsp;<a href="Invoice1.jsp">Generate Invoice</a></td>
            </tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td><img src="dashboard photo/employee.png" style="width: 100px; height: 100px;" alt="Image"></td>
                <td>&nbsp;&nbsp;<a href="employeeManagement.jsp">Manage Employee</a></td>
            </tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td><img src="dashboard photo/order.png" style="width: 100px; height: 100px;" alt="Image"></td>
                <td>&nbsp;&nbsp;<a href="OrderManagement.jsp">Manage Order</a></td>
            </tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td><img src="dashboard photo/customer1.png" style="width: 100px; height: 100px;" alt="Image"></td>
                <td>&nbsp;&nbsp;<a href="complaintsManagement.jsp">Customer complaint</a></td>
            </tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td><img src="dashboard photo/deleteacct.png" style="width: 100px; height: 100px;" alt="Image"></td>
                <td>&nbsp;&nbsp;<a href="DeleteAcct.jsp">Delete account</a></td>
            </tr>
        </table>
    </center>
</div>

<br>

<footer class="container-fluid text-center">
    <p>&copy; Hakcipta Terpelihara <strong>AL-Lazeez Nasi Arab</strong></p>  
</footer>

</body>
</html>

