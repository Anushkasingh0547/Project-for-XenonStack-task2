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
                    <br/>

                    <h2 style="color:black; text-align:center; font-family: times ;"> <b>Add News & Events </b></h2>
                    <br/>
                    <form class="form-group" method="post" action="admincontroller.jsp">
                        <input type="hidden" name="page" value="news"/>
                        <table class="table table-bordered" style="width:60%; margin:auto;">
                            <tr>
                                <td>Enter News</td>
                                <td>
                                    <textarea name="newstext" class="form-control"></textarea>
                                </td>
                            </tr> 
                            <tr>
                                <td></td>
                                <td>
                                   &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp; &nbsp;  &nbsp;<button type="submit" class="btn btn-success" >Submit</button>
                                </td>

                            </tr>

                        </table>

                    </form>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <h2 style="text-align: center; color:black; font-family: times ;">News Management</h2>
                    <table class="table-bordered" style="width:80%; margin:auto;">
                        <tr>
                            <th>Id</th>
                            <th>News Text</th>
                            <th>Posted Date</th>
                        </tr>
                        <%
                        DbManager dm=new DbManager();
                        ResultSet rs=dm.select("Select * from news");
                        while(rs.next())
                        {
                         %>
                         <tr>
                             <td><%=rs.getInt("id")%></td>
                             <td><%=rs.getString("newstext")%></td>
                             <td><%=rs.getString("posteddate")%></td>
                             <td>
                                 <a href="deletenews.jsp?id=<%=rs.getInt("id")%>">
                                     <button class="btn btn-danger">Delete</button>
                                 </a>
                             </td>
                         </tr>
                       <% }
                        %>
                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6" style="background-color:gold; height: 80px; ">
                    <p style="margin-top:20px ">Copyright & COPY; to farmer merchant integration</p>

                </div>
                <div class="col-sm-6" style="background-color: black; height:80px;">
                    <p style="color: white; margin-top: 20px;">Developed By : Anushka Singh</p>
                </div>
            </div>

        </div>
    </body>
</html>
<%}%>