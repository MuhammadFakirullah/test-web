<%-- 
    Document   : ComplaintsUpdateDetails2
    Created on : Jul 14, 2021, 10:08:46 AM
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
            int complaintsID = Integer.parseInt(request.getParameter("complaintsID"));
            
            String name = request.getParameter("name");
            String email = request.getParameter("icno");
            String subject = request.getParameter("subject");
            String message = request.getParameter("message");
            
            Class.forName("com.mysql.jdbc.Driver");
            
            String myUrl = "jdbc:mySql://localhost:3306/restaurants";
            String uname="fakirullah";
            String pass="admin";
            Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);
            
            String mySqlQuery = "update complaints "
                     + "set complaintsName=?, complaintsEmail=?, complaintsThings=?, complaintsMessage=?"
                     + "where complaintsID=?";
            
            PreparedStatement myPs = myConnection.prepareStatement(mySqlQuery);
            
            myPs.setString(1, name);
            myPs.setString(2, email);
            myPs.setString(3, subject);
            myPs.setString(4, message);
            
            
            if(myPs.executeUpdate()!=0){
                out.println("<script type=\text/javascript\">");
                out.println("alert(\"Success Update the complaints record\")");
                out.println("</script>");
                
                RequestDispatcher rd = request.getRequestDispatcher("complaintsManagement.jsp");
                rd.include(request, response);
            }
            myConnection.close();
        %>
    </body>
</html>

