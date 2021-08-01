<%-- 
    Document   : processForm2.jsp
    Created on : Jul 14, 2021, 9:47:41 AM
    Author     : Cool Tech
--%>

<%@page import="java.util.Enumeration"%>
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
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String things = request.getParameter("subject");
            String message = request.getParameter("message");
            
            Class.forName("com.mysql.jdbc.Driver");
            
            String myUrl = "jdbc:mysql://localhost:3306/restaurants";
            String uname = "fakirullah";
            String pass = "admin";
            Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);
            
            String mySqlQuery = "insert into complaints" 
                    + "(complaintsName, complaintsEmail, complaintsThings, complaintsMessage) "
                    + "values(?, ?, ?, ?)";
            
            PreparedStatement myPs = myConnection.prepareStatement(mySqlQuery);
            
            myPs.setString(1, name);
            myPs.setString(2, email);
            myPs.setString(3, things);
            myPs.setString(4, message);
            
            if(!myPs.execute()){
                
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Aduan anda sudah berjaya!\")");
                out.println("</script >");
                
                RequestDispatcher rd = request.getRequestDispatcher("homepage.jsp");
                rd.include(request, response);
            }
            myConnection.close();
        %>
    </body>
</html>
