<%
if(session.getAttribute("adminid")==null)
{
response.sendRedirect("../login.jsp");
}
else
{
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