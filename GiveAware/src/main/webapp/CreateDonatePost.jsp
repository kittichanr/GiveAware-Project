<%-- 
    Document   : CreateDonatePost
    Created on : Feb 20, 2018, 9:42:01 PM
    Author     : Petch
--%>

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

        </style>
    </head>
    <body>
      
      <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

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
        <div class="container">
          <form>
            <div class="form-group">
              <h4>หัวข้อโพสต์</h4>
              <input type="text" class="form-control" id="topicpost" >
            </div>

        <!--บริเวณ -->
            <div class="form-group">
              <h4>บริเวณ</h4>
              <input type="text" class="form-control" id="area" >
            </div>
            <div class="form-group">
              <h4>จังหวัด</h4>
              <select class="form-control">
                <option value="" selected>--------- เลือกจังหวัด ---------</option>
              </select>
            </div>
            <div class="form-group">
              <h4>หมวดหมู่</h4>
              <select class="form-control">
                  <option>โปรดเลือก</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
              </select>
            </div>
            <div class="form-group">
              <h4>รายละเอียด</h4>
              <textarea class="form-control" rows="3"></textarea>
            </div>
            <div class="form-group">
              <h4>รูปภาพ</h4>
              <h6 style="color:red">*รูปที่คุณเลือกอันดับแรกจะเป็นหน้าปกโพสต์ของคุณ<h6>

                <div class="container">
                    <fieldset class="form-group">
                        <a href="javascript:void(0)" onclick="$('#pro-image').click()" class="glyphicon glyphicon-picture"></a>
                        <input type="file" id="pro-image" name="pro-image" style="display: none;" class="form-control" multiple>
                    </fieldset>
                    <div class="preview-images-zone">
                        <!-- <div class="preview-image preview-show-1">
                            <div class="image-cancel" data-no="1">x</div>
                            <div class="image-zone"><img id="pro-img-1" src="https://scontent.fbkk1-5.fna.fbcdn.net/v/t1.0-1/p240x240/19959271_1422340951164915_5064915005517635211_n.jpg?oh=d00714227f317f04f4733895087fca15&oe=5ACE9FFD"></div>
                            <div class="tools-edit-image"><a href="javascript:void(0)" data-no="1" class="btn btn-light btn-edit-image">edit</a></div>
                        </div> -->
                    </div>
              </div>
              <div>
                <div class="container">
                <center><button type="button" class="btn btn-primary">สร้างโพสต์</button></center>
              </div>
              </div>
          </form>

        </div>
        <div class="container">
            <p class="text-center">Give Aware</p>
        </div>






<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"> </script>

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


    $(document).ready(function() {
      document.getElementById('pro-image').addEventListener('change', readImage, false);

      $( ".preview-images-zone" ).sortable();

      $(document).on('click', '.image-cancel', function() {
          let no = $(this).data('no');
          $(".preview-image.preview-show-"+no).remove();
      });
  });

  var num = 4;
  function readImage() {
      if (window.File && window.FileList && window.FileReader) {
          var files = event.target.files; //FileList object
          var output = $(".preview-images-zone");

          for (let i = 0; i < files.length; i++) {
              var file = files[i];
              if (!file.type.match('image')) continue;

              var picReader = new FileReader();

              picReader.addEventListener('load', function (event) {
                  var picFile = event.target;
                  var html =  '<div class="preview-image preview-show-' + num + '">' +
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

