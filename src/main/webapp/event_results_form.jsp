<%--
  Created by IntelliJ IDEA.
  User: NITRO5
  Date: 5/26/2022
  Time: 4:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
    <title>FunOlympics | Country Representatives </title>
    <link rel="icon" type="image/x-icon" href="assets/img/olympic-rings.png"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/plugins.css" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->

    <!--  BEGIN CUSTOM STYLE FILE  -->
    <link rel="stylesheet" type="text/css" href="plugins/table/datatable/datatables.css">
    <link rel="stylesheet" type="text/css" href="assets/css/ecommerce/view_customers.css">
    <!--  BEGIN CUSTOM STYLE FILE  -->

    <!-- BEGIN PAGE LEVEL STYLES -->
    <link href="plugins/popup/magnific-popup.css" rel="stylesheet" type="text/css" />
    <link href="plugins/popup/style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="plugins/mdl/material.css">
    <!-- END PAGE LEVEL STYLES -->

    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <link href="plugins/animate/animate.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/modals/component.css" rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL PLUGINS -->

    <!--  BEGIN CUSTOM STYLE FILE  -->
    <link href="assets/css/ui-kit/custom-modal.css" rel="stylesheet" type="text/css" />
    <!--  END CUSTOM STYLE FILE  -->

    <!--  BEGIN CUSTOM STYLE FILE  -->
    <style>
        .form-control {
            border: 1px solid #ccc;
            color: #888ea8;
            font-size: 15px;
        }
        .form-vertical .form-group .control-label { color: #3b3f5c; }
        label { color: #3b3f5c; margin-bottom: 14px; }
        .form-control::-webkit-input-placeholder { color: #888ea8; font-size: 15px; }
        .form-control::-ms-input-placeholder { color: #888ea8; font-size: 15px; }
        .form-control::-moz-placeholder { color: #888ea8; font-size: 15px; }
        .form-control:focus { border-color: #3862f5; }

        select.form-control {
            display: inline-block;
            width: 100%;
            height: calc(2.25rem + 2px);
            vertical-align: middle;
            background: #fff url(assets/img/arrow-down.png) no-repeat right .75rem center;
            background-size: 13px 14px;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
        }
    </style>
    <!--  BEGIN CUSTOM STYLE FILE  -->

    <!--  BEGIN CUSTOM STYLE FILE  -->
    <link href="plugins/multi-select/multi-select.css" rel="stylesheet" type="text/css">
    <style>
        .widget-content-area { padding: 20px 40px; }
    </style>
    <!--  END CUSTOM STYLE FILE  -->

    <!-- BEGIN THEME GLOBAL STYLES Date-->
    <link href="assets/css/design-css/design.css" rel="stylesheet" type="text/css" />
    <link href="plugins/date_time_pickers/bootstrap_date_range_picker/daterangepicker.css" rel="stylesheet" type="text/css">
    <link href="plugins/date_time_pickers/bootstrap-datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css">
    <link href="plugins/timepicker/jquery.timepicker.css" rel="stylesheet" type="text/css">
    <link href="plugins/date_time_pickers/custom_datetimepicker_style/custom_datetimepicker.css" rel="stylesheet" type="text/css">
    <!-- END THEME GLOBAL STYLES -->

    <!--  END CUSTOM STYLE FILE  -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>


</head>
<body>
<!-- Tab Mobile View Header -->
<header class="tabMobileView header navbar fixed-top d-lg-none">
    <ul class="navbar-nav flex-row ml-lg-auto w-100">
        <li class="nav-item dropdown user-profile-dropdown w-100 text-center">
            <div class="nav-toggle d-inline-block float-left mt-2">
                <a href="javascript:void(0);" class="nav-link sidebarCollapse d-inline-block" data-placement="bottom">
                    <i class="flaticon-menu-line-2"></i>
                </a>
                <a href="index.html" class="ml-3"> <img src="assets/img/logo-3.png" class="img-fluid" alt="logo"></a>
            </div>
            <a href="javascript:void(0);" class="nav-link dropdown-toggle user d-inline-block float-right" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <div class="media">
                    <img src="assets/img/90x90.jpg" class="img-fluid mr-2" alt="admin-profile">
                    <div class="media-body align-self-center">
                        <h6 class="mb-1">Alan Green</h6>
                        <p class="mb-0">UI/UX Designer</p>
                    </div>
                </div>
            </a>
            <div class="dropdown-menu p-0 mt-5" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item d-flex mt-5" href="user_profile.html">
                    <i class="mr-3 flaticon-user-11"></i> <span class="align-self-center">Profile</span>
                </a>
                <a class="dropdown-item d-flex" href="apps_scheduler.html">
                    <i class="mr-3 flaticon-calendar"></i> <span class="align-self-center">My Schedule</span>
                </a>
                <a class="dropdown-item d-flex" href="apps_mailbox.html">
                    <i class="mr-3 flaticon-mail-22"></i> <span class="align-self-center">Inbox</span>
                </a>
                <a class="dropdown-item d-flex" href="user_lockscreen_1.html">
                    <i class="mr-3 flaticon-lock-1"></i> <span class="align-self-center">Lock Screen</span>
                </a>
                <a href="user_login_1.html" class="dropdown-item dropdown-item-btn">
                    <i class="mr-2 flaticon-power-off"></i> <span class="align-self-center">Logout</span>
                </a>
            </div>
        </li>
    </ul>
</header>
<!-- Tab Mobile View Header -->


<!--  BEGIN NAVBAR  -->
<header class="desktop-nav header navbar fixed-top">
    <div class="nav-logo mr-5 ml-4 d-lg-inline-block d-none">
        <a href="index.html" class=""> <img src="assets/img/olympic-rings.png" class="img-fluid" alt="logo"></a>
    </div>
    <ul class="navbar-nav flex-row mr-auto">
        <li class="nav-item dropdown language-dropdown mr-5  d-lg-inline-block d-none">
            <a href="javascript:void(0);" class="nav-link dropdown-toggle" id="language-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <img src="assets/img/ca.png" alt="">
            </a>
            <div class="dropdown-menu position-absolute" aria-labelledby="language-dropdown">
                <a class="dropdown-item d-flex" href="javascript:void(0);"><img src="assets/img/de.png" class="flag-width mr-3" alt=""> <span class="align-self-center">&#xA0;German</span></a>
                <a class="dropdown-item d-flex" href="javascript:void(0);"><img src="assets/img/jp.png" class="flag-width mr-3" alt=""> <span class="align-self-center">&#xA0;Japanese</span></a>
                <a class="dropdown-item d-flex" href="javascript:void(0);"><img src="assets/img/fr.png" class="flag-width mr-3" alt=""> <span class="align-self-center">&#xA0;French</span></a>
                <a class="dropdown-item d-flex" href="javascript:void(0);"><img src="assets/img/ca.png" class="flag-width mr-3" alt=""> <span class="align-self-center">&#xA0;English</span></a>
            </div>
        </li>

        <li class="nav-item ml-4 d-lg-none">
            <form class="form-inline search-full form-inline search animated-search" role="search">
                <i class="flaticon-search-1 d-lg-none d-block"></i>
                <input type="text" class="form-control search-form-control  ml-lg-auto" placeholder="Search...">
            </form>
        </li>
    </ul>


    <ul class="navbar-nav flex-row ml-lg-auto">
        <li class="nav-item mr-5 d-lg-block d-none">
            <form class="form-inline form-inline search animated-search" role="search">
                <i class="flaticon-search-1 d-lg-none d-block"></i>
                <input type="text" class="form-control search-form-control  ml-lg-auto" placeholder="Search...">
            </form>
        </li>

        <li class="nav-item dropdown user-profile-dropdown mr-5  d-lg-inline-block d-none">
            <a href="javascript:void(0);" class="nav-link dropdown-toggle user" id="user-profile-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <div class="media">
                    <img src="UserImages/${userInfo.dp}" data-ce-placeholder="assets/img/90x90.jpg" class="img-fluid mr-2" alt="admin-profile">
                    <div class="media-body align-self-center">
                        <h6 class="mb-1">${userInfo.fullName}</h6>
                        <p class="mb-0">${userInfo.userType}</p>
                    </div>
                </div>
            </a>
        </li>

        <li style="cursor: pointer" class="nav-item dropdown cs-toggle ml-3 mr-lg-4">
            <a onclick="document.getElementById('logout').submit()">
                <span class="icon flaticon-log-3"></span>
            </a>
        </li>
    </ul>
    <form action="ServletLogin2" method="post" style="display: none">
        <input type="hidden" name="command" value="logout">
    </form>
</header>
<!--  END NAVBAR  -->

<!--  BEGIN MAIN CONTAINER  -->
<div class="main-container" id="container">
    <div class="overlay"></div>
    <div class="cs-overlay"></div>
    <div class="search-overlay"></div>

    <!--  BEGIN TOPBAR  -->
    <div class="topbar-nav header navbar fixed-top" role="banner">
        <div id="dismiss" class="d-lg-none text-right"><i class="flaticon-cancel-12 mr-3"></i></div>
        <nav id="topbar">
            <ul class="list-unstyled menu-categories d-lg-flex justify-content-lg-around mb-0" id="topAccordion">
                <li class="menu">
                    <a href="#dashboard" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <div class="">
                            <i class="flaticon-home-line"></i>
                            <span>Home</span>
                        </div>
                    </a>
                </li>

                <li class="menu">
                    <a href="${pageContext.request.contextPath}/EventForm.jsp">
                        <div class="">
                            <i class="flaticon-calendar-12"></i>
                            <span>Event</span>
                        </div>
                    </a>
                </li>
                <li class="menu">
                    <a href="${pageContext.request.contextPath}/event_results_form.jsp">
                        <div class="">
                            <i class="flaticon-calendar-12"></i>
                            <span>Event Results</span>
                        </div>
                    </a>
                </li>

                <li class="menu">
                    <a href="${pageContext.request.contextPath}/broadcast_form.jsp" >
                        <div class="">
                            <i class="flaticon-calendar-12"></i>
                            <span>Broadcasts</span>
                        </div>
                    </a>
                </li>

                <li class="menu">
                    <a href="${pageContext.request.contextPath}/medal_user.jsp" >
                        <div class="">
                            <i class="flaticon-cup"></i>
                            <span>Medals</span>
                        </div>
                    </a>
                </li>
                <li class="menu">
                    <a href="${pageContext.request.contextPath}/Country_representatives.jsp" >
                        <div class="">
                            <i class="flaticon-map-1"></i>
                            <span>Country Representatives</span>
                        </div>
                    </a>
                </li>
                <li class="menu">
                    <a href="${pageContext.request.contextPath}/allUserInfor.jsp">
                        <div class="">
                            <i class="flaticon-user-group"></i>
                            <span>Users</span>
                        </div>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
    <!--  END TOPBAR  -->


    <!--  BEGIN CONTENT PART  -->
    <div id="content" class="main-content">
        <div class="container">
            <div class="page-header">
                <div class="page-title">
                    <h3>View Broadcasts Available</h3>
                </div>
            </div>
            <div class="widget-content widget-content-area" style="float: right">
                <a class="btn btn-primary ml-2 mb-4 mt-2 flaticon-note-1" onclick="clearData()" data-toggle="modal" data-target="#formInputModal">Add</a>
            </div>

            <!-- Modal -->
            <div class="modal fade" id="formInputModal" tabindex="-1" role="dialog" aria-labelledby="formInputModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="formInputModalLabel">Event</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form method="post" action="ServletLogin2">
                            <div class="modal-body">

                                <input type="hidden" name="command" value="EventResults">
                                <input type="hidden" name="action" id="action" value="">
                                <input type="hidden" name="userType" value="${userInfo.userType}">
                                <input type="hidden" name="id" value="0" id="id">


                                <div class="form-group mb-4">
                                    <label for="athlete">Athlete</label>
                                    <select name="athlete" class="form-control" id="athlete">
                                        <c:forEach var="athlete" items="${allAthletes}">
                                            <option value="${athlete.id}">${athlete.fullName}</option>
                                        </c:forEach>
                                    </select>
                                </div>


                                <div class="form-group mb-4">
                                    <label for="event">Event</label>
                                    <select name="event" class="form-control" id="event">
                                        <c:forEach var="event" items="${eventInfo}">
                                            <option value="${event.id}">${event.event}</option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <div class="form-group mb-4">
                                    <label for="event">position</label>
                                    <input type="text" name="position" class="form-control" id="position" placeholder="">
                                </div>

                                <div class="form-group mb-4">
                                    <label for="medal">Medal</label>
                                    <select name="medal" class="form-control" id="medal">
                                        <option value="Gold">Gold</option>
                                        <option value="Silver">Silver</option>
                                        <option value="Bronze">Bronze</option>
                                        <option value="No Medal">No Medal</option>
                                    </select>
                                </div>

                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-primary btn-rounded mt-3 mb-3">Submit</button>
                                <button type="button" class="btn btn-dark btn-rounded mt-3 mb-3" data-dismiss="modal">Close</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>


            <div class="row" id="cancel-row">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 layout-spacing">
                    <div class="statbox widget box box-shadow">
                        <div class="widget-header">
                            <div class="row">
                                <div class="col-xl-12 col-md-12 col-sm-12 col-12">
                                    <h4>Events</h4>
                                </div>
                            </div>
                        </div>
                        <div class="widget-content widget-content-area">
                            <div class="table-responsive mb-4">
                                <table id="ecommerce-product-customers" class="table table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <th>record</th>
                                        <th>Name</th>
                                        <th>Sport</th>
                                        <th>Event</th>
                                        <th>Medal</th>
                                        <th>Position</th>
                                        <th>Country</th>
                                        <th style="display: none">id</th>
                                        <th style="display: none">iduser</th>
                                        <th style="display: none">idevent</th>
                                        <th style="display: none">medal</th>
                                        <th class="">Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:set var="countRepre" value="0" scope="page"/>
                                    <c:forEach var="results" items="${resultsInfo}">
                                        <c:set var="countRepre" value="${countRepre+1}" scope="page"/>
                                        <tr>
                                            <td class="checkbox-column"> ${results.id} </td>
                                            <td>
                                                <div class="d-flex">
                                                    <div class="usr-img-frame mr-2 rounded-circle">
                                                        <img alt="admin-profile" class="img-fluid rounded-circle" src="assets/img/90x90.jpg">
                                                    </div>
                                                    <p class="align-self-center mb-0"> ${results.fullName} </p>
                                                </div>
                                            </td>
                                            <td>${results.sport}</td>
                                            <td>${results.event}</td>
                                            <td>
                                                <div class="d-flex">
                                                    <div style="size: 1px">
                                                        <img alt="admin-profile" class="img-fluid " src="assets/img/${results.medal}.png">
                                                    </div>
                                                </div>
                                            </td>
                                            <td>${results.position}</td>
                                            <td>
                                                <div class="d-flex">
                                                    <div class="usr-img-frame mr-2 rounded-circle">
                                                        <img alt="admin-profile" class="img-fluid rounded-circle" src="assets/icons/${results.country.toLowerCase()}-circular.png">
                                                    </div>
                                                    <p class="align-self-center mb-0"> ${results.country} </p>
                                                </div>
                                            </td>
                                            <td style="display: none">${results.id}</td>
                                            <td style="display: none">${results.iduser}</td>
                                            <td style="display: none">${results.idevent}</td>
                                            <td style="display: none">${results.medal}</td>
                                            <td class="">
                                                <ul class="table-controls">
                                                    <li>
                                                        <a  data-toggle="modal" data-target="#formInputModal" id="${countRepre}" onclick="productDisplay(this)" data-placement="top" title="Edit">
                                                            <i class="flaticon-edit"></i>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);" class="warning confirm"  onclick="document.getElementById('delete_id').value='${results.id}'" data-toggle="tooltip" data-placement="top" title="Delete">
                                                            <i class="flaticon-delete-5"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>


                        </div>



                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--  END CONTENT PART  -->
</div>
<!-- END MAIN CONTAINER -->
<form style="display:none;" id="deletingRepresentative" method="post" action="ServletLogin2">
    <input type="hidden" name="command" value="deleteResults">
    <input type="hidden" name="userType" value="${userInfo.userType}">
    <input type="hidden" name="id" id="delete_id" value="">
</form>



<!--  BEGIN FOOTER  -->
<footer class="footer-section theme-footer">

    <div class="footer-section-1  sidebar-theme">

    </div>

    <div class="footer-section-2 container-fluid">
        <div class="row">
            <div id="toggle-grid" class="col-xl-7 col-md-6 col-sm-6 col-12 text-sm-left text-center">
                <ul class="list-inline links ml-sm-5">
                    <li class="list-inline-item mr-3">
                        <a href="javascript:void(0);">Home</a>
                    </li>
                    <li class="list-inline-item mr-3">
                        <a href="javascript:void(0);">Blog</a>
                    </li>
                    <li class="list-inline-item mr-3">
                        <a href="javascript:void(0);">About</a>
                    </li>
                    <li class="list-inline-item">
                        <a href="javascript:void(0);">Buy</a>
                    </li>
                </ul>
            </div>
            <div class="col-xl-5 col-md-6 col-sm-6 col-12">
                <ul class="list-inline mb-0 d-flex justify-content-sm-end justify-content-center mr-sm-3 ml-sm-0 mx-3">
                    <li class="list-inline-item  mr-3">
                        <p class="bottom-footer">&#xA9; 2019 <a target="_blank" href="https://designreset.com/equation">Equation Admin Theme</a></p>
                    </li>
                    <li class="list-inline-item align-self-center">
                        <div class="scrollTop"><i class="flaticon-up-arrow-fill-1"></i></div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</footer>
<!--  END FOOTER  -->


<!-- BEGIN GLOBAL MANDATORY STYLES -->
<script src="assets/js/libs/jquery-3.1.1.min.js"></script>
<script src="bootstrap/js/popper.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="plugins/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="assets/js/app.js"></script>

<script>
    $(document).ready(function() {
        App.init();
    });
</script>
<script src="assets/js/custom.js"></script>
<!-- END GLOBAL MANDATORY STYLES -->

<script>

    function productDisplay(ctl) {
        _row = $(ctl).parents("tr");
        var cols = _row.children("td");
        $("#id").val($(cols[7]).text());
        $("#athlete").val($(cols[8]).text());
        const $select2 = document.querySelector('#athlete');
        $select2.value = $(cols[8]).text();
        $("#event").val($(cols[9]).text());
        const $select1 = document.querySelector('#event');
        $select1.value = $(cols[9]).text();
        $("#position").val($(cols[4]).text().trim());
        $("#medal").val($(cols[10]).text());
        const $select = document.querySelector('#medal');
        $select.value = $(cols[10]).text();
        $("#action").val("updating");
    }
    function clearData(){
        $("#id").val('0');
        $("#athlete").val(null);
        $("#event").val(null);
        $("#position").val(null);
        $("#medal").val(null);
        $("#action").val("uploading");
    }



    let tableRowElement;
    function toggleModal(element) {


        tableRowElement = element.parentElement;
        const fullName = tableRowElement.getElementsByClassName('fullName')[0].innerHTML;
        const email = tableRowElement.getElementsByClassName('email')[0].innerHTML;
        const country = tableRowElement.getElementsByClassName('country')[0].innerHTML;

        document.getElementById('fullName').value = fullName;
        document.getElementById('email').value = email;
        document.getElementById('country').value = country;
        $("#country").selectpicker("refresh");
        document.getElementById('action').value = "updating";


    }

    var select = document.getElementById("sport");
    var select_location = document.getElementById("Venue");
    var location_Se=["National Aquatics Centre","National Indoor Stadium","Wukesong Sports Centre","National Speed Skating Oval","Capital Indoor Stadium","Big Air Shougang","National Sliding Centre","National Alpine Ski Centre","National Biathlon Centre","National Ski Jumping Centre","National Cross-Country Centre","Genting Snow Park"];


    var Sport = ["3x3 Basketball", "Acrobatic Gymnastic","Apline Skiing", "Archery", "Artistic Gymnastics", "Artistic Swimming","Athletics Swimming", "Athletics", "Badminton", "Baseball Softball", "Basketball","Beach handball", "Beach volleyball", " Biathlon", "BMX freestyle", "BMX racing", "Bobsleigh", "Boxing Breaking", "Canoe/Kayak flatwater", "Canoe/kayak slamo", "Cross-country skiing", "Curling, Diving", "Equestrian", "Fencing", "Figure skating", "Football", "Freestyle skiing", "Futsal", "Golf", "Handball", "Hockey", "Ice hockey", "Judo", "Karate", "Luge", "Marathon swimming", "Modern pentathlon", "Mountain bike",  "Nordic combined" , "Rhythmic gymnastics", "Road Cycling", "Roller speed skating", "Rowing", "Rugby", " Sailing, Shooting", "Short track speed racing", "skateboarding", "skeleton", " ski jumping", " ski mountaineering", "Snowboard", "speed skating", " sport climbing", "Surfing", "Swimming", "Table tennis", "Taekwondo", "Tennis", " Track cycling", "Trampoline", "Triathlon", "Volleyball", " Water polo", "Weight lifting","Wrestling"];
    for(var i = 0; i < Sport.length; i++) {
        var opt = Sport[i];
        var el = document.createElement("option");
        el.textContent = opt;
        el.value = opt;
        select.appendChild(el);
    }
    for(var i = 0; i < location_Se.length; i++) {
        var opt = location_Se[i];
        var el = document.createElement("option");
        el.textContent = opt;
        el.value = opt;
        select_location.appendChild(el);
    }



</script>

<!--  BEGIN CUSTOM SCRIPT FILES  -->
<script src="assets/js/libs/jquery-3.1.1.min.js"></script>
<script src="bootstrap/js/popper.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="plugins/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="plugins/blockui/jquery.blockUI.min.js"></script>
<script src="assets/js/app.js"></script>

<script src="plugins/table/datatable/datatables.js"></script>
<script>
    var product_customers = $('#ecommerce-product-customers').DataTable({
        "lengthMenu": [ 5, 10, 20, 50, 100 ],
        drawCallback: function( settings ) { $('[data-toggle="tooltip"]').tooltip(); },
        headerCallback:function(e, a, t, n, s) {
            e.getElementsByTagName("th")[0].innerHTML='<label class="new-control new-checkbox checkbox-primary m-auto">\n<input type="checkbox" class="new-control-input chk-parent select-customers-info" id="customer-all-info">\n<span class="new-control-indicator"></span><span style="visibility:hidden">c</span>\n</label>'
        },
        columnDefs:[ {
            targets:0, width:"30px", className:"", orderable:!1,render:function(e, a, t, n) {
                return'<label class="new-control new-checkbox checkbox-primary  m-auto">\n<input type="checkbox" class="new-control-input child-chk select-customers-info" id="customer-all-info">\n<span class="new-control-indicator"></span><span style="visibility:hidden">c</span>\n</label>'
            }
        }],
        "language": {
            "paginate": { "previous": "<i class='flaticon-arrow-left-1'></i>", "next": "<i class='flaticon-arrow-right'></i>" },
            "info": "Showing page _PAGE_ of _PAGES_"
        }
    });
    multiCheck(product_customers);
</script>
<!--  BEGIN CUSTOM SCRIPT FILES  -->

<!-- BEGIN PAGE LEVEL SCRIPTS pop up -->
<script src="plugins/mdl/material.min.js"></script>
<script src="plugins/popup/jquery.magnific-popup.min.js"></script>
<script src="plugins/popup/custom-maginfic-popup.js"></script>
<!-- END PAGE LEVEL SCRIPTS pop up-->

<!-- BEGIN THEME GLOBAL STYLE -->
<script src="plugins/sweetalerts/sweetalert2.min.js"></script>
<script src="plugins/sweetalerts/custom-sweetalert.js"></script>
<!-- END THEME GLOBAL STYLE -->

<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="assets/js/modal/classie.js"></script>
<script src="assets/js/modal/modalEffects.js"></script>
<!-- END PAGE LEVEL PLUGINS -->

<!--  BEGIN CUSTOM SCRIPT FILE  -->
<script>
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
        $('[data-toggle="popover"]').popover()
    })
    $('#yt-video-link').click(function () {
        var src = 'https://www.youtube.com/embed/YE7VzlLtp-4';
        $('#videoMedia1').modal('show');
        $('<iframe>').attr({
            'src': src,
            'width': '560',
            'height': '315',
            'allow': 'encrypted-media'
        }).css('border', '0').appendTo('#videoMedia1 .video-container');
    });
    $('#vimeo-video-link').click(function () {
        var src = 'https://player.vimeo.com/video/1084537';
        $('#videoMedia2').modal('show');
        $('<iframe>').attr({
            'src': src,
            'width': '560',
            'height': '315',
            'allow': 'encrypted-media'
        }).css('border', '0').appendTo('#videoMedia2 .video-container');
    });
    $('#videoMedia1 button, #videoMedia2 button').click(function () {
        $('#videoMedia1 iframe, #videoMedia2 iframe').removeAttr('src');
    });
</script>
<!--  END CUSTOM SCRIPT FILE  -->


<!--  BEGIN CUSTOM SCRIPTS FILE  -->
<script src="plugins/multi-select/jquery.multi-select.js"></script>
<script>
    $('#my-select').multiSelect();
</script>

<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="assets/js/design-js/design.js"></script>
<script src="plugins/date_time_pickers/bootstrap_date_range_picker/moment.min.js"></script>
<script src="plugins/date_time_pickers/bootstrap_date_range_picker/daterangepicker.js"></script>
<script src="plugins/timepicker/jquery.timepicker.js"></script>
<script src="plugins/date_time_pickers/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script src="plugins/date_time_pickers/bootstrap_date_range_picker/daterangepicker_examples.js"></script>
<script src="plugins/timepicker/custom-timepicker.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->

<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>

<script>
    flatpickr("input[type=datetime-local]", {});
</script>
</body>
</html>
