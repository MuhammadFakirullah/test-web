<%-- 
    Document   : employeeUpdateDetails2
    Created on : Jul 5, 2021, 2:12:59 PM
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
            int empID = Integer.parseInt(request.getParameter("hidid"));
            
            String name = request.getParameter("name");
            String icno = request.getParameter("icno");
            String address = request.getParameter("address");
            String phoneNo = request.getParameter("phoneNo");
            String salary = request.getParameter("salary");
            
            Class.forName("com.mysql.jdbc.Driver");
            
            String myUrl = "jdbc:mySql://localhost:3306/restaurants";
            String uname="fakirullah";
            String pass="admin";
            Connection myConnection = DriverManager.getConnection(myUrl,uname,pass);
            
            String mySqlQuery = "update employee "
                     + "set empName=?, empIcno=?, empAddress=?, empPhoneNo=?, empSalary=?"
                     + "where empID=?";
            
            PreparedStatement myPs = myConnection.prepareStatement(mySqlQuery);
            
            myPs.setString(1, name);
            myPs.setString(2, icno);
            myPs.setString(3, address);
            myPs.setString(4, phoneNo);
            myPs.setString(5, salary);
            myPs.setInt(6, empID);
            
            if(myPs.executeUpdate()!=0){
                out.println("<script type=\text/javascript\">");
                out.println("alert(\"Success Update the employee record\")");
                out.println("</script>");
                
                RequestDispatcher rd = request.getRequestDispatcher("employeeManagement.jsp");
                rd.include(request, response);
            }
            myConnection.close();
        %>
    </body>
</html>

