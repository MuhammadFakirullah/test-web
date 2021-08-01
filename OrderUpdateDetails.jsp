<%-- 
    Document   : OrderUpdateDetails
    Created on : Jul 12, 2021, 4:27:11 PM
    Author     : Cool Tech
--%>

<%@page import="java.sql.Blob"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.DataInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
      padding: 28px;
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
    input[type=button]{
      background-color: #eb4034;
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
            
            int orderID = Integer.parseInt(request.getParameter("orderID"));
            String name="", email="", phoneNo="", date="", time="", message="";
            
            Class.forName("com.mysql.jdbc.Driver");

            String myUrl= "jdbc:mysql://localhost:3306/restaurants";
            String uname="fakirullah";
            String pass="admin";

            Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);

            String myQuery = "select * from orderq "
                      + "where orderID=" + orderID;          

            Statement myStatement = myConnection.createStatement();
         
            ResultSet myRs = myStatement.executeQuery(myQuery);

            while(myRs.next()){
                name = myRs.getString(2);
                email= myRs.getString(3);
                phoneNo = myRs.getString(4);
                date = myRs.getString(5);
                time = myRs.getString(6);
                message = myRs.getString(7);
                
                
            }
            myConnection.close();
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
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> <%=username%></a></li>
        <!--<li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>-->
      </ul>
    </div>
  </div>
</nav>

<!--
<center><h1>Welcome to administrator account</h1></center>
<br><br><br>
<div class="body">
    <center>
        <form action="OrderUpdateDetails2.jsp" method="POST">
            <h3>Order Details</h3><br>
                    <input type="hidden" name="hidid" value="<%=orderID%>"/>
                    <table align="center" border="0">
			<tr>
                            <td>
                                <b>Order ID:</b>&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <input type="text" name="empID" value="<%=orderID%>" style="width:150%; height:40px;" readonly>
                            </td>
                        </tr>
                        <tr>
                            <td><br></td>
                        </tr>
                        <tr>
                            <td>
                                <b>Name:</b>
                            </td>
                            <td>
                                <input type="text" name="name" value="<%=name%>" style="width:150%;height:40px;">
                            </td>
                        </tr>
                        <tr>
                            <td><br></td>
                        </tr>
                        <tr>
                            <td>
                                <b>Email:</b>
                            </td>
                            <td>
                                <input type="text" name="icno" value="<%=email%>" style="width:150%;height:40px;">
                            </td>
                        </tr>
                        <tr>
                            <td><br></td>
                        </tr>
                        <tr>
                            <td>
                                <b>Phone No:</b>
                            </td>
                            <td>
                                <input type="text" name="address" value="<%=phoneNo%>" style="width:150%;height:40px;">
                            </td>
                        </tr>
                        <tr>
                            <td><br></td>
                        </tr>
                        <tr>
                            <td>
                                <b>Date:</b> 
                            </td>
                            <td>
                                <input type="text" name="phoneNo" value="<%=date%>" style="width:150%;height:40px;">
                            </td>
                        </tr>
                        <tr>
                            <td><br></td>
                        </tr>
                        <tr>
                            <td>
                                <b>Time:</b> 
                            </td>
                            <td>
                                <input type="text" name="salary" value="<%=time%>" style="width:150%;height:40px;">
                            </td>
                        </tr>
                        <tr>
                            <td><br></td>
                        </tr>
                        <tr>
                            <td><br></td>
                        </tr>
                        <tr>
                            <td>
                                <b>Message:</b> 
                            </td>
                            <td>
                                <!--<input type="text" name="salary" value="<%=message%>" style="width:150%;height:40px;">
                                <textarea style="width:150%;height:80px;"><%=message%></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td><br></td>
                        </tr>
                        <tr>
                                <td><label></label></td>
                                <td><input type="submit" value="Update"/>
                                    <input type="button" value="Cancel"
                                           onclick="window.location.href = 'OrderManagement.jsp'; return false"/>
                                </td>
                        </tr>
                    </table>
                </form>
                
    </center>
</div>-->

            <div class="container">
                <h2>View Customer's Order Details</h2>
                <p>You can view, edit and delete customer's order details. </p>
                <form action="OrderUpdateDetails2.jsp" method="POST">
                  <input type="hidden" name="hidid" value="<%=orderID%>"/>
                  <div class="form-group">
                    <label for="inputdefault">Customer's Name</label>
                    <input class="form-control" id="inputdefault" type="text" name="name" value="<%=name%>" readonly>
                  </div>
                  <div class="form-group">
                    <label for="inputdefault">Customer's email</label>
                    <input class="form-control" id="inputdefault" type="text" name="icno" value="<%=email%>" readonly>
                  </div>
                  <div class="form-group">
                    <label for="inputdefault">Customer's phone no</label>
                    <input class="form-control" id="inputdefault" type="text" name="address" value="<%=phoneNo%>" readonly>
                  </div>
                  <div class="form-group">
                    <label for="inputdefault">Order By</label>
                    <input class="form-control" id="inputdefault" type="text" name="phoneNo" value="<%=date%>" readonly>
                  </div>
                  <div class="form-group">
                    <label for="inputdefault">Order Time</label>
                    <input class="form-control" id="inputdefault" type="text" name="salary" value="<%=time%>" readonly>
                  </div>
                  <div class="form-group">
                    <label for="inputdefault">Message</label>
                    <textarea class="form-control" id="inputdefault" name="salary" value="<%=message%>" readonly><%=message%></textarea>
                  </div>
                  <br><br>
                  <div class="form-group">
                    <!--<input class="form-control" id="inputdefault" type="submit" value="Update">-->
                    <input class="form-control" id="inputdefault" type="button" value="Back" 
                           onclick="window.location.href = 'OrderManagement.jsp'; return false"/>
                  </div>
                </form>
            </div>        

<br><br><br><br>

<footer class="container-fluid text-center">
    <p>&copy; Hakcipta Terpelihara <strong>AL-Lazeez Nasi Arab</strong></p>  
</footer>

</body>
</html>
