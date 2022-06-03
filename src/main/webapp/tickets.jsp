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

    <!--  BEGIN CUSTOM STYLE/SCRIPTS FILE  -->
    <script src="plugins/sweetalerts/promise-polyfill.js"></script>
    <link rel="stylesheet" type="text/css" href="plugins/jquery-step/jquery.steps.css">
    <link href="assets/css/ecommerce/ecommerce-wizards.css" rel="stylesheet" type="text/css">
    <link href="plugins/sweetalerts/sweetalert2.min.css" rel="stylesheet" type="text/css" />
    <link href="plugins/sweetalerts/sweetalert.css" rel="stylesheet" type="text/css" />
    <!--  BEGIN CUSTOM STYLE/SCRIPTS FILE  -->

    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <link href="plugins/animate/animate.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/modals/component.css" rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL PLUGINS -->

    <!--  BEGIN CUSTOM STYLE FILE  -->
    <link href="assets/css/ui-kit/custom-modal.css" rel="stylesheet" type="text/css" />
    <!--  END CUSTOM STYLE FILE  -->
    <style>
        .logob{
            margin: 40px 0px 10px 50px;
        }
    </style>


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

        <li class="nav-item dropdown app-dropdown">
            <a href="javascript:void(0);" class="nav-link dropdown-toggle" id="app-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="flaticon-star-circle-line"></span>
            </a>
            <div class="dropdown-menu  position-absolute" aria-labelledby="app-dropdown">
                <a class="dropdown-item d-flex" href="apps_drag_n_drop_calendar.html">
                    <i class="mr-3 flaticon-calendar-1"></i><span>Calendar</span>
                </a>
                <a class="dropdown-item d-flex" href="dragndrop_scrumboard.html">
                    <i class="mr-3 flaticon-edit-3"></i><span>Scrumboard</span>
                </a>
                <a class="dropdown-item d-flex" href="pages_helpdesk.html">
                    <i class="mr-3 flaticon-copy"></i><span>Helpdesk</span>
                </a>
                <a class="dropdown-item d-flex" href="pages_contact_us.html">
                    <i class="mr-3 flaticon-location-1"></i><span>Contact Us</span>
                </a>
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
            <div class="dropdown-menu  position-absolute p-0" aria-labelledby="user-profile-dropdown">
                <div class="dropdown-item d-flex justify-content-around">
                    <p class="mb-0 align-self-center">Your Account</p>
                    <div class="">
                        <i class="flaticon-star-outline"></i>
                    </div>
                </div>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item d-flex" href="user_profile.html">
                    <i class="mr-3 flaticon-user-11"></i> <span class="align-self-center">Profile Setting</span>
                </a>
                <a class="dropdown-item d-flex" href="apps_scheduler.html">
                    <i class="mr-3 flaticon-calendar"></i> <span class="align-self-center">Schedule</span>
                </a>
                <a class="dropdown-item d-flex" href="apps_mailbox.html">
                    <i class="mr-3 flaticon-mail-22"></i> <span class="align-self-center">Inbox</span>
                </a>
                <a class="dropdown-item d-flex" href="user_lockscreen_1.html">
                    <i class="mr-3 flaticon-lock-1"></i> <span class="align-self-center">Lock Screen</span>
                </a>

                <div class="dropdown-item dropdown-item-btn d-flex justify-content-around">
                    <a class="" href="user_login_1.html">
                        <i class="mr-2 flaticon-power-off"></i> <span class="align-self-center">Logout</span>
                    </a>
                </div>
            </div>
        </li>

        <li class="nav-item dropdown message-dropdown ml-lg-4 mr-lg-4">
            <a href="javascript:void(0);" class="nav-link dropdown-toggle" id="message-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="icon flaticon-mail-1"></span><span class="badge badge-primary">13</span>
            </a>
            <div class="dropdown-menu  position-absolute p-0" aria-labelledby="message-dropdown">
                <div class="dropdown-item dropdown-header d-flex justify-content-between">
                    <p class="mb-0 align-self-center">You have 13 new messages</p>
                    <div class="">
                        <i class="flaticon-chat-bubble"></i>
                    </div>
                </div>
                <div class="dropdown-divider"></div>
                <div class="message-scroll">
                    <div class="dropdown-item">
                        <div class="">
                            <div class="media">
                                <div class="usr-img online mr-3">
                                    <img class="usr-img rounded-circle" src="assets/img/90x90.jpg" alt="profile">
                                </div>
                                <div class="media-body">
                                    <div class="d-flex">
                                        <p class="meta-user-name mr-3">Kara Young</p>
                                        <p class="meta-time align-self-center mb-1">2 mins ago</p>
                                    </div>
                                    <p class="message-text mb-0 ">Simple and clean! Nice I'd like to </p>
                                    <a href="javascript:void(0);" class="see-more">See More</a>
                                </div>
                            </div>
                            <div class="d-flex justify-content-between dropdown-action">
                                <a href="javascript:void(0);" class="">View Details</a>
                                <i class="flaticon-delete"></i>
                            </div>
                        </div>
                    </div>
                    <div class="dropdown-item">
                        <div class="">
                            <div class="media">
                                <div class="usr-img online mr-3">
                                    <img class="usr-img rounded-circle" src="assets/img/90x90.jpg" alt="profile">
                                </div>
                                <div class="media-body">
                                    <div class="d-flex">
                                        <p class="meta-user-name mr-3">Oscar Garner</p>
                                        <p class="meta-time align-self-center mb-1">5 mins ago</p>
                                    </div>
                                    <p class="message-text mb-0 ">Simple and clean! Nice I'd like to </p>
                                    <a href="javascript:void(0);" class="see-more">See More</a>
                                </div>
                            </div>
                            <div class="d-flex justify-content-between dropdown-action">
                                <a href="javascript:void(0);" class="">View Details</a>
                                <i class="flaticon-delete"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer dropdown-item text-center">
                    <a class="btn btn-info my-3 btn-rounded" href="javascript:void(0);">More...</a>
                </div>
            </div>
        </li>

        <li class="nav-item dropdown notification-dropdown ml-3 mr-lg-4">
            <a href="javascript:void(0);" class="nav-link dropdown-toggle" id="notification-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="icon flaticon-bell-24"></span><span class="badge badge-success">15</span>
            </a>
            <div class="dropdown-menu position-absolute p-0" aria-labelledby="notification-dropdown">
                <div class="dropdown-item dropdown-header d-flex justify-content-between">
                    <p class="mb-0 align-self-center">Notifications</p>
                    <div class="">
                        <i class="flaticon-gear-1"></i>
                    </div>
                </div>
                <div class="dropdown-divider"></div>
                <div class="notification-scroll">
                    <div class="dropdown-item">
                        <div class="">
                            <div class="d-flex dropdown-action justify-content-between">
                                <span class="badge badge-info mb-3">6 Request</span>
                                <i class="flaticon-cancel-12"></i>
                            </div>
                            <p class="notification-text"><span class="meta-usrname">Kara Young</span>, <span class="meta-usrname">Xavier</span>, <span class="meta-usrname">Lila Perry</span> and <span class="meta-usrname">3 others</span> send a friend request.</p>
                            <p class="meta-time">6 mins ago</p>
                        </div>
                    </div>
                    <div class="dropdown-item">
                        <div class="">
                            <div class="d-flex dropdown-action justify-content-between">
                                <span class="badge badge-primary mb-3">Invoice</span>
                                <i class="flaticon-cancel-12"></i>
                            </div>
                            <p class="notification-text"> <span class="meta-usrname">Shaun</span>, <span class="meta-usrname">Amy Diaz</span> and <span class="meta-usrname">3 others</span> send a friend request.</p>
                            <p class="meta-time">10 mins ago</p>
                        </div>
                    </div>
                    <div class="dropdown-item">
                        <div class="">
                            <div class="d-flex dropdown-action justify-content-between">
                                <span class="badge badge-secondary mb-3">Task</span>
                                <i class="flaticon-cancel-12"></i>
                            </div>
                            <p class="notification-text"><span class="meta-usrname">Marry McDonald</span>, <span class="meta-usrname">Shaun Park</span>, <span class="meta-usrname">Kara</span> and <span class="meta-usrname">3 others</span> send a friend request.</p>
                            <p class="meta-time">1 hour ago</p>
                        </div>
                    </div>
                </div>
            </div>
        </li>

        <li class="nav-item dropdown cs-toggle ml-3 mr-lg-4">
            <a onclick="document.getElementById('logout').submit()">
                <span class="icon flaticon-log-3"></span>
            </a>
        </li>
    </ul>
    <form action="ServletLogin2" id="logout" method="post" style="display: none">
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
                    <a href="schedule.jsp" >
                        <div class="">
                            <i class="flaticon-home-line"></i>
                            <span>Home</span>
                        </div>
                    </a>
                </li>

                <li class="menu">
                    <a href="results.jsp" >
                        <div class="">
                            <i class="flaticon-calendar-12"></i>
                            <span>Event Results</span>
                        </div>
                    </a>
                </li>

                <li class="menu">
                    <a href="medals.jsp" >
                        <div class="">
                            <i class="flaticon-cup"></i>
                            <span>Medals</span>
                        </div>
                    </a>
                </li>

                <li class="menu">
                    <a href="athletes.jsp">
                        <div class="">
                            <i class="flaticon-user-group"></i>
                            <span>Athletes</span>
                        </div>
                    </a>
                </li>

                <li class="menu">
                    <a href="tickets.jsp">
                        <div class="">
                            <i class="flaticon-credit-card-1"></i>
                            <span>Buy Ticket</span>
                        </div>
                    </a>
                </li>
                <li class="menu">
                    <a href="volunteers.jsp">
                        <div class="">
                            <i class="flaticon-heart-1"></i>
                            <span>Volunteer</span>
                        </div>
                    </a>
                </li>

                <c:if test="${userInfo.userType=='Representatives'}">
                    <li class="menu">
                        <a href="athletes_form.jsp">
                            <div class="">
                                <i class="flaticon-user-group"></i>
                                <span>Athletes Form</span>
                            </div>
                        </a>
                    </li>
                </c:if>

            </ul>
        </nav>
    </div>
    <!--  END TOPBAR  -->

    <!--  BEGIN CONTENT PART  -->
    <div id="content" class="main-content">
        <div class="container">
            <div class="page-header">
                <div class="page-title">
                    <h3>Tickets</h3>
                </div>
            </div>

            <div class="row margin-bottom-120" id="cancel-row">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="statbox widget box box-shadow" id="form_wizard">
                        <div class="widget-header">
                            <div class="row">
                                <div class="col-xl-12 col-md-12 col-sm-12 col-12">
                                    <h4>Tickets Payment <span class="step-title"></span></h4>
                                </div>
                            </div>
                        </div>
                        <div class="widget-content widget-content-area">
                            <div id="circle-basic" class="mt-5 mb-5">
                                <h3>
                                        <span class="icon">
                                            <i class="done flaticon-double-check" style="display: none;"></i>
                                            <i class="active flaticon-placeholder-fill" style="display: none"></i>
                                        </span>
                                    <span class="mt-3">Address & sport</span>
                                </h3>
                                <section>
                                    <h5 class="mt-5 mb-5 w-title">Address</h5>
                                    <form>
                                        <div class="row">
                                            <div class="col-sm-6 col-12">
                                                <input type="text" class="form-control mt-3 mb-5" placeholder="Postcode">
                                            </div>
                                            <div class="col-sm-6 col-12">
                                                <input type="text" class="form-control mt-3 mb-5" placeholder="Sport">
                                            </div>
                                            <div class="col-sm-6 col-12">
                                                <input type="text" class="form-control mt-3 mb-5" placeholder="State/Region">
                                            </div>
                                            <div class="col-sm-6 col-12">
                                                <input type="text" class="form-control mt-3 mb-5" placeholder="Ticket plan">
                                            </div>
                                            <div class="col-sm-6 col-12">
                                                <input type="text" class="form-control mt-3 mb-5" placeholder="Phone">
                                            </div>
                                            <div class="col-sm-6 col-12">
                                                <input type="text" class="form-control mt-3 mb-5" placeholder="Number of pupils">
                                            </div>
                                        </div>
                                    </form>
                                </section>
                                <h3>
                                        <span class="icon">
                                            <i class="done flaticon-double-check" style="display: none;"></i>
                                            <i class="active flaticon-document-3" style="display: none"></i>
                                        </span>
                                    <span class="mt-3">Order Ticket</span>
                                </h3>
                                <section>
                                    <h5 class="mt-5 mb-5 w-title">Order</h5>
                                    <div class="row">
                                        <div class="col-xl-4 col-12">
                                            <div class="total-amount text-center">
                                                <i class="flaticon-cart-bag-1"></i>
                                            </div>
                                        </div>
                                        <div class="col-xl-8 col-12 mt-xl-0 mt-4">
                                            <div class="order-product-list">

                                                <div class="form-group mb-4">
                                                    <label for="sport">Sport</label>
                                                    <select name="sport" class="form-control" id="sport">

                                                    </select>
                                                </div>

                                                <div class="form-group mb-4">
                                                    <label for="Ticket_price">Ticket type</label>
                                                    <select name="sport" onchange="vip()" class="form-control" id="Ticket_price">
                                                        <option value="P 1 000">VIP</option>
                                                        <option value="P 500">First Class</option>
                                                        <option value="P 350">Second Class</option>
                                                    </select>
                                                </div>


                                                <div class="form-group mb-4">
                                                    <label for="Ticket_price">Ticket type</label>
                                                    <select name="sport" onchange="vip()"  class="form-control" id="Ticket_Number">
                                                        <option>1</option>
                                                        <option>2</option>
                                                        <option>5</option>
                                                    </select>
                                                </div>

                                                <br>
                                                <p>Total : </p><p id="info"> </p>
                                            </div>
                                            <script>
                                                var select = document.getElementById('Ticket_price');
                                                var select2 = document.getElementById('Ticket_Number');

                                                function vip(){
                                                    document.getElementById('info').innerHTML=select.value+' x '+select2.value;

                                                }
                                                var select22 = document.getElementById("sport");
                                                var Sport = ["3x3 Basketball", "Acrobatic Gymnastic","Apline Skiing", "Archery", "Artistic Gymnastics", "Artistic Swimming","Athletics Swimming", "Athletics", "Badminton", "Baseball Softball", "Basketball","Beach handball", "Beach volleyball", " Biathlon", "BMX freestyle", "BMX racing", "Bobsleigh", "Boxing Breaking", "Canoe/Kayak flatwater", "Canoe/kayak slamo", "Cross-country skiing", "Curling, Diving", "Equestrian", "Fencing", "Figure skating", "Football", "Freestyle skiing", "Futsal", "Golf", "Handball", "Hockey", "Ice hockey", "Judo", "Karate", "Luge", "Marathon swimming", "Modern pentathlon", "Mountain bike",  "Nordic combined" , "Rhythmic gymnastics", "Road Cycling", "Roller speed skating", "Rowing", "Rugby", " Sailing, Shooting", "Short track speed racing", "skateboarding", "skeleton", " ski jumping", " ski mountaineering", "Snowboard", "speed skating", " sport climbing", "Surfing", "Swimming", "Table tennis", "Taekwondo", "Tennis", " Track cycling", "Trampoline", "Triathlon", "Volleyball", " Water polo", "Weight lifting","Wrestling"];
                                                for(var i = 0; i < Sport.length; i++) {
                                                    var opt = Sport[i];
                                                    var el = document.createElement("option");
                                                    el.textContent = opt;
                                                    el.value = opt;
                                                    select22.appendChild(el);
                                                }
                                            </script>
                                        </div>
                                    </div>
                                </section>
                                <h3>
                                        <span class="icon">
                                            <i class="done flaticon-double-check" style="display: none;"></i>
                                            <i class="active flaticon-gift-fill" style="display: none"></i>
                                        </span>
                                    <span class="mt-3">Checkout</span>
                                </h3>
                                <section>
                                    <h5 class="mt-5 mb-5 w-title">Payment Method</h5>
                                    <div class="rounded-pills-icon checkout-method">
                                        <ul class="nav nav-pills mb-4  justify-content-center" id="rounded-pills-icon-tab" role="tablist">
                                            <li class="nav-item ml-2 mr-2">
                                                <a class="nav-link mb-2 active text-center" id="rounded-pills-icon-home-tab" data-toggle="pill" href="#rounded-pills-icon-home" role="tab" aria-controls="rounded-pills-icon-home" aria-selected="true"><i class="flaticon-credit-card"></i> Credit Card</a>
                                            </li>
                                            <li class="nav-item ml-2 mr-2">
                                                <a class="nav-link mb-2 text-center" id="rounded-pills-icon-profile-tab" data-toggle="pill" href="#rounded-pills-icon-profile" role="tab" aria-controls="rounded-pills-icon-profile" aria-selected="false"><i class="flaticon-paypal-logo"></i> PayPal</a>
                                            </li>
                                            <li class="nav-item ml-2 mr-2">
                                                <a class="nav-link mb-2 text-center" id="rounded-pills-icon-contact-tab" data-toggle="pill" href="#rounded-pills-icon-contact" role="tab" aria-controls="rounded-pills-icon-contact" aria-selected="false"><i class="flaticon-dollar-coin"></i> Pay Cash</a>
                                            </li>
                                        </ul>

                                        <div class="tab-content" id="rounded-pills-icon-tabContent">
                                            <div class="tab-pane fade show active" id="rounded-pills-icon-home" role="tabpanel" aria-labelledby="rounded-pills-icon-home-tab">
                                                <h5 class="p-methods-title mb-5 mt-5 text-center">Credit Card</h5>
                                                <div class="row">
                                                    <div class="col-sm-6 col-12">
                                                        <input type="text" class="form-control mt-3 mb-5" placeholder="Card Number">
                                                    </div>
                                                    <div class="col-sm-6 col-12">
                                                        <input type="text" class="form-control sm-0 mt-3 mb-5" placeholder="Expiration Date">
                                                    </div>
                                                    <div class="col-sm-6 col-12">
                                                        <input type="text" class="form-control mt-3 mb-5" placeholder="Card Holder Name">
                                                    </div>
                                                    <div class="col-sm-6 col-12">
                                                        <input type="text" class="form-control mt-3 mb-5" placeholder="CVV">
                                                    </div>
                                                    <div class="col-md-12 text-center mt-4">
                                                        <button class="btn btn-success btn-rounded my-5 confirm-credit">Confirm</button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="rounded-pills-icon-profile" role="tabpanel" aria-labelledby="rounded-pills-icon-profile-tab">
                                                <h5 class="p-methods-title mb-5 mt-4 text-center">Paypal</h5>
                                                <div class="row">
                                                    <div class="col-sm-6 col-12">
                                                        <input type="text" class="form-control mt-4 mb-4" placeholder="Enter Your Paypal Email">
                                                    </div>
                                                    <div class="col-sm-6 col-12">
                                                        <input type="password" class="form-control mt-4 mb-4" placeholder="Enter Your Paypal Password">
                                                    </div>
                                                    <div class="col-md-12 text-center mt-4">
                                                        <button class="btn btn-success btn-rounded my-5 confirm-paypal">Confirm</button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="rounded-pills-icon-contact" role="tabpanel" aria-labelledby="rounded-pills-icon-contact-tab">
                                                <h5 class="p-methods-title mb-5 mt-4 text-center">Pay Cash</h5>
                                                <div class="container">
                                                    <div class="place-order-cash text-center mx-auto">
                                                        <i class="flaticon-coin-icon mb-4"></i>
                                                        <p class="mb-4 mt-4">Please click confirm button to accept package and pay cash at your delivery address.</p>
                                                        <button class="btn btn-success btn-rounded my-4  confirm-cash">Confirm</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
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
    <input type="hidden" name="command" value="deleteRepresentative">
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
        $("#id").val($(cols[5]).text());
        $("#fullName").val($(cols[1]).text());
        $("#email").val($(cols[2]).text());
        $("#country").val($(cols[4]).text());
        alert($(cols[4]).text())
        $("#action").val("updating");
        //$("#country").selectpicker("refresh");
        // Change Update Button Text
        // $("#button").text("Update");
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


</script>

<!--  BEGIN CUSTOM SCRIPT FILES  -->
<script src="assets/js/libs/jquery-3.1.1.min.js"></script>
<script src="bootstrap/js/popper.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="plugins/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="plugins/blockui/jquery.blockUI.min.js"></script>
<script src="assets/js/app.js"></script>

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


<script>
    $('#multi-column-ordering').DataTable({
        "language": {
            "paginate": { "previous": "<i class='flaticon-arrow-left-1'></i>", "next": "<i class='flaticon-arrow-right'></i>" },
            "info": "Showing page _PAGE_ of _PAGES_"
        },
        columnDefs: [ {
            targets: [ 0 ],
            orderData: [ 0, 1 ]
        }, {
            targets: [ 1 ],
            orderData: [ 1, 0 ]
        }, {
            targets: [ 4 ],
            orderData: [ 4, 0 ]
        } ]
    });
</script>
<!-- END PAGE LEVEL SCRIPTS -->

<!--  BEGIN CUSTOM SCRIPT FILES  -->
<script src="plugins/jquery-step/jquery.steps.min.js"></script>
<script src="plugins/sweetalerts/sweetalert2.min.js"></script>
<script>
    $("#circle-basic").steps({
        headerTag: "h3",
        bodyTag: "section",
        transitionEffect: "slideLeft",
        autoFocus: true,
        titleTemplate: '#title#',
        cssClass: 'circle wizard',
        onFinished: function(event, currentIndex) { swal('Order Placed!', 'Your order has been successfully placed. Check your Email', 'success').then(function(result){
            window.open('schedule.jsp', "_parent");
        }); }
    });
    $('.confirm-credit').on('click', function () {
        swal({ title: 'Your Credit Card Payment is Successfull!', text: "Please click on finish button to place your order.", type: 'success'})
    })
    $('.confirm-paypal').on('click', function () {
        swal({ title: 'Your Credit Paypal Payment is Successfull!', text: "Please click on finish button to place your order.", type: 'success', })
    })
    $('.confirm-cash').on('click', function () {
        swal({ title: 'Pay cash on delivery!', text: "Please click on finish button to place your order.", type: 'success', })
    })
</script>
<!--  END CUSTOM SCRIPT FILES  -->

</body>
</html>
