<%-- 
    Document   : employeeRegistrationProcess
    Created on : Jul 12, 2021, 11:36:34 AM
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
            String name = request.getParameter("name");
            String icno = request.getParameter("icno");
            String addr = request.getParameter("addr");
            String phoneNo = request.getParameter("phoneNo");
            String salary = request.getParameter("salary");
            Class.forName("com.mysql.jdbc.Driver");
            
            String myUrl = "jdbc:mysql://localhost:3306/restaurants";
            String uname = "fakirullah";
            String pass = "admin";
            Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);
            
            String mySqlQuery = "insert into employee " 
                    + "(empName, empIcno, empAddress, empPhoneNo, empSalary) "
                    + "values(?, ?, ?, ?, ?)";
            
            PreparedStatement myPs = myConnection.prepareStatement(mySqlQuery);
            
            myPs.setString(1, name);
            myPs.setString(2, icno);
            myPs.setString(3, addr);
            myPs.setString(4, phoneNo);
            myPs.setString(5, salary);
            
            if(!myPs.execute()){
                
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success Add Record\")");
                out.println("</script >");
                
                RequestDispatcher rd = request.getRequestDispatcher("employeeListDetails.jsp");
                rd.include(request, response);
            }
            myConnection.close();
        %>
    </body>
</html>
