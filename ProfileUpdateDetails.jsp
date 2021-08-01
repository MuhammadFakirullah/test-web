<%-- 
    Document   : ProfileUpdateDetails
    Created on : Jul 15, 2021, 8:56:04 AM
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
            int adminID = Integer.parseInt(request.getParameter("adminID"));
            
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            
            Class.forName("com.mysql.jdbc.Driver");
            
            String myUrl = "jdbc:mySql://localhost:3306/restaurants";
            String uname="fakirullah";
            String pass="admin";
            Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);
            
            String mySqlQuery = "update admin "
                     + "set username=?, adminEmail=?, adminPassword=?"
                     + "where adminID=?";
            
            PreparedStatement myPs = myConnection.prepareStatement(mySqlQuery);
            
            myPs.setString(1, name);
            myPs.setString(2, email);
            myPs.setString(3, password);
            myPs.setInt(4, adminID);
            
            
            if(myPs.executeUpdate()!=0){
                out.println("<script type=\text/javascript\">");
                out.println("alert(\"Success update admin account\")");
                out.println("</script>");
                
                RequestDispatcher rd = request.getRequestDispatcher("dashboard.jsp");
                rd.include(request, response);
            }
            myConnection.close();
        %>
    </body>
</html>


