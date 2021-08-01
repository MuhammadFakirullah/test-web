<%-- 
    Document   : DeleteAcct
    Created on : Jul 15, 2021, 9:11:11 AM
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
            Integer adminid = (Integer) request.getSession().getAttribute("adminid");
            
            Class.forName("com.mysql.jdbc.Driver");
            
            String myUrl= "jdbc:mysql://localhost:3306/restaurants";
            String uname="fakirullah";
            String pass="admin";
            
            Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);
            
            String mySqlQuery = "delete from admin where adminID=?";
            PreparedStatement myPs = myConnection.prepareStatement(mySqlQuery);
            
            myPs.setInt(1, adminid);
            
            if(myPs.executeUpdate()!=0){
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success Delete the account\")");
                out.println("<script>");
                
                RequestDispatcher rd = request.getRequestDispatcher("SignIn.jsp");
                rd.include(request, response);
            }
        %>
    </body>
</html>

