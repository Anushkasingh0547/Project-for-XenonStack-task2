<%-- 
    Document   : index
    Created on : Sep 10, 2023, 10:09:26 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Farmer Merchant Integration</title>  
        <link href="css/bootstrap.css" rel="stylesheet"/>
        <script src="js/bootstrap.bundle.js"></script>
    </head>
    <style>
        .container-fluid a:hover
        {
           background-color: gray;
           text-decoration-color: white;
        }
    </style>
    <body> 
        <div class="container-fluid">
            <jsp:include page="header.jsp"/>
            <div class="row mt-2">
                <div class="col-sm-4" style="min-height: 600px;background-color: black;">
                    <div class="card" style="width: 30rem;">
  <img src="images/slider_1.jpg" class="card-img-top" style="margin-top:10px;" alt="...">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
                    </div>
                    <div class="card" style="width: 30rem;">
  <img src="images/slider_2.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
                    <div class="card" style="width: 30rem;">
  <img src="images/slider_3.png" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
                </div>
                <div class="col-sm-8" style="min-height: 600px;background-color: black;">
                    <br/>
                    <br/>
                    <h2 style="text-align:center; color:  white; font-family: times; "><b>Admin Login</b></h2>
                    <form class="form-group" method="post" action="controller.jsp">
                        <input type="hidden" name="page" value="login"/>
                        <table class="table" style="width:50%; height:100px; margin:auto;">
                            <tr>
                                <td style="font-family: times ;">Enter User-Id</td>
                                <td>
                                    <input type="text" name="userid" class="form-control"/>
                                </td>
                            </tr>
                            <br/>
                           <br/>
                           
                            <tr>
                                <td style="font-family: times ;">Enter Password</td>
                                <td>
                                    <input type="password" name="password" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-success" style="font-family: times ; font-size: 15px;"><b>Login</b></button>
                                </td>
                                
                            </tr>
                        </table>
                </div>
            </div>
            <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
