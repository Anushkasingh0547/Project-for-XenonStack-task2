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
        <link href="../css/style.css" rel="stylesheet"/>
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
                <!--header section start-->
                <jsp:include page="header.jsp"/>
                <!--header section end-->
            <div class="row" >
                <div class="col-sm-4" style="min-height: 600px;background-color: black;">
                    <p>
  <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseWidthExample" aria-expanded="false" aria-controls="collapseWidthExample">
    Toggle width collapse
  </button>
</p>
<div style="min-height: 120px;">
  <div class="collapse collapse-horizontal" id="collapseWidthExample">
    <div class="card card-body" style="width: 400px;">
      This is some placeholder content for a horizontal collapse. It's hidden by default and shown when triggered.
    </div>
  </div>
</div>
<p>
  <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseWidthExample" aria-expanded="false" aria-controls="collapseWidthExample">
    Toggle width collapse
  </button>
</p>
<div style="min-height: 120px;">
  <div class="collapse collapse-horizontal" id="collapseWidthExample">
    <div class="card card-body" style="width: 400px;">
      This is some placeholder content for a horizontal collapse. It's hidden by default and shown when triggered.
    </div>
  </div>
</div>
<p>
  <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseWidthExample" aria-expanded="false" aria-controls="collapseWidthExample">
    Toggle width collapse
  </button>
</p>
<div style="min-height: 120px;">
  <div class="collapse collapse-horizontal" id="collapseWidthExample">
    <div class="card card-body" style="width: 400px;">
      This is some placeholder content for a horizontal collapse. It's hidden by default and shown when triggered.
    </div>
  </div>
</div>
                    
                </div>
                <div class="col-sm-8" style="min-height: 600px;background-color: black; width:1000px;">
                  <div id="l1" style="width:300px; float:left;">  <div class="card" style="width: 15rem;">
  <img src="images/slider_1.jpg" class="card-img-top" style="margin-top:20px;" alt="...">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
                    <div class="card" style="width: 15rem;">
  <img src="images/slider_2.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
                  </div>
                    <div id="l2" style="width:200px; float:left;">  <div class="card" style="width: 15rem;">
  <img src="images/slider_1.jpg" class="card-img-top" style="margin-top:20px;" alt="...">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
                    <div class="card" style="width: 15rem;">
  <img src="images/slider_2.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
                    </div>
                    
                </div>
            </div>
                <div class="row">
                    <h2 class="mt-2 text-center text-dark ">Products We Store.</h2>
<div class="row my-4 px-5">
	<div class="col-sm-2 tb">
		<div class="circle mx-auto">
			<img src="images/veg1.jpg" alt="" height="150px">
		</div>
	</div>
	<div class="col-sm-2 tb">
		<div class="circle mx-auto ">
		<img src="images/veg2.jpg" alt="" height="150px">
		</div>
	</div>
	<div class="col-sm-2 tb">
		<div class="circle mx-auto">
		<img src="images/veg3.jpg" alt="" height="150px">
		</div>
	</div>
	<div class="col-sm-2 tb">
		<div class="circle mx-auto">
		<img src="images/veg4.jpg" alt="" height="150px">
		</div>
	</div>
	<div class="col-sm-2 tb">
		<div class="circle mx-auto">
		<img src="images/fru4.jpg" alt="" height="150px">

                </div></div>
            <div class="col-sm-2 tb">
		<div class="circle mx-auto ">
		<img src="images/veg3.jpg" alt="" height="150px">
		</div>
	</div>
                
            <jsp:include page="footer.jsp"/>
        </div>
                </div>
    </body>
</html>
