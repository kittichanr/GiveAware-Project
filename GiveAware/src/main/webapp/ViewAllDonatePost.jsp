<%-- 
    Document   : ViewAllDonatePost
    Created on : Feb 17, 2018, 5:00:49 PM
    Author     : aon_attapon
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.DonatePost"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        <%!
            public int nullIntconv(String str) {
                int conv = 0;
                if (str == null) {
                    str = "0";
                } else if ((str.trim()).equals("null")) {
                    str = "0";
                } else if (str.equals("")) {
                    str = "0";
                }
                try {
                    conv = Integer.parseInt(str);
                } catch (Exception e) {
                }
                return conv;
            }
        %>
        <nav class="navbar navbar-inverse" style="margin-bottom: 0;">
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

        <!-- ---------------------------- Body -------------------------------------->
        <div class="jumbotron" style="background-color: #FFFFFF; padding-top:0; padding-bottom: 0">
            <img src="https://www.cesarsway.com/sites/newcesarsway/files/styles/large_article_preview/public/Natural-Dog-Law-2-To-dogs%2C-energy-is-everything.jpg?itok=Z-ujUOUr" 
                 class="image-post" style="width: 100%; height: auto;">
        </div>

        <div>
            <h3 class="text-center" style="padding:0">เรียงลำดับตาม</h3>
        </div>

        <div class="container">
            <div class="form-group">
                <select class="form-control" id="sel1">
                    <option>วันล่าสุด</option>
                    <option>ยอดนิยม</option>
                </select>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-xs-6 col-sm-3">
                        <button type="button" class="btn btn-default btn-block" style="margin-top: 10px;">Button 2</button>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <button type="button" class="btn btn-default btn-block" style="margin-top: 10px;">Button 2</button>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <button type="button" class="btn btn-default btn-block" style="margin-top: 10px;">Button 2</button>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <button type="button" class="btn btn-default btn-block" style="margin-top: 10px;">Button 2</button>
                    </div>
                </div>
            </div>
        </div>

        <%
            List<DonatePost> fs = DonatePost.getAllDonatePost();
            if (fs != null) {
                for (DonatePost f : fs) {
                    request.setAttribute("f", f);
        %>
        <div class="container">
            <div class="container">
                <c:if test="${message!=null}">
                    <c:out value="${message}"></c:out>
                </c:if>
                <div class="row">


<!--<c:forEach items="${products}" var="p" varStatus="vs"> //JSTL TAG-->  
                    <div class="col-xs-12 col-sm-3 box-shadow"  style=" margin-top: 10px;">

                        <div class="col-xs-4 col-sm-12" style="height:100%; padding:0px;">
                            <img src="member/member picture/1.jpg" class="image-post"  width="100%" height="100%">
                        </div>

                        <div class="col-xs-8 col-sm-12">
                            <h4>${f.getThing_name()}</h4>
                            <h4>${f.getArea()}</h4>
                            <h4>${f.getProvince()}</h4>
                            <h4>${f.getDonator_id()}</h4>
                            <form action="">
                                <button type="button" class="btn btn-primary btn-xs" style="margin-bottom: 10px;">กดรับบริจาค</button>
                            </form>
                        </div>
                    </div>
                    <!--</c:foreach>-->

                </div>
            </div>

        </div><br>
        <%
                }
            }
        %>
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
