<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%
    if (session.getAttribute("adminid") == null) {
        response.sendRedirect("../login.jsp");
    } else {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Farmer Merchant Integration</title>
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <script src="../js/bootstrap.bundle.js"></script>
        <link href="css/style.css" rel="stylesheet"/>

    </head>
    <body>
        <div class="container-fluid">
            <jsp:include page="header.jsp"/>
            <div class="row mt-2">
                <div class="col-sm-12" style="min-height: 600px; background-color: aliceblue"></div>
                <h2 style="color:black; text-align: center; font-family:times bold; ">Booking Form</h2>
                <%
                    String aadharno = session.getAttribute("ano").toString();
                    DbManager dm = new DbManager();
                    String query = "select * from farmerinfo where aadharno='"+aadharno+"'";
                    ResultSet rs = dm.select(query);
                    if (rs.next()) {
                %>
                <form class="form-group" method="post" action="admincontroller.jsp">
                    <input type="hidden" name="page" value="book"/>
                    <table class="table table-bordered" style="margin:auto; width:70%;">
                        <tr>
                            <td>Registration Id</td>
                            <td>
                                <input type="text" name="regid" value="<%=rs.getString("regid")%>" class="form-control" readonly/>
                            </td>
                        </tr>
                        <tr>
                            <td> Farmer Name</td>
                            <td>
                                <input type="text" name="name" value="<%=rs.getString("name")%>" class="form-control"readonly/> 
                            </td> 
                        </tr>
                        <tr>
                            <td>Village</td>
                            <td><input type="text" name="village" value="<%=rs.getString("village")%>" class="form-control" readonly/></td>
                        </tr>
                        <tr>
                            <td>Post</td>
                            <td><input type="text" name="post" value="<%=rs.getString("post")%>" class="form-control" readonly/></td>
                        </tr>
                        <tr>
                            <td>District</td>
                            <td><input type="text" name="district" value="<%=rs.getString("district")%>" class="form-control" readonly/></td>
                        </tr>
                        <tr>
                            <td>State</td>
                            <td><input type="text" name="state" value="<%=rs.getString("state")%>" class="form-control" readonly/></td>
                        </tr>
                        <tr>
                            <td>Pin Code</td>
                            <td><input type="text" name="pincode" value="<%=rs.getString("pincode")%>" class="form-control" readonly/></td>
                        </tr>
                        <tr>
                            <td>Contact no</td>
                            <td><input type="text" name="contactno" value="<%=rs.getString("contactno")%>" class="form-control" readonly/></td>
                        </tr>
                        <tr>
                            <td>Aadhaar No</td>
                            <td><input type="text" name="aadharno" value="<%=rs.getString("aadharno")%>" class="form-control" readonly/></td>
                        </tr>
                        <tr>
                            <td>Enter No of Packets</td>
                            <td><input type="number" required name="noofpacket" class="form-control"/></td>
                        </tr>
                        <tr>
                            <td>Enter duration in months</td>
                            <td><input type="number"required name="duration" class="form-control"/></td>
                        </tr>
                        <tr>
                            <td>Enter Rate</td>
                            <td><input type="number" required name="rate"class="form-control"/></td>
                        </tr>
                        <tr>
                            <td>Enter Advance Amount</td>
                            <td><input type="number" required name="advanceamt" class="form-control"/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <button type="submit" class="btn btn-success">Submit</button>
                            </td>
                        </tr>
                    </table>
                </form>

                <% } %>
                %>
            </div>
            <div class="row">
                <div class="col-sm-6" style="background-color:gold; height: 100px; ">
                    <p style="margin-top:20px ">Copyright & COPY; to farmer merchant integration</p>

                </div>
                <div class="col-sm-6" style="background-color: black; height:100px;">
                    <p style="color: white; margin-top: 20px;">Developed By : Anushka singh</p>
                </div>
            </div>

        </div>
    </body>
</html>
<%}%>