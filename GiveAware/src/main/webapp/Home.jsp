<%-- 
    Document   : Home
    Created on : Feb 15, 2018, 11:59:15 PM
    Author     : Petch
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            .navbar-right {
                padding-right: 1%;
            }
            .img-profile {
                margin-top: 5px;
            }
            .sidenav {
                height: 100%;
                width: 0;
                position: fixed;
                z-index: 1;
                top: 0;
                right: 0;
                background-color: #111;
                overflow-x: hidden;
                transition: 0.5s;
                padding-top: 60px;
            }

            .sidenav-left {
                height: 100%;
                width: 0;
                position: fixed;
                z-index: 1;
                top: 0;
                left: 0;
                background-color: #111;
                overflow-x: hidden;
                transition: 0.5s;
                padding-top: 60px;
            }

            .sidenav a {
                padding: 8px 8px 8px 32px;
                text-decoration: none;
                font-size: 25px;
                color: #818181;
                display: block;
                transition: 0.3s;
            }

            .sidenav-left a {
                padding: 8px 8px 8px 32px;
                text-decoration: none;
                font-size: 25px;
                color: #818181;
                display: block;
                transition: 0.3s;
            }

            .sidenav a:hover {
                color: #f1f1f1;
            }

            .sidenav-left a:hover {
                color: #f1f1f1;
            }

            .sidenav .closebtn {
                position: absolute;
                top: 0;
                right: 25px;
                font-size: 36px;
                margin-left: 50px;
            }

            .sidenav .closebtn .left{
                position: absolute;
                top: 0;
                right: 25px;
                font-size: 36px;
                margin-left: 50px;
            }

            .hamburger-right {
                color: #000000;
                background-color: #000000;
            }

            .navbar-inverse{
                /*background-color: #FFFFFF;*/
                border-color: #FFFFFF;
            }

            .jumbotron-slide {
                background-color: #FFFFFF;
            }

            .footer {
                position: fixed;
                left: 0;
                bottom: 0;
                width: 100%;
                color: #000000;
                text-align: center;
            }

            #main {
                transition: margin-left .5s;
                padding: 16px;
            }

            @media screen and (max-height: 450px) {
                .sidenav {padding-top: 15px;}
                .sidenav a {font-size: 18px;}
            }

            .box-shadow{
                box-shadow: 2px 2px 5px grey;
            }

        </style>
    </head>

    <body>

        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-xs-4">
                        <div class="navbar-header" >
                            <img onclick="openNavLeft()" 
                                 src="https://i.pinimg.com/736x/8a/37/d2/8a37d23c8349779fad20350bee046b2a--unique-senior-pictures-senior-photos-in-a-field.jpg" 
                                 class="img-circle img-profile" 
                                 alt="Cinque Terre" 
                                 width="40" height="40"> 
                        </div>
                    </div>

                    <div class="col-xs-4 text-center" style="text-align: center; color: white;padding: 11px">
                        <!-- <p class="navbar-text"  width="100%">Give Aware</p> -->
                        <span>
                            Give Aware

                        </span>
                    </div>

                    <div class="col-xs-4" align="right">
                        <div>
                            <span class="img-profile hamburgur-right" style="font-size:30px;cursor:pointer; color: #fff" onclick="openNav()" >&#9776;
                            </span>
                        </div>
                    </div>




                    <div id="mySidenav-left" class="sidenav-left">
                        <img href="/OldHome.jsp" 
                             src="https://i.pinimg.com/736x/8a/37/d2/8a37d23c8349779fad20350bee046b2a--unique-senior-pictures-senior-photos-in-a-field.jpg" 
                             class="img-circle img-profile text-center" 
                             alt="Cinque Terre" 
                             width="40" height="40"> 
                        <a href="javascript:void(0)" class="closebtn left" onclick="closeNavLeft()">&times;</a>
                        <a href="#">หน้าแรก</a>
                        <a href="#">โปรไฟล์ของฉัน</a>
                        <a href="#">แก้ไขข้อมูลส่วนตัว</a>
                        <a href="#">คำถามที่พบบ่อย</a>
                        <a href="#">ร้องเรียน</a>
                        <a href="#">ออกจากระบบ</a>
                    </div>

                    <div id="mySidenav" class="sidenav">
                        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                        <a href="#">About</a>
                        <a href="#">Services</a>
                        <a href="#">Clients</a>
                        <a href="#">Contact</a>
                    </div>
                </div>
            </div>
        </nav>
        <!-- body -->

        <div>
            <div class="col-sm-12">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <div class="well well-sm text-center" style="background-color:grey; color: white; width:30%; margin:0 auto">ข่าวสาร</div>
                </div>
                <div class="col-sm-4"></div>
            </div>
        </div><br>

        <div class="jumbotron-slide">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators" >
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">

                    <div class="item active">
                        <img src="https://twistedsifter.files.wordpress.com/2016/07/dulmen_bornste_waldweg.jpg" alt="Los Angeles" style="width:100%; margin-top: 10px;">
                        <div class="carousel-caption">
                            <h3>ข่าวสาร 1</h3>
                            <p>ข้อความข่าวสาร 1</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="https://twistedsifter.files.wordpress.com/2016/07/dulmen_bornste_waldweg.jpg" alt="Chicago" style="width:100%; margin-top: 10px;">
                        <div class="carousel-caption">
                            <h3>ข่าวสาร 2</h3>
                            <p>ข้อความข่าวสาร 2</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="https://twistedsifter.files.wordpress.com/2016/07/dulmen_bornste_waldweg.jpg" alt="New York" style="width:100%; margin-top: 10px;">
                        <div class="carousel-caption">
                            <h3>ข่าวสาร 3 </h3>
                            <p>ข้อความข่าวสาร 3</p>
                        </div>
                    </div>

                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div><br>

        <div>
            <div class="col-sm-12">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <div class="well well-sm text-center" style="background-color:grey; color: white; width:60%; margin:0 auto">การส่งมอบเงินบริจาค</div>
                </div>
                <div class="col-sm-4"></div>
            </div>
        </div><br>

        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-4">
                    <a href=""><div class="well well-lg text-center" style=" width:100%; margin:0 auto; margin-top: 10px;">เดือน พฤศจิกายน พ.ศ. 2560</div></a>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <a href=""><div class="well well-lg text-center" style=" width:100%; margin:0 auto; margin-top: 10px;">เดือน ตุลาคม พ.ศ. 2560</div></a>
                </div>
                <div class="col-xs-12 col-sm-4">
                    <a href=""><div class="well well-lg text-center" style=" width:100%; margin:0 auto; margin-top: 10px;">เดือน กันยายน พ.ศ. 2560</div></a>
                </div>
            </div>
        </div><br>

        <div>
            <div class="col-sm-12">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <div class="well well-sm text-center" style="background-color:grey; color: white; width:50%; margin:0 auto">หมวดหมู่</div>
                </div>
                <div class="col-sm-4"></div>
            </div>
        </div><br>

        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-3">
                    <form action="">
                        <button type="button" class="btn btn-default btn-lg btn-block" style="background-size: cover;background-repeat: no-repeat; background-image: url(http://www.andrasiova.cz/images/pexels-photo-259165070612.jpeg); width:100%; height: 100%; margin:0 auto; margin-bottom: 10px; margin-top: 10px;">ของบริจาค</button>
                    </form>

                </div>
                <div class="col-xs-12 col-sm-3">
                    <form action="">
                        <button type="button" class="btn btn-default btn-lg btn-block" style="background-size: cover;background-repeat: no-repeat; background-image: url(https://www.cesarsway.com/sites/newcesarsway/files/styles/large_article_preview/public/Natural-Dog-Law-2-To-dogs%2C-energy-is-everything.jpg?itok=Z-ujUOUr);  width:100%; height: 100%; margin:0 auto; margin-bottom: 10px; margin-top: 10px;">ซื้อของ</button>
                    </form>
                </div>
                <div class="col-xs-12 col-sm-3">
                    <form action="">
                        <button type="button" class="btn btn-default btn-lg btn-block" style="background-size: cover;background-repeat: no-repeat; background-image: url(https://www.cesarsway.com/sites/newcesarsway/files/styles/large_article_preview/public/Natural-Dog-Law-2-To-dogs%2C-energy-is-everything.jpg?itok=Z-ujUOUr);  width:100%; height: 100%; margin:0 auto; margin-bottom: 10px; margin-top: 10px;">บริจาคเงิน</button>
                    </form>
                </div>
                <div class="col-xs-12 col-sm-3">
                    <form action="">
                        <button type="button" class="btn btn-default btn-lg btn-block" style="background-size: cover;background-repeat: no-repeat; background-image: url(https://www.cesarsway.com/sites/newcesarsway/files/styles/large_article_preview/public/Natural-Dog-Law-2-To-dogs%2C-energy-is-everything.jpg?itok=Z-ujUOUr);  width:100%; height: 100%; margin:0 auto; margin-bottom: 10px; margin-top: 10px;">ความต้องการ</button>
                    </form>
                </div>
            </div>
        </div><br><br>

        <div class="container">
            <p class="text-center">Give Aware</p>
        </div>

        <script>
            function openNav() {
                document.getElementById("mySidenav").style.width = "250px";
                document.getElementById("main").style.marginLeft = "250px";
                document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
            }

            function openNavLeft() {
                document.getElementById("mySidenav-left").style.width = "250px";
                document.getElementById("main").style.marginLeft = "250px";
                document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
            }

            function closeNavLeft() {
                document.getElementById("mySidenav-left").style.width = "0";
                document.getElementById("main").style.marginLeft = "0";
                document.body.style.backgroundColor = "white";
            }

            function closeNav() {
                document.getElementById("mySidenav").style.width = "0";
                document.getElementById("main").style.marginLeft = "0";
                document.body.style.backgroundColor = "white";
            }
        </script>
    </body>
</html>

