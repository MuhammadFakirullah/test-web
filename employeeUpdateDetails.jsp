<%-- 
    Document   : employeeUpdateDetails
    Created on : Jul 5, 2021, 1:49:37 PM
    Author     : Cool Tech
--%>

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
            
            int empID = Integer.parseInt(request.getParameter("empID"));
            String nama="", icno="", address="", phoneNo="", salary="";
                
                
            Class.forName("com.mysql.jdbc.Driver");

            String myUrl= "jdbc:mysql://localhost:3306/restaurants";
            String uname="fakirullah";
            String pass="admin";

            Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);

            String myQuery = "select * from employee "
                      + "where empID=" + empID;          

            Statement myStatement = myConnection.createStatement();
         
            ResultSet myRs = myStatement.executeQuery(myQuery);

            while(myRs.next()){
                nama = myRs.getString(2);
                icno = myRs.getString(3);
                address = myRs.getString(4);
                phoneNo = myRs.getString(5);
                salary = myRs.getString(6);
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

<center><h1>Welcome to administrator account</h1></center>
<br><br><br>
<!--<div class="body">
    <center>
        <form action="employeeUpdateDetails2.jsp" method="POST">
            <h3>Employee Details</h3><br>
                    <input type="hidden" name="hidid" value="<%=empID%>"/>
                    <table align="center" border="0">
			<tr>
                            <td>
                                <b>Employee ID:</b>&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <input type="text" name="empID" value="<%=empID%>" style="width:150%; height:40px;" readonly>
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
                                <input type="text" name="name" value="<%=nama%>" style="width:150%;height:40px;">
                            </td>
                        </tr>
                        <tr>
                            <td><br></td>
                        </tr>
                        <tr>
                            <td>
                                <b>IC No.:</b>
                            </td>
                            <td>
                                <input type="text" name="icno" value="<%=icno%>" style="width:150%;height:40px;">
                            </td>
                        </tr>
                        <tr>
                            <td><br></td>
                        </tr>
                        <tr>
                            <td>
                                <b>Address:</b>
                            </td>
                            <td>
                                <input type="text" name="address" value="<%=address%>" style="width:150%;height:40px;">
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
                                <input type="text" name="phoneNo" value="<%=phoneNo%>" style="width:150%;height:40px;">
                            </td>
                        </tr>
                        <tr>
                            <td><br></td>
                        </tr>
                        <tr>
                            <td>
                                <b>Salary:</b> 
                            </td>
                            <td>
                                <input type="text" name="salary" value="<%=salary%>" style="width:150%;height:40px;">
                            </td>
                        </tr>
                        <tr>
                            <td><br></td>
                        </tr>
                        <tr>
                                <td><label></label></td>
                                <td><input type="submit" value="Update"/>
                                    <input type="button" value="Cancel"
                                           onclick="window.location.href = 'employeeListDetails.jsp'; return false"/>
                                </td>
                        </tr>
                    </table>
                </form>
    </center>
</div>-->

        <div class="container">
        <h2>View Employee's Details</h2>
        <p>You can view, edit and delete employee's details. </p>
        <form action="employeeUpdateDetails2.jsp" method="POST">
          <input type="hidden" name="hidid" value="<%=empID%>"/>
          <div class="form-group">
            <label for="inputdefault">Name(as per IC)</label>
            <input class="form-control" id="inputdefault" type="text" name="name" value="<%=nama%>">
          </div>
          <div class="form-group">
            <label for="inputdefault">Identity Card No</label>
            <input class="form-control" id="inputdefault" type="text" name="icno" value="<%=icno%>">
          </div>
          <div class="form-group">
            <label for="inputdefault">Address</label>
            <input class="form-control" id="inputdefault" type="text" name="address" value="<%=address%>">
          </div>
          <div class="form-group">
            <label for="inputdefault">Phone No</label>
            <input class="form-control" id="inputdefault" type="text" name="phoneNo" value="<%=phoneNo%>">
          </div>
          <div class="form-group">
            <label for="inputdefault">Salary (RM)</label>
            <input class="form-control" id="inputdefault" type="text" name="salary" value="<%=salary%>">
          </div>
          <br><br>
          <div class="form-group">
            <input class="form-control" id="inputdefault" type="submit" value="Update">
            <input class="form-control" id="inputdefault" type="button" value="Cancel" 
                   onclick="window.location.href = 'employeeListDetails.jsp'; return false"/>
          </div>
        </form>
      </div>                    
                            
<br><br><br><br><br>
<br><br>

<footer class="container-fluid text-center">
    <p>&copy; Hakcipta Terpelihara <strong>AL-Lazeez Nasi Arab</strong></p>  
</footer>

</body>
</html>

