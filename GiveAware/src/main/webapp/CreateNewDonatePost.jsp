<%-- 
    Document   : CreateDonatePost
    Created on : Feb 20, 2018, 9:42:01 PM
    Author     : Petch
--%>

<%@page import="model.Province"%>
<%@page import="java.util.List"%>
<%@page import="model.Category"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            .block {
                display: block;
                width: 120%;
                border: none;
                background-color: #4CAF50;
                color: white;
                padding: 14px 28px;
                font-size: 16px;
                cursor: pointer;
                text-align: center;
            }

            .block:hover {
                background-color: #ddd;
                color: black;
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
            /*-------------Preview image --------------  */
            .preview-images-zone {
                width: 100%;
                border: 1px solid #ddd;
                min-height: 180px;
                /* display: flex; */
                padding: 5px 5px 0px 5px;
                position: relative;
                overflow:auto;
            }
            .preview-images-zone > .preview-image:first-child {
                height: 90px;
                width: 90px;
                position: relative;
                margin-right: 5px;
            }
            .preview-images-zone > .preview-image {
                height: 90px;
                width: 90px;
                position: relative;
                margin-right: 5px;
                float: left;
                margin-bottom: 5px;
            }
            .preview-images-zone > .preview-image > .image-zone {
                width: 100%;
                height: 100%;
            }
            .preview-images-zone > .preview-image > .image-zone > img {
                width: 100%;
                height: 100%;
            }
            .preview-images-zone > .preview-image > .tools-edit-image {
                position: absolute;
                z-index: 100;
                color: #fff;
                bottom: 0;
                width: 100%;
                text-align: center;
                margin-bottom: 10px;
                display: none;
            }
            .preview-images-zone > .preview-image > .image-cancel {
                font-size: 18px;
                position: absolute;
                top: 0;
                right: 0;
                font-weight: bold;
                margin-right: 10px;
                cursor: pointer;
                display: none;
                z-index: 100;
            }
            .preview-image:hover > .image-zone {
                cursor: move;
                opacity: .5;
            }
            .preview-image:hover > .tools-edit-image,
            .preview-image:hover > .image-cancel {
                display: block;
            }
            .ui-sortable-helper {
                width: 90px !important;
                height: 90px !important;
            }

            .container {
                padding-top: 50px;
            }
            .modal-content{
                padding: 20px;
                text-align: center;
                font-size: 24px;
            }

        </style>
    </head>
    <body>

        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

        <jsp:include page="/WEB-INF/JSP/Navbar_Home.jsp"/>

        <!-- ---------------------------- Body -------------------------------------->
        <div class="jumbotron" style="background-color: #FFFFFF; padding-top:0; padding-bottom: 0">
            <center><h1 style="width: 100%; height: auto;"> สร้างโพสต์</h1></center>
        </div>
        <div class="row">
            <div class="col-xs-6 col-sm-6">
                <button class="block">ขายของ</button>
            </div>
            <div class="col-xs-6 col-sm-6">
                <button class="block">บริจาคสิ่งของ</button>
            </div>
        </div>
        <div>
            <center><h3><u>สร้างโพสต์บริจาคสิ่งของ</u></h3></center>
        </div>
        <!--หัวข้อโพสต์  -->
        <form action="CreateNewDonatePost">
            <input type="hidden" name="accountId" value="1">
            <input type="hidden" name="accountRoleId" value="1">
            <div class="container">
                <div class="form-group">
                    <h4>หัวข้อโพสต์</h4>
                    <input type="text" class="form-control" id="topicpost" name="topic">
                </div>

                <!--บริเวณ -->
                <div class="form-group">
                    <h4>บริเวณ</h4>
                    <input type="text" class="form-control" id="area" name="area">
                </div>
                <div class="form-group">
                    <h4>จังหวัด</h4>
                    <select name="province" class="form-control">
                        <%
                            List<Province> pv = Province.getAllProvince();
                            for (Province p : pv) {
                                request.setAttribute("p", p);
                        %>
                        <option value="${p.province_id}" >${p.province_name}</option>
                        <%}%>
                    </select>
                </div>
                <div class="form-group">
                    <h4>หมวดหมู่</h4>
                    <select name="category" class="form-control">
                        <%
                            List<Category> cg = Category.getAllCategory();
                            for (Category c : cg) {
                                request.setAttribute("c", c);
                        %>
                        <option value="${c.category_id}" >${c.category_name}  ${c.category_id}</option>
                        <%}%>
                    </select>
                </div>
                <div class="form-group">
                    <h4>รายละเอียด</h4>
                    <textarea class="form-control" rows="3" name="detail"></textarea>
                </div>
                <div class="form-group">
                    <h4>รูปภาพ</h4>
                    <h6 style="color:red">*รูปที่คุณเลือกอันดับแรกจะเป็นหน้าปกโพสต์ของคุณ</h6>

                    <div class="container">
                        <fieldset class="form-group">
                            <a href="javascript:void(0)" onclick="$('#pro-image').click()" class="glyphicon glyphicon-picture"></a>
                            <input type="file" id="pro-image" name="image" style="display: none;" class="form-control" multiple>
                        </fieldset>
                        <div class="preview-images-zone">
                            <!-- <div class="preview-image preview-show-1">
                                <div class="image-cancel" data-no="1">x</div>
                                <div class="image-zone"><img id="pro-img-1" src="https://scontent.fbkk1-5.fna.fbcdn.net/v/t1.0-1/p240x240/19959271_1422340951164915_5064915005517635211_n.jpg?oh=d00714227f317f04f4733895087fca15&oe=5ACE9FFD"></div>
                                <div class="tools-edit-image"><a href="javascript:void(0)" data-no="1" class="btn btn-light btn-edit-image">edit</a></div>
                            </div> -->
                        </div>
                    </div>
                    <div class="container">
                        <center><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">สร้างโพสต์</button></center>
                        <div class="modal fade" id="myModal" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>
                                    <div class="modal-body">
                                        <p>คุณต้องการสร้างโพสต์นี้ใช่หรือไม่</p>
                                    </div>
                                    <div class="mo-footer">
                                        <input type="hidden" name="donator_id" value="2">
                                        <button type="submit" class="btn btn-lg" data-toggle="modal" data-target="#myModal2">ยืนยัน</button>
                                        <button type="button" class="btn btn-lg" data-dismiss="modal">ยกเลิก</button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>


                </div>

            </div>
        </form>

        <div class="container">
            <p class="text-center">Give Aware</p>
        </div>






        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

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


                        $(document).ready(function () {
                            document.getElementById('pro-image').addEventListener('change', readImage, false);

                            $(".preview-images-zone").sortable();

                            $(document).on('click', '.image-cancel', function () {
                                let no = $(this).data('no');
                                $(".preview-image.preview-show-" + no).remove();
                            });
                        });

                        var num = 4;
                        function readImage() {
                            if (window.File && window.FileList && window.FileReader) {
                                var files = event.target.files; //FileList object
                                var output = $(".preview-images-zone");

                                for (let i = 0; i < files.length; i++) {
                                    var file = files[i];
                                    if (!file.type.match('image'))
                                        continue;

                                    var picReader = new FileReader();

                                    picReader.addEventListener('load', function (event) {
                                        var picFile = event.target;
                                        var html = '<div class="preview-image preview-show-' + num + '">' +
                                                '<div class="image-cancel" data-no="' + num + '">x</div>' +
                                                '<div class="image-zone"><img id="pro-img-' + num + '" src="' + picFile.result + '"></div>';
                                        // '<div class="tools-edit-image"><a href="javascript:void(0)" data-no="' + num + '" class="btn btn-light btn-edit-image">edit</a></div>' +
                                        // '</div>';

                                        output.append(html);
                                        num = num + 1;
                                    });

                                    picReader.readAsDataURL(file);
                                }
                                $("#pro-image").val('');
                            } else {
                                console.log('Browser not support');
                            }
                        }
        </script>
    </body>
</html>

