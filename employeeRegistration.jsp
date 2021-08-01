<%-- 
    Document   : employeeRegistration
    Created on : Jul 11, 2021, 11:07:19 PM
    Author     : Cool Tech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
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
      padding: 30px;
    }
    
    input[type=submit]{
      background-color: #04AA6D;
      color: white;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      cursor: pointer;
      width: 100%;
      height: 50px;
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

<br><br><br>

<div class="container">
  <h2>Register New Employee</h2>
  <p>Insert employee's information such as Name, Address, IC No, Phone No and Salary. </p>
  <form action="employeeRegistrationProcess.jsp" method="POST">
    <div class="form-group">
      <label for="inputdefault">Name(as per IC)</label>
      <input class="form-control" id="inputdefault" type="text" name="name" placeholder="Insert employee's fullname as per IC" required>
    </div>
    <div class="form-group">
      <label for="inputdefault">Identity Card No</label>
      <input class="form-control" id="inputdefault" type="text" name="icno" placeholder="Insert employee's IC No" required>
    </div>
    <div class="form-group">
      <label for="inputdefault">Address</label>
      <input class="form-control" id="inputdefault" type="text" name="addr" placeholder="Insert employee's address" required>
    </div>
    <div class="form-group">
      <label for="inputdefault">Phone No</label>
      <input class="form-control" id="inputdefault" type="text" name="phoneNo" placeholder="Insert employee's phone no" required>
    </div>
    <div class="form-group">
      <label for="inputdefault">Salary (RM)</label>
      <input class="form-control" id="inputdefault" type="text" name="salary" placeholder="Insert amount of employee's salary. E.g: 1200" required>
    </div>
    <br><br>
    <div class="form-group">
      <input class="form-control" id="inputdefault" type="submit" value="Add New Employee">
    </div>
  </form>
</div>

<br><br><br><br>
<br><br>
<footer class="container-fluid text-center">
    <p>&copy; Hakcipta Terpelihara <strong>AL-Lazeez Nasi Arab</strong></p>  
</footer>

</body>
</html>
