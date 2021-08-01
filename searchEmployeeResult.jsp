<%-- 
    Document   : searchEmployeeResult
    Created on : Jul 12, 2021, 2:56:15 PM
    Author     : Cool Tech
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
  <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
  <link rel = "stylesheet" type = "text/css" href = "table.css">
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
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> <%=username%></a></li>
        <!--<li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>-->
      </ul>
    </div>
  </div>
</nav>

<center><h1>Welcome to administrator account</h1></center>
<br><br><br>

<div class="body">
    <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurants","fakirullah","admin");
                
                Statement st = con.createStatement();
                
                String icno = request.getParameter("icno");
                String myQuery = "select * from employee where empIcno='"+icno+"'";
                ResultSet rs = st.executeQuery(myQuery);
                out.println("<div style='font-family: century gothic; padding=15px;'>");
                out.println("<center><h1>Employee Results</h1></center></div>");
                out.println("<div align='center'>");
                out.println("<table id='customers' border='1'>");
                out.println("<tr>");
                out.println("<th>Name</th>");
                out.println("<th>IC No.</th>");
                out.println("<th>Phone No</th>");
                out.println("<th>Actions</th>");
                out.println("</tr>");
                while(rs.next()){
                    out.println("<tr>");
                    out.println("<td>" + rs.getString(2) + "</td>");
                    out.println("<td>" + rs.getString(3) + "</td>");
                    out.println("<td>" + rs.getString(5) + "</td>");
                    out.println("<td><a href=employeeUpdateDetails.jsp?empID="
                            +rs.getString(1) + "><i class='far fa-edit' style='font-size:24px'></i></a>"
                            + "&nbsp;"+"<a href=employeeDeleteDetails.jsp?empID="
                            +rs.getString(1) + " onclick=\"return confirm"+
                                "('Are you sure you want to delete?')\"><i class='far fa-trash-alt' style='font-size:24px'></i></a>"
                            +"</td>");
                           out.println("</tr>");
                }
                out.println("</table>");
                out.println("<tr>");
                out.println("<td><input type='button' value='Back' onclick='history.back();'/></td>");
                out.println("</tr>");
                out.println("</div>");
                }          

            catch(Exception e){
                System.out.println(e.getMessage());
            }
        %>
</div>


<br><br><br><br><br>
<br><br>

<footer class="container-fluid text-center">
    <p>&copy; Hakcipta Terpelihara <strong>AL-Lazeez Nasi Arab</strong></p>  
</footer>

</body>
</html>
