<%-- 
    Document   : calculatePriceOutput
    Created on : Jul 11, 2021, 7:27:44 PM
    Author     : Cool Tech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 28px;
    }
    table {
       border-collapse: none;
       width: 30%;
    }

    th, td {
       text-align: left;
       padding: 12px;
    }

    tr:nth-child(even) {background-color: #f2f2f2;}
    
  </style>
</head>
<body>

    <%
            String username = (String)request.getSession().getAttribute("username");
            Integer adminid = (Integer) request.getSession().getAttribute("adminid");
        
            String menu1 = request.getParameter("menu-1");
            String menu2 = request.getParameter("menu-2");
            String menu3 = request.getParameter("menu-3");
            String menu4 = request.getParameter("menu-4");
            String menu5 = request.getParameter("menu-5");
            String menu6 = request.getParameter("menu-6");
            String menu7 = request.getParameter("menu-7");
            String menu8 = request.getParameter("menu-8");
            String menu9 = request.getParameter("menu-9");
            
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            
            double price1=0;
            double price2=0;
            double price3=0;
            double price4=0;
            double price5=0;
            double price6=0;
            double price7=0;
            double price8=0;
            double price9=0;
            
            //menu-1
            if(menu1.equals("1")){
                menu1 = "Nasi Mandy Ayam";
                price1 = 5.00*quantity;
            }
            else if(menu1.equals("2")){
                menu1 = "Nasi Mandy Kambing";
                price1 = 9.00*quantity;
            }
            else if(menu1.equals("3")){
                menu1 = "Shawarma";
                price1 = 5.00*quantity;
            }
            else if(menu1.equals("4")){
                menu1 = "Nasi Mandy Ayam (Set Talam)";
                price1 = 55.00*quantity;
            }
            else if(menu1.equals("5")){
                menu1 = "Nasi Mandy Kambing (Set Talam)";
                price1 = 75.00*quantity;
            }
            else if(menu1.equals("6")){
                menu1 = "Nasi Mandy Ayam (Set Keluarga)";
                price1 = 40.00*quantity;
            }
            else if(menu1.equals("7")){
                menu1 = "Nasi Mandy Kambing (Set Keluarga)";
                price1 = 75.00*quantity;
            }
            else if(menu1.equals("8")){
                menu1 = "Nasi Mandy Ayam (Set Gantang)";
                price1 = 350.00*quantity;
            }
            else if(menu1.equals("9")){
                menu1 = "Nasi Mandy Kambing (Set Gantang)";
                price1 = 500.00*quantity;
            }
            
            //menu-2
            if(menu2.equals("1")){
                menu2 = "Nasi Mandy Ayam";
                price2 = 5.00*quantity;
            }
            else if(menu2.equals("2")){
                menu2 = "Nasi Mandy Kambing";
                price2 = 9.00*quantity;
            }
            else if(menu2.equals("3")){
                menu2 = "Shawarma";
                price2 = 5.00*quantity;
            }
            else if(menu2.equals("4")){
                menu2 = "Nasi Mandy Ayam (Set Talam)";
                price2 = 55.00*quantity;
            }
            else if(menu2.equals("5")){
                menu2 = "Nasi Mandy Kambing (Set Talam)";
                price2 = 75.00*quantity;
            }
            else if(menu2.equals("6")){
                menu2 = "Nasi Mandy Ayam (Set Keluarga)";
                price2 = 40.00*quantity;
            }
            else if(menu2.equals("7")){
                menu2 = "Nasi Mandy Kambing (Set Keluarga)";
                price2 = 75.00*quantity;
            }
            else if(menu2.equals("8")){
                menu2 = "Nasi Mandy Ayam (Set Gantang)";
                price2 = 350.00*quantity;
            }
            else if(menu2.equals("9")){
                menu2 = "Nasi Mandy Kambing (Set Gantang)";
                price2 = 500.00*quantity;
            }
            
            //menu-3
            if(menu3.equals("1")){
                menu3 = "Nasi Mandy Ayam";
                price3 = 5.00*quantity;
            }
            else if(menu3.equals("2")){
                menu3 = "Nasi Mandy Kambing";
                price3 = 9.00*quantity;
            }
            else if(menu3.equals("3")){
                menu3 = "Shawarma";
                price3 = 5.00*quantity;
            }
            else if(menu3.equals("4")){
                menu3 = "Nasi Mandy Ayam (Set Talam)";
                price3 = 55.00*quantity;
            }
            else if(menu3.equals("5")){
                menu3 = "Nasi Mandy Kambing (Set Talam)";
                price3 = 75.00*quantity;
            }
            else if(menu3.equals("6")){
                menu3 = "Nasi Mandy Ayam (Set Keluarga)";
                price3 = 40.00*quantity;
            }
            else if(menu3.equals("7")){
                menu3 = "Nasi Mandy Kambing (Set Keluarga)";
                price3 = 75.00*quantity;
            }
            else if(menu3.equals("8")){
                menu3 = "Nasi Mandy Ayam (Set Gantang)";
                price3 = 350.00*quantity;
            }
            else if(menu3.equals("9")){
                menu3 = "Nasi Mandy Kambing (Set Gantang)";
                price3 = 500.00*quantity;
            }
            
            //menu-4
            if(menu4.equals("1")){
                menu4 = "Nasi Mandy Ayam";
                price4 = 5.00*quantity;
            }
            else if(menu4.equals("2")){
                menu4 = "Nasi Mandy Kambing";
                price4 = 9.00*quantity;
            }
            else if(menu4.equals("3")){
                menu4 = "Shawarma";
                price4 = 5.00*quantity;
            }
            else if(menu4.equals("4")){
                menu4 = "Nasi Mandy Ayam (Set Talam)";
                price4 = 55.00*quantity;
            }
            else if(menu4.equals("5")){
                menu4 = "Nasi Mandy Kambing (Set Talam)";
                price4 = 75.00*quantity;
            }
            else if(menu4.equals("6")){
                menu4 = "Nasi Mandy Ayam (Set Keluarga)";
                price4 = 40.00*quantity;
            }
            else if(menu4.equals("7")){
                menu4 = "Nasi Mandy Kambing (Set Keluarga)";
                price4 = 75.00*quantity;
            }
            else if(menu4.equals("8")){
                menu4 = "Nasi Mandy Ayam (Set Gantang)";
                price4 = 350.00*quantity;
            }
            else if(menu4.equals("9")){
                menu4 = "Nasi Mandy Kambing (Set Gantang)";
                price4 = 500.00*quantity;
            }
            
            //menu-5
            if(menu5.equals("1")){
                menu5 = "Nasi Mandy Ayam";
                price5 = 5.00*quantity;
            }
            else if(menu5.equals("2")){
                menu5 = "Nasi Mandy Kambing";
                price5 = 9.00*quantity;
            }
            else if(menu5.equals("3")){
                menu5 = "Shawarma";
                price5 = 5.00*quantity;
            }
            else if(menu5.equals("4")){
                menu5 = "Nasi Mandy Ayam (Set Talam)";
                price5 = 55.00*quantity;
            }
            else if(menu5.equals("5")){
                menu5 = "Nasi Mandy Kambing (Set Talam)";
                price5 = 75.00*quantity;
            }
            else if(menu5.equals("6")){
                menu5 = "Nasi Mandy Ayam (Set Keluarga)";
                price5 = 40.00*quantity;
            }
            else if(menu5.equals("7")){
                menu5 = "Nasi Mandy Kambing (Set Keluarga)";
                price5 = 75.00*quantity;
            }
            else if(menu5.equals("8")){
                menu5 = "Nasi Mandy Ayam (Set Gantang)";
                price5 = 350.00*quantity;
            }
            else if(menu5.equals("9")){
                menu5 = "Nasi Mandy Kambing (Set Gantang)";
                price5 = 500.00*quantity;
            }
            
            //menu-6
            if(menu6.equals("1")){
                menu6 = "Nasi Mandy Ayam";
                price6 = 5.00*quantity;
            }
            else if(menu6.equals("2")){
                menu6 = "Nasi Mandy Kambing";
                price6 = 9.00*quantity;
            }
            else if(menu6.equals("3")){
                menu6 = "Shawarma";
                price6 = 5.00*quantity;
            }
            else if(menu6.equals("4")){
                menu6 = "Nasi Mandy Ayam (Set Talam)";
                price6 = 55.00*quantity;
            }
            else if(menu6.equals("5")){
                menu6 = "Nasi Mandy Kambing (Set Talam)";
                price6 = 75.00*quantity;
            }
            else if(menu6.equals("6")){
                menu6 = "Nasi Mandy Ayam (Set Keluarga)";
                price6 = 40.00*quantity;
            }
            else if(menu6.equals("7")){
                menu6 = "Nasi Mandy Kambing (Set Keluarga)";
                price6 = 75.00*quantity;
            }
            else if(menu6.equals("8")){
                menu6 = "Nasi Mandy Ayam (Set Gantang)";
                price6 = 350.00*quantity;
            }
            else if(menu6.equals("9")){
                menu6 = "Nasi Mandy Kambing (Set Gantang)";
                price6 = 500.00*quantity;
            }
            
            //menu-7
            if(menu7.equals("1")){
                menu7 = "Nasi Mandy Ayam";
                price7 = 5.00*quantity;
            }
            else if(menu7.equals("2")){
                menu7 = "Nasi Mandy Kambing";
                price7 = 9.00*quantity;
            }
            else if(menu7.equals("3")){
                menu7 = "Shawarma";
                price7 = 5.00*quantity;
            }
            else if(menu7.equals("4")){
                menu7 = "Nasi Mandy Ayam (Set Talam)";
                price7 = 55.00*quantity;
            }
            else if(menu7.equals("5")){
                menu7 = "Nasi Mandy Kambing (Set Talam)";
                price7 = 75.00*quantity;
            }
            else if(menu7.equals("6")){
                menu7 = "Nasi Mandy Ayam (Set Keluarga)";
                price7 = 40.00*quantity;
            }
            else if(menu7.equals("7")){
                menu7 = "Nasi Mandy Kambing (Set Keluarga)";
                price7 = 75.00*quantity;
            }
            else if(menu7.equals("8")){
                menu7 = "Nasi Mandy Ayam (Set Gantang)";
                price7 = 350.00*quantity;
            }
            else if(menu7.equals("9")){
                menu7 = "Nasi Mandy Kambing (Set Gantang)";
                price7 = 500.00*quantity;
            }
            
            //menu-8
            if(menu8.equals("1")){
                menu8 = "Nasi Mandy Ayam";
                price8 = 5.00*quantity;
            }
            else if(menu8.equals("2")){
                menu8 = "Nasi Mandy Kambing";
                price8 = 9.00*quantity;
            }
            else if(menu8.equals("3")){
                menu8 = "Shawarma";
                price8 = 5.00*quantity;
            }
            else if(menu8.equals("4")){
                menu8 = "Nasi Mandy Ayam (Set Talam)";
                price8 = 55.00*quantity;
            }
            else if(menu8.equals("5")){
                menu8 = "Nasi Mandy Kambing (Set Talam)";
                price8 = 75.00*quantity;
            }
            else if(menu8.equals("6")){
                menu8 = "Nasi Mandy Ayam (Set Keluarga)";
                price8 = 40.00*quantity;
            }
            else if(menu8.equals("7")){
                menu8 = "Nasi Mandy Kambing (Set Keluarga)";
                price8 = 75.00*quantity;
            }
            else if(menu8.equals("8")){
                menu8 = "Nasi Mandy Ayam (Set Gantang)";
                price8 = 350.00*quantity;
            }
            else if(menu8.equals("9")){
                menu8 = "Nasi Mandy Kambing (Set Gantang)";
                price8 = 500.00*quantity;
            }
            
            //menu-9
            if(menu9.equals("1")){
                menu9 = "Nasi Mandy Ayam";
                price9 = 5.00*quantity;
            }
            else if(menu9.equals("2")){
                menu9 = "Nasi Mandy Kambing";
                price9 = 9.00*quantity;
            }
            else if(menu9.equals("3")){
                menu9 = "Shawarma";
                price9 = 5.00*quantity;
            }
            else if(menu9.equals("4")){
                menu9 = "Nasi Mandy Ayam (Set Talam)";
                price9 = 55.00*quantity;
            }
            else if(menu9.equals("5")){
                menu9 = "Nasi Mandy Kambing (Set Talam)";
                price9 = 75.00*quantity;
            }
            else if(menu9.equals("6")){
                menu9 = "Nasi Mandy Ayam (Set Keluarga)";
                price9 = 40.00*quantity;
            }
            else if(menu9.equals("7")){
                menu9 = "Nasi Mandy Kambing (Set Keluarga)";
                price9 = 75.00*quantity;
            }
            else if(menu9.equals("8")){
                menu9 = "Nasi Mandy Ayam (Set Gantang)";
                price9 = 350.00*quantity;
            }
            else if(menu9.equals("9")){
                menu9 = "Nasi Mandy Kambing (Set Gantang)";
                price9 = 500.00*quantity;
            }
            
            double subtotal = price1 + price2 + price3 + price4 + price5 + price6 + price7 + price8 + price9 ;
    %>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">AL-Lazeez Nasi Arab</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="dashboard.jsp">Home</a></li>
        <li><a href='viewProfile.jsp?adminID=<%=adminid%>'>My Profile</a></li>
        <li><a href="SignIn.jsp">Logout</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;<%=username%></a></li>
        <!--<li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>-->
      </ul><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>-->
    </div>
  </div>
</nav>

<center><h1>Price and subtotal for the food</h1></center>
<br>

<div class="body">
    <center><table>
            <tr>
                <td><label>Menu selected:</label></td>
                <td><%=menu1%></td>
            </tr>
            <tr>
                <td><label>Total Price:</label></td>
                <td>RM&nbsp;<%=price1%></td>
            </tr>
            <tr>
                <td><label>Menu selected:</label></td>
                <td><%=menu2%></td>
            </tr>
            <tr>
                <td><label>Total Price:</label></td>
                <td>RM&nbsp;<%=price2%></td>
            </tr>
            <tr>
                <td><label>Menu selected:</label></td>
                <td><%=menu3%></td>
            </tr>
            <tr>
                <td><label>Total Price:</label></td>
                <td>RM&nbsp;<%=price3%></td>
            </tr>
            <tr>
                <td><label>Menu selected:</label></td>
                <td><%=menu4%></td>
            </tr>
            <tr>
                <td><label>Total Price:</label></td>
                <td>RM&nbsp;<%=price4%></td>
            </tr>
            <tr>
                <td><label>Menu selected:</label></td>
                <td><%=menu5%></td>
            </tr>
            <tr>
                <td><label>Total Price:</label></td>
                <td>RM&nbsp;<%=price5%></td>
            </tr>
            <tr>
                <td><label>Menu selected:</label></td>
                <td><%=menu6%></td>
            </tr>
            <tr>
                <td><label>Total Price:</label></td>
                <td>RM&nbsp;<%=price6%></td>
            </tr>
            <tr>
                <td><label>Menu selected:</label></td>
                <td><%=menu7%></td>
            </tr>
            <tr>
                <td><label>Total Price:</label></td>
                <td>RM&nbsp;<%=price7%></td>
            </tr>
            <tr>
                <td><label>Menu selected:</label></td>
                <td><%=menu8%></td>
            </tr>
            <tr>
                <td><label>Total Price:</label></td>
                <td>RM&nbsp;<%=price8%></td>
            </tr>
            <tr>
                <td><label>Menu selected:</label></td>
                <td><%=menu9%></td>
            </tr>
            <tr>
                <td><label>Total Price:</label></td>
                <td>RM&nbsp;<%=price9%></td>
            </tr>
            <tr>
                <td><label><b>Subtotal:</b></label></td>
                <td><b>RM&nbsp;<%=subtotal%></b></td>
            </tr>
        </table></center>
</div>


<br><br><br>

<footer class="container-fluid text-center">
    <p>&copy; Hakcipta Terpelihara <strong>AL-Lazeez Nasi Arab</strong></p>  
</footer>

</body>
</html>


