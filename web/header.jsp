<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<div class="row text-light p-2" style="background-color:  black;font-family: times;  ">
    <div class="col-sm-4">Helpline No- +91-6307046289</div>
    <div class="col-sm-4">Email Id- helpdesk@fmi.co.in</div>
    <div class="col-sm-4">Follow Us- </div>
</div>
<div class="row " style="color: black;">
    <nav class="navbar navbar-expand-lg bg-body-tertiary" style="font-family:  times roman;height:90px; background-color: black;">
        <div class="container-fluid" style="background-color: black;">


            <a class="navbar-brand" href="#" >
                <img src="images/logo2.jpg" alt="error" width="130px"  height="50px" />
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent" style="background-color: black;">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active text-light" aria-current="page" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active text-light" href="#">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active text-light" href="registration.jsp">Registration</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active text-light" href="login.jsp">Admin Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active text-light" href="contactus.jsp">Contact Us</a>
                    </li>

                </ul>
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
</div>

<div class="row  text-dark" style="border:1px solid ; height:50px; font-family: times; background-color:  yellow;">
    <marquee onmouseover="stop()" onmouseout="start()">

        <ul style="list-style-type: none;">

            <%
                DbManager dm = new DbManager();
                ResultSet rs = dm.select("select * from news");
                while (rs.next()) {
            %>   
            <li style="display:inline; padding:10px; font-size: 25px; font-style: bold; "><%=rs.getString("newstext")%></li>
                <%  }
                %>
        </ul>
    </marquee>
</div>

<div class="row mt-2">
    <div id="carouselExample" class="carousel slide">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/slider_2.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="images/slider_3.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="images/slider_1.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="images/slider_4.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="images/slider_5.jpg" class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>        
</div>