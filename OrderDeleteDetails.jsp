<%-- 
    Document   : OrderDeleteDetails
    Created on : Jul 12, 2021, 4:53:38 PM
    Author     : Cool Tech
--%>

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
            
            Class.forName("com.mysql.jdbc.Driver");
            
            String myUrl= "jdbc:mysql://localhost:3306/restaurants";
            String uname="fakirullah";
            String pass="admin";
            
            Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);
            
            String mySqlQuery = "delete from orderq where orderID=?";
            PreparedStatement myPs = myConnection.prepareStatement(mySqlQuery);
            
            myPs.setInt(1, orderID);
            
            if(myPs.executeUpdate()!=0){
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success Delete the employee record\")");
                out.println("<script>");
                
                RequestDispatcher rd = request.getRequestDispatcher("OrderManagement.jsp");
                rd.include(request, response);
            }
        %>
    </body>
</html>
