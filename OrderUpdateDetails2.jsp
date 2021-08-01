<%-- 
    Document   : OrderUpdateDetails2
    Created on : Jul 12, 2021, 4:38:40 PM
    Author     : Cool Tech
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int orderID = Integer.parseInt(request.getParameter("orderID"));
            Integer adminid = (Integer) request.getSession().getAttribute("adminid");
            
            String name = request.getParameter("name");
            String email = request.getParameter("icno");
            String phoneNo = request.getParameter("address");
            String date = request.getParameter("phoneNo");
            String Time = request.getParameter("time");
            String message = request.getParameter("message");
            
            Class.forName("com.mysql.jdbc.Driver");
            
            String myUrl = "jdbc:mySql://localhost:3306/restaurants";
            String uname="fakirullah";
            String pass="admin";
            Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);
            
            String mySqlQuery = "update orderq "
                     + "set ordName=?, ordEmail=?, ordPhoneNo=?, ordDate=?, ordTime=?, "
                    + "ordEmail=?, ordMessage=? "
                     + "where orderID=?";
            
            PreparedStatement myPs = myConnection.prepareStatement(mySqlQuery);
            
            myPs.setString(1, name);
            myPs.setString(2, email);
            myPs.setString(3, phoneNo);
            myPs.setString(4, date);
            myPs.setString(5, Time);
            myPs.setString(6, message);
            
            
            if(myPs.executeUpdate()!=0){
                out.println("<script type=\text/javascript\">");
                out.println("alert(\"Success Update the order record\")");
                out.println("</script>");
                
                RequestDispatcher rd = request.getRequestDispatcher("orderManagement.jsp");
                rd.include(request, response);
            }
            myConnection.close();
        %>
        
    </body>
</html>


