<%-- 
    Document   : processForm1
    Created on : Jul 13, 2021, 8:01:03 PM
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
            String ordname = request.getParameter("name");
            String ordemail = request.getParameter("email");
            String ordphoneNo = request.getParameter("phoneNo");
            String orddate = request.getParameter("date");
            String ordtime = request.getParameter("time");
            String ordmessage = request.getParameter("message");
            
            Class.forName("com.mysql.jdbc.Driver");
            
            String myUrl = "jdbc:mysql://localhost:3306/restaurants";
            String uname = "fakirullah";
            String pass = "admin";
            Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);
            
            String mySqlQuery = "insert into orderq" 
                    + "(ordName, ordEmail, ordPhoneNo, ordDate, ordTime,ordMessage) "
                    + "values(?, ?, ?, ?, ?, ?)";
            
            PreparedStatement myPs = myConnection.prepareStatement(mySqlQuery);
            
            myPs.setString(1, ordname);
            myPs.setString(2, ordemail);
            myPs.setString(3, ordphoneNo);
            myPs.setString(4, orddate);
            myPs.setString(5, ordtime);
            myPs.setString(6, ordmessage);
            
            if(!myPs.execute()){
                
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Tempahan anda sudah berjaya!\")");
                out.println("</script >");
                
                RequestDispatcher rd = request.getRequestDispatcher("homepage.jsp");
                rd.include(request, response);
            }
            myConnection.close();
        %>
    </body>
</html>

