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
        <link href="css/style.css" rel="stylesheet"/>
        <script src="js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <div class="container">
            <jsp:include page="header.jsp"/>
            <div class="row mt-2">
                <div class="col-sm-4" style="min-height: 600px;background-color: aqua;"></div>
                <div class="col-sm-8" style="min-height: 600px;background-color: aliceblue;">
                    <br/>
                    <h2 style="text-align:center; color:darkslategray; font-family: times; "><b>Enquiry Form</b></h2>
                    <form class="form-group" method="post" action="controller.jsp">
                        <input type="hidden" name="page" value="contactus"/>
                        <table class="table" style="width:80%; margin:auto;">
                            <tr>
                                <td style="font-family: times ;">Enter Name</td>
                                <td>
                                    <input type="text" name="name" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family: times ;">Select Gender</td>
                                <td style="font-family: times ;">
                                    <input type="radio" name="gender" value="Male" class="form-check-input"/>Male
                                    <input type="radio" name="gender" value="Female" class="form-check-input"/>Female
                                    <input type="radio" name="gender" value="Others" class="form-check-input"/>Others
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family: times ;">Enter Address</td>
                                <td>
                                    <textarea name="address" class="form-control"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family: times ;">Contact No</td>
                                <td>
                                    <input type="number" name="contactno" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                            <td style="font-family: times ;">Enter Email Address</td>
                            <td>
                                <input type="text" name="emailaddress" class="form-control"/> 
                            </td>
                            </tr>
                            <tr>
                                <td style="font-family: times ;">Enter Enquiry Text</td>
                                <td>
                            <textarea name="enquirytext" class="form-control"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-success" style="font-family: times ; font-size: 15px;"><b>Submit</b></button>
                                </td>
                                
                            </tr>
                        </table>
                    </form>
                    
                    
                    
                </div>
            </div>
            <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>
