<%-- 
    Document   : SignUpProcess
    Created on : Jul 12, 2021, 9:05:51 AM
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
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String rePassword = request.getParameter("confirm_password");
            
            Class.forName("com.mysql.jdbc.Driver");
            
            String myUrl = "jdbc:mysql://localhost:3306/restaurants";
            String uname = "fakirullah";
            String pass = "admin";
            Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);
            
            String mySqlQuery = "insert into admin " 
                    + "(username, adminEmail, adminPassword) "
                    + "values(?, ?, ?)";
            
            PreparedStatement myPs = myConnection.prepareStatement(mySqlQuery);
            
            myPs.setString(1, username);
            myPs.setString(2, email);
            myPs.setString(3, password);
            
            if(!myPs.execute()){
                
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success Add Account\")");
                out.println("</script >");
                
                RequestDispatcher rd = request.getRequestDispatcher("SignIn.jsp");
                rd.include(request, response);
            }
            myConnection.close();
        %>
    </body>
</html>
