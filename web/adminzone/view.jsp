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
                <div class="col-sm-12" style="min-height: 600px; background-color: aliceblue">
                    <%
                        DbManager dm = new DbManager();
                        String ano = request.getParameter("ano");
                        String query = "select * from booking where aadharno='" + ano + "'";
                        ResultSet rs = dm.select(query);
                        if (rs.next() == true) {
                    %>


                    <table class="table table-bordered" style="width:60%; margin:auto;">
                        <tr>
                            <td>Registration Id</td>
                            <td><%=rs.getString("regid")%></td>
                        </tr>
                        <tr>
                            <td>Farmer Name</td>
                            <td><%=rs.getString("name")%></td>
                        </tr>
                        <tr>
                            <td>Village</td>
                            <td><%=rs.getString("village")%></td>
                        </tr>
                        <tr>
                            <td>Post</td>
                            <td><%=rs.getString("post")%></td>
                        </tr>
                        <tr>
                            <td>District</td>
                            <td><%=rs.getString("district")%></td>
                        </tr>
                        <tr>
                            <td>State</td>
                            <td><%=rs.getString("state")%></td>
                        </tr>
                        <tr>
                            <td>Pin Code</td>
                            <td><%=rs.getString("pincode")%></td>
                        </tr>
                        <tr>
                            <td>Contact No</td>
                            <td><%=rs.getString("contactno")%></td>
                        </tr>
                        <tr>
                            <td>Aadhaar No</td>
                            <td><%=rs.getString("aadharno")%></td>
                        </tr>
                        <tr>
                            <td>No of Packets</td>
                            <td><%=rs.getString("noofpacket")%></td>
                        </tr>
                        <tr>
                            <td>Duration</td>
                            <td><%=rs.getString("duration")%></td>
                        </tr>
                        <tr>
                            <td>Rate</td>
                            <td><%=rs.getString("rate")%></td>
                        </tr>
                        <tr>
                            <td>Total Amount</td>
                            <td><%=rs.getString("totalamt")%></td>
                        </tr>
                        <tr>
                            <td>Advance Amount</td>
                            <td><%=rs.getString("advanceamt")%></td>
                        </tr>
                        <tr>
                            <td>Rest Amount</td>
                            <td><%=rs.getString("restamt")%></td>
                        </tr>
                        <tr>
                            <td>Booking Date</td>
                            <td><%=rs.getString("bookingdate")%></td>
                        </tr>
                    </table>
                    <%} else {
                    %>

                    <h2 style="color:red; text-align:center ;">Booking is not available</h2>
                    <% } %>
                </div>
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