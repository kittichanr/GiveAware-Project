<%-- 
    Document   : Navbar_Home
    Created on : Feb 19, 2018, 4:39:09 PM
    Author     : aon_attapon
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                        <a href="ShowCreateDonatePost">สร้างโพสต์</a>
                        <a href="#">การแจ้งเตือน</a>
                        <a href="#">โพสต์ที่เก็บไว้</a>
                        <a href="#">ประวัติการขายของ</a>
                        <a href="#">ประวัติการซื้อของ</a>
                        <a href="#">ประวัติการรับของ</a>
                        <a href="#">ประวัติการบริจาคสิ่งของ</a>
                        <a href="#">ประวัติการบริจาคเงิน</a>
                    </div>
                </div>
            </div>
        </nav>
    </body>
</html>
