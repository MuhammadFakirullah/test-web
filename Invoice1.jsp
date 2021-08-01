<%-- 
    Document   : Invoice1
    Created on : Jul 14, 2021, 3:32:43 PM
    Author     : Cool Tech
--%>

<%-- 
    Document   : dashboard
    Created on : Jul 11, 2021, 4:48:44 PM
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
    
  </style>
</head>
<body>
        <%
            String username = (String)request.getSession().getAttribute("username");

            Integer adminid = (Integer) request.getSession().getAttribute("adminid");
        %>
<!--<div class="jumbotron">
  <div class="container text-center">
    <h1>Online Store</h1>      
    <p>Mission, Vission & Values</p>
  </div>
</div>-->

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
      </ul>
        
    </div>
  </div>
</nav>

<center><h1>Welcome to administrator account</h1></center>
<br><br><br>
<!--<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="dashboard photo/calculate.png" height="200px" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-danger">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="dashboard photo/order.png" height="200px" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-success">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="dashboard photo/employee.png" height="200px" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
  </div>
</div><br>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">BLACK FRIDAY DEAL</div>
        <div class="panel-body"><img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy 50 mobiles and get a gift card</div>
      </div>
    </div>
  </div>
</div>--><br><br>
<div class="body">
    <form action="Invoice2.jsp" method="post">
    <center>
        <table>
            <h3>MENU SECTION</h3><br>
            <tr>
                    <td><label><p>Choose Menu</b></label></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><label><p>Quantity</b></label></td>
                </tr>
                <tr>
                    <td><select class="menu" name="menu-1" style="height: 30px;">
                        <option value="0">Select the menu</option>
                        <option value="1">Nasi Mandy Ayam</option>
                        <option value="2">Nasi Mandy Kambing</option>
                        <option value="3">Shawarma</option>
                        <option value="4">Nasi Mandy Ayam (Set Talam)</option>
                        <option value="5">Nasi Mandy Kambing (Set Talam)</option>
                        <option value="6">Nasi Mandy Ayam (Set Keluarga)</option>
                        <option value="7">Nasi Mandy Kambing (Set Keluarga)</option>
                        <option value="8">Nasi Mandy Ayam (Set Gantang)</option>
                        <option value="9">Nasi Mandy Kambing (Set Gantang)</option>
                        </select></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><input type="number" name="quantity" value="" style="height: 30px; width: 80px;"></td>
                </tr>
                <tr><td><br></td></tr>
                <tr>
                    <td><label><p>Choose Menu</b></label></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><label><p>Quantity</b></label></td>
                </tr>
                <tr>
                    <td><select class="menu" name="menu-2" style="height: 30px;">
                        <option value="0">Select the menu</option>
                        <option value="1">Nasi Mandy Ayam</option>
                        <option value="2">Nasi Mandy Kambing</option>
                        <option value="3">Shawarma</option>
                        <option value="4">Nasi Mandy Ayam (Set Talam)</option>
                        <option value="5">Nasi Mandy Kambing (Set Talam)</option>
                        <option value="6">Nasi Mandy Ayam (Set Keluarga)</option>
                        <option value="7">Nasi Mandy Kambing (Set Keluarga)</option>
                        <option value="8">Nasi Mandy Ayam (Set Gantang)</option>
                        <option value="9">Nasi Mandy Kambing (Set Gantang)</option>
                        </select></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><input type="number" name="quantity" value="" style="height: 30px; width: 80px;"></td>
                </tr>
                <tr><td><br></td></tr>
                <tr>
                    <td><label><p>Choose Menu</b></label></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><label><p>Quantity</b></label></td>
                </tr>
                <tr>
                    <td><select class="menu" name="menu-3" style="height: 30px;">
                        <option value="0">Select the menu</option>
                        <option value="1">Nasi Mandy Ayam</option>
                        <option value="2">Nasi Mandy Kambing</option>
                        <option value="3">Shawarma</option>
                        <option value="4">Nasi Mandy Ayam (Set Talam)</option>
                        <option value="5">Nasi Mandy Kambing (Set Talam)</option>
                        <option value="6">Nasi Mandy Ayam (Set Keluarga)</option>
                        <option value="7">Nasi Mandy Kambing (Set Keluarga)</option>
                        <option value="8">Nasi Mandy Ayam (Set Gantang)</option>
                        <option value="9">Nasi Mandy Kambing (Set Gantang)</option>
                        </select></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><input type="number" name="quantity" value="" style="height: 30px; width: 80px;"></td>
                </tr>
                <tr><td><br></td></tr>
                <tr>
                    <td><label><p>Choose Menu</b></label></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><label><p>Quantity</b></label></td>
                </tr>
                <tr>
                    <td><select class="menu" name="menu-4" style="height: 30px;">
                        <option value="0">Select the menu</option>
                        <option value="1">Nasi Mandy Ayam</option>
                        <option value="2">Nasi Mandy Kambing</option>
                        <option value="3">Shawarma</option>
                        <option value="4">Nasi Mandy Ayam (Set Talam)</option>
                        <option value="5">Nasi Mandy Kambing (Set Talam)</option>
                        <option value="6">Nasi Mandy Ayam (Set Keluarga)</option>
                        <option value="7">Nasi Mandy Kambing (Set Keluarga)</option>
                        <option value="8">Nasi Mandy Ayam (Set Gantang)</option>
                        <option value="9">Nasi Mandy Kambing (Set Gantang)</option>
                        </select></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><input type="number" name="quantity" value="" style="height: 30px; width: 80px;"></td>
                </tr>
                <tr><td><br></td></tr>
                <tr>
                    <td><label><p>Choose Menu</b></label></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><label><p>Quantity</b></label></td>
                </tr>
                <tr>
                    <td><select class="menu" name="menu-5" style="height: 30px;">
                        <option value="0">Select the menu</option>
                        <option value="1">Nasi Mandy Ayam</option>
                        <option value="2">Nasi Mandy Kambing</option>
                        <option value="3">Shawarma</option>
                        <option value="4">Nasi Mandy Ayam (Set Talam)</option>
                        <option value="5">Nasi Mandy Kambing (Set Talam)</option>
                        <option value="6">Nasi Mandy Ayam (Set Keluarga)</option>
                        <option value="7">Nasi Mandy Kambing (Set Keluarga)</option>
                        <option value="8">Nasi Mandy Ayam (Set Gantang)</option>
                        <option value="9">Nasi Mandy Kambing (Set Gantang)</option>
                        </select></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><input type="number" name="quantity" value="" style="height: 30px; width: 80px;"></td>
                </tr>
                <tr><td><br></td></tr>
                <tr>
                    <td><label><p>Choose Menu</b></label></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><label><p>Quantity</b></label></td>
                </tr>
                <tr>
                    <td><select class="menu" name="menu-6" style="height: 30px;">
                        <option value="0">Select the menu</option>
                        <option value="1">Nasi Mandy Ayam</option>
                        <option value="2">Nasi Mandy Kambing</option>
                        <option value="3">Shawarma</option>
                        <option value="4">Nasi Mandy Ayam (Set Talam)</option>
                        <option value="5">Nasi Mandy Kambing (Set Talam)</option>
                        <option value="6">Nasi Mandy Ayam (Set Keluarga)</option>
                        <option value="7">Nasi Mandy Kambing (Set Keluarga)</option>
                        <option value="8">Nasi Mandy Ayam (Set Gantang)</option>
                        <option value="9">Nasi Mandy Kambing (Set Gantang)</option>
                        </select></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><input type="number" name="quantity" value="" style="height: 30px; width: 80px;"></td>
                </tr>
                <tr><td><br></td></tr>
                <tr>
                    <td><label><p>Choose Menu</b></label></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><label><p>Quantity</b></label></td>
                </tr>
                <tr>
                    <td><select class="menu" name="menu-7" style="height: 30px;">
                        <option value="0">Select the menu</option>
                        <option value="1">Nasi Mandy Ayam</option>
                        <option value="2">Nasi Mandy Kambing</option>
                        <option value="3">Shawarma</option>
                        <option value="4">Nasi Mandy Ayam (Set Talam)</option>
                        <option value="5">Nasi Mandy Kambing (Set Talam)</option>
                        <option value="6">Nasi Mandy Ayam (Set Keluarga)</option>
                        <option value="7">Nasi Mandy Kambing (Set Keluarga)</option>
                        <option value="8">Nasi Mandy Ayam (Set Gantang)</option>
                        <option value="9">Nasi Mandy Kambing (Set Gantang)</option>
                        </select></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><input type="number" name="quantity" value="" style="height: 30px; width: 80px;"></td>
                </tr>
                <tr><td><br></td></tr>
                <tr>
                    <td><label><p>Choose Menu</b></label></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><label><p>Quantity</b></label></td>
                </tr>
                <tr>
                    <td><select class="menu" name="menu-8" style="height: 30px;">
                        <option value="0">Select the menu</option>
                        <option value="1">Nasi Mandy Ayam</option>
                        <option value="2">Nasi Mandy Kambing</option>
                        <option value="3">Shawarma</option>
                        <option value="4">Nasi Mandy Ayam (Set Talam)</option>
                        <option value="5">Nasi Mandy Kambing (Set Talam)</option>
                        <option value="6">Nasi Mandy Ayam (Set Keluarga)</option>
                        <option value="7">Nasi Mandy Kambing (Set Keluarga)</option>
                        <option value="8">Nasi Mandy Ayam (Set Gantang)</option>
                        <option value="9">Nasi Mandy Kambing (Set Gantang)</option>
                        </select></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><input type="number" name="quantity" value="" style="height: 30px; width: 80px;"></td>
                </tr>
                <tr><td><br></td></tr>
                <tr>
                    <td><label><p>Choose Menu</b></label></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><label><p>Quantity</b></label></td>
                </tr>
                <tr>
                    <td><select class="menu" name="menu-9" style="height: 30px;">
                        <option value="0">Select the menu</option>
                        <option value="1">Nasi Mandy Ayam</option>
                        <option value="2">Nasi Mandy Kambing</option>
                        <option value="3">Shawarma</option>
                        <option value="4">Nasi Mandy Ayam (Set Talam)</option>
                        <option value="5">Nasi Mandy Kambing (Set Talam)</option>
                        <option value="6">Nasi Mandy Ayam (Set Keluarga)</option>
                        <option value="7">Nasi Mandy Kambing (Set Keluarga)</option>
                        <option value="8">Nasi Mandy Ayam (Set Gantang)</option>
                        <option value="9">Nasi Mandy Kambing (Set Gantang)</option>
                        </select></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><input type="number" name="quantity" value="" style="height: 30px; width: 80px;"></td>
                </tr>
                <tr>
                    <td><br></td>
                </tr>
        </table>
            
            <table>
            <h3>CUSTOMER SECTION</h3>
            <tr>
                <td><label>Name:&nbsp;</label></td>
                <td><input type="text" name="name" style="width:300px;"></td>
            </tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td><label>Address:&nbsp;</label></td>
                <td><input type="text" name="address" style="width:300px;"></td>
            </tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td><label>Phone No:&nbsp;</label></td>
                <td><input type="text" name="phoneNo" style="width:300px;"></td>
            </tr>
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <td><label>Date:&nbsp;</label></td>
                <td><input type="date" name="date" style="width:300px;"></td>
            </tr>
            <tr>
                <td><br></td>
            </tr>
            
            </table>
        
            <br><br>
            
            <label>Payment Method:&nbsp;</label><br>
            <input type="radio" value="method1" name="method">Online Banking&nbsp;
            <input type="radio" value="method2" name="method">Debit&nbsp;
            <input type="radio" value="method3" name="method">Cash    
            
            <br><br><br>
            <label>Do you want to charge for delivery?</label><br>
            <input type="radio" value="delivery1" name="del">YES&nbsp;
            <input type="radio" value="delivery2" name="del">NO
            <br><br>
            <input type="submit" value="Generate Invoice" style="width:300px; height:40px;">
    </center>
    </form>
</div>


<br><br><br><br><br>
<br><br>

<footer class="container-fluid text-center">
    <p>&copy; Hakcipta Terpelihara <strong>AL-Lazeez Nasi Arab</strong></p>  
</footer>

</body>
</html>


