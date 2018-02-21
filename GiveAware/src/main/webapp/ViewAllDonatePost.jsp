<%-- 
    Document   : ViewAllDonatePost
    Created on : Feb 17, 2018, 5:00:49 PM
    Author     : pek
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.DonatePost"%>
<%@page import="java.util.List"%>
<%@page import="utils.ConnectionBuilder"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>GiveAware: Donate</title>
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
            .center {
                text-align: center;
            }

            .pagination {
                display: inline-block;
            }

            .pagination a {
                color: black;
                float: left;
                padding: 8px 16px;
                text-decoration: none;
                transition: background-color .3s;
                border: 1px solid #ddd;
                margin: 0 4px;
            }

            .pagination a.active {
                background-color: #4CAF50;
                color: white;
                border: 1px solid #4CAF50;
            }
        </style>
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
        <%

            Connection conn = null;
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn = ConnectionBuilder.getConnection();

            ResultSet rsPagination = null;
            ResultSet rsRowCnt = null;

            PreparedStatement psPagination = null;
            PreparedStatement psRowCnt = null;

            int iShowRows = 10;  // Number of records show on per page
            int iTotalSearchRecords = 10;  // Number of pages index shown

            int iTotalRows = nullIntconv(request.getParameter("iTotalRows"));
            int iTotalPages = nullIntconv(request.getParameter("iTotalPages"));
            int iPageNo = nullIntconv(request.getParameter("iPageNo"));
            int cPageNo = nullIntconv(request.getParameter("cPageNo"));

            int iStartResultNo = 0;
            int iEndResultNo = 0;

            if (iPageNo == 0) {
                iPageNo = 0;
            } else {
                iPageNo = Math.abs((iPageNo - 1) * iShowRows);
            }

            String sqlRowCnt = "SELECT FOUND_ROWS() as cnt";
            psRowCnt = conn.prepareStatement(sqlRowCnt);
            rsRowCnt = psRowCnt.executeQuery();

            if (rsRowCnt.next()) {
                iTotalRows = rsRowCnt.getInt("cnt");
            }
        %>
    </head>

    <body>

        <jsp:include page="/WEB-INF/JSP/Navbar_Home.jsp"/>
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
                        <button type="button" class="btn btn-default btn-block" style="margin-top: 10px;">ของบริจาค</button>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <button type="button" class="btn btn-default btn-block" style="margin-top: 10px;">ซื้องของ</button>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <button type="button" class="btn btn-default btn-block" style="margin-top: 10px;">บริจาคเงิน</button>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <button type="button" class="btn btn-default btn-block" style="margin-top: 10px;">ความต้องการ</button>
                    </div>
                </div>
            </div>
        </div>
        <form name="frm">
            <input type="hidden" name="iPageNo" value="<%=iPageNo%>">
            <input type="hidden" name="cPageNo" value="<%=cPageNo%>">
            <input type="hidden" name="iShowRows" value="<%=iShowRows%>">
            <div class="container">
                <%
                    List<DonatePost> DP = DonatePost.getAllDonatePost(iPageNo, iShowRows);
                    for (DonatePost donate : DP) {
                        request.setAttribute("donate", donate);
                %>
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-sm-3 box-shadow"  style=" margin-top: 10px;">
                            <div class="col-xs-4 col-sm-12" style="height:100%; padding:0px;">
                                <img src="donatepost/${donate.image_list_str}.jpg" class=""  width="100%" height="100%">
                            </div>
                            <div class="col-xs-8 col-sm-12">
                                <h5>${donate.thing_name}</h5>
                                <h5>${donate.area}</h5>
                                <h5>${donate.province.province_name}</h5>
                                <h5>${donate.donator.member_name} ${donate.donator.member_lastname}</h5>
                                <button type="button" class="btn btn-default btn-xs">กดรับบริจาค</button>
                            </div>
                        </div>
                        <%            }

                        %>
                    </div>
                </div>
            </div>
        </form>
        <%            //// calculate next record start record  and end record 
            try {
                if (iTotalRows < (iPageNo + iShowRows)) {
                    iEndResultNo = iTotalRows;
                } else {
                    iEndResultNo = (iPageNo + iShowRows);
                }

                iStartResultNo = (iPageNo + 1);
                iTotalPages = ((int) (Math.ceil((double) iTotalRows / iShowRows) - 1));

            } catch (Exception e) {
                e.printStackTrace();
            }

        %>
    <tr>
    <div class="center">
        <div class="pagination">
            <td colspan="3">
                <div>
                    <%    //// index of pages 
                        int i = 0;
                        int cPage = 0;
                        if (iTotalRows
                                != 0) {
                            cPage = ((int) (Math.ceil((double) iEndResultNo / (iTotalSearchRecords * iShowRows))));

                            int prePageNo = (cPage * iTotalSearchRecords) - ((iTotalSearchRecords - 1) + iTotalSearchRecords);
                            if ((cPage * iTotalSearchRecords) - (iTotalSearchRecords) > 0) {
                    %>
                    <a href="ViewAllDonatePost.jsp?iPageNo=<%=prePageNo%>&cPageNo=<%=prePageNo%>"> << Previous</a>
                    <%
                        }

                        for (i = ((cPage * iTotalSearchRecords) - (iTotalSearchRecords - 1)); i <= (cPage * iTotalSearchRecords); i++) {
                            if (i == ((iPageNo / iShowRows) + 1)) {
                    %>
                    <a href="ViewAllDonatePost.jsp?iPageNo=<%=i%>" style="cursor:pointer;color: red"><b><%=i%></b></a>
                            <%
                            } else if (i <= iTotalPages-1) {
                            %>
                    <a href="ViewAllDonatePost.jsp?iPageNo=<%=i%>"><%=i%></a>
                    <%
                            }
                        }
                        if (iTotalPages > iTotalSearchRecords && i < iTotalPages) {
                    %>
                    <a href="ViewAllDonatePost.jsp?iPageNo=<%=i%>&cPageNo=<%=i%>"> >> Next</a> 
                    <%
                            }
                        }
                    %>
                </div>
        </div>
    </div>

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
<%
    try {
        if (psPagination != null) {
            psPagination.close();
        }
        if (rsPagination != null) {
            rsPagination.close();
        }

        if (psRowCnt != null) {
            psRowCnt.close();
        }
        if (rsRowCnt != null) {
            rsRowCnt.close();
        }

        if (conn != null) {
            conn.close();
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>