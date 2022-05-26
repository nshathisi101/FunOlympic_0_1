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

    <!--  BEGIN CUSTOM STYLE FILE  -->
    <link rel="stylesheet" type="text/css" href="plugins/dropify/dropify.min.css">
    <link href="assets/css/users/account-setting.css" rel="stylesheet" type="text/css" />
    <!--  END CUSTOM STYLE FILE  -->
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
                <a href="index.html" class="ml-3"> <img src="assets/img/olympic-rings.png" class="img-fluid" alt="logo"></a>
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
                    <a href="${pageContext.request.contextPath}/results.jsp">
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
                    <a href="${pageContext.request.contextPath}/medals.jsp" >
                        <div class="">
                            <i class="flaticon-cup"></i>
                            <span>Medals</span>
                        </div>
                    </a>
                </li>
                <li class="menu">
                    <a href="${pageContext.request.contextPath}/athletes_form.jsp">
                        <div class="">
                            <i class="flaticon-user-group"></i>
                            <span>Athletes</span>
                        </div>
                    </a>
                </li>

                <li class="menu">
                    <a href="#pages" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <div class="">
                            <i class="flaticon-file"></i>
                            <span>About us</span>
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
                    <h3>View Country Representatives</h3>
                </div>
            </div>
            <div class="widget-content widget-content-area">
                <a class="btn btn-success ml-2 mb-4 mt-2  popup-with-form" id="popup" onclick="cleanForm();" href="#test-form">Add</a>
            </div>

            <!-- Modal -->
            <div class="modal fade" id="formInputModal" tabindex="-1" role="dialog" aria-labelledby="formInputModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="formInputModalLabel">Country's Representatives</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form method="post" action="ServletLogin2">
                            <div class="modal-body">

                                <input type="hidden" name="command" value="athletes">
                                <input type="hidden" name="userType" value="${userInfo.userType}">
                                <input type="hidden" name="country" value="${userInfo.country}">
                                <input type="hidden" name="id" id="id" value="0">
                                <input type="hidden" name="action" id="action" value="setAthlete">



                                <div class="form-group mb-4">
                                    <label for="fullName">Full Name</label>
                                    <input type="text" name="fullName" class="form-control" id="fullName" placeholder="">
                                </div>


                                <div class="form-group mb-4">
                                    <label for="email">Email address</label>
                                    <input type="email" name="email" class="form-control" id="email" placeholder="">
                                </div>


                                <div class="form-group mb-4">
                                    <label for="sport">Country</label>
                                    <select name="sport" class="form-control" id="sport">

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
                                    <h4>Country Representatives </h4>
                                </div>
                            </div>
                        </div>
                        <div class="widget-content widget-content-area">
                            <div class="table-responsive mb-4">
                                <table id="ecommerce-product-customers" class="table table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <th class="checkbox-column"> Record No. </th>
                                        <th>Image</th>
                                        <th>Full Name</th>
                                        <th>Email</th>
                                        <th>Country</th>
                                        <th>Sport</th>
                                        <th style="display: none">id</th>
                                        <th class="">Action</th>

                                    </tr>

                                    </thead>
                                    <tbody>
                                    <c:forEach var="athletes" items="${athleteInfo}">
                                        <c:set var="countRepre" value="${countRepre+1}" scope="page"/>
                                        <tr>
                                            <td class="checkbox-column"> ${countRepre} </td>
                                            <td class="">
                                                <a class="product-list-img" href="javascript: void(0);">
                                                    <img src="UserImages/${athletes.dp}" alt="product">
                                                    <p id="imageName${athletes.id}" style="display: none">${athletes.dp}</p>
                                                </a>
                                            </td>
                                            <td class="customer-name-1 fullName">${athletes.fullName}</td>
                                            <td class="email">${athletes.email}</td>
                                            <td class="country">${athletes.country}</td>
                                            <td class="sport">${athletes.sport}</td>
                                            <td style="display: none"> ${athletes.id} </td>
                                            <td class="">
                                                <ul class="table-controls">
                                                    <li>
                                                        <a href="#test-form" class="popup-with-form" data-toggle="tooltip" id="${athletes.id}" onclick="productDisplay(this,this.id)" data-placement="top" title="Edit">
                                                            <i class="flaticon-edit"></i>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="javascript:void(0);" data-toggle="tooltip" class="warning confirm" id="" onclick="document.getElementById('delete_id').value='${athletes.id}'" data-placement="top" title="Delete">
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
    <input type="hidden" name="command" value="deleteAthlete">
    <input type="hidden" name="userType" value="${userInfo.userType}">
    <input type="hidden" name="country" value="${userInfo.country}">
    <input type="hidden" name="id" id="delete_id" value="">
</form>



<!--  BEGIN FOOTER  -->s
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

<!--  BEGIN CONTROL SIDEBAR  -->
<aside class="control-sidebar control-sidebar-light-color cs-content">
    <i class=""></i>
    <div class="">
        <div class="tab-navigation-section text-center mb-5 mt-3">
            <ul class="nav nav-tabs nav-justified mx-2">
                <li class="nav-item">
                    <a data-toggle="tab" href="#task-tab" class="nav-link rounded-circle  justify-content-center d-flex active show">
                        <p class="mb-0">Task</p>
                        <i class="align-self-center flaticon-notes"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a data-toggle="tab" href="#friends-tab" class="nav-link rounded-circle  justify-content-center d-flex">
                        <p class="mb-0">Friends</p>
                        <i class="align-self-center flaticon-user-8"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a data-toggle="tab" href="#settings-tab" class="nav-link rounded-circle  justify-content-center d-flex">
                        <p class="mb-0">Settings</p>
                        <i class="align-self-center flaticon-gear-1"></i>
                    </a>
                </li>
            </ul>
        </div>

        <div class="tab-content">
            <div id="task-tab" class="tab-pane tab-1 fade show active">
                <div class="tasks">
                    <div class="recent">

                        <div class="d-flex justify-content-between mb-5">
                            <div>
                                <span class="">Today</span> <span class="notification-count ml-2">12</span>
                            </div>

                            <div>
                                <p class="r-view-all">See all</p>
                            </div>
                        </div>

                        <div class="media">
                            <img src="assets/img/120x120.jpg" class="img-fluid mr-3" alt="admin-profile">
                            <div class="media-body">
                                <h6 class="mb-0">Sean Freeman</h6>
                                <p>has replied your mail.</p>
                                <p class="meta-time">7 mins ago</p>
                            </div>
                        </div>

                        <div class="media">
                            <img src="assets/img/120x120.jpg" class="img-fluid mr-3" alt="admin-profile">
                            <div class="media-body">
                                <h6 class="mb-0">Laurie Fox</h6>
                                <p>comment to your posts.</p>
                                <p class="meta-time">13 mins ago</p>
                            </div>
                        </div>

                        <div class="media system-notify">
                            <i class="flaticon-settings-7  mr-3"></i>
                            <div class="media-body">
                                <h6 class="mb-0">System Notifications</h6>
                                <p>has replied your mail.</p>
                                <p class="meta-time">7 mins ago</p>
                            </div>
                        </div>

                        <div class="media mail-notify">
                            <i class="flaticon-folder-fill-1  mr-3"></i>
                            <div class="media-body">
                                <h6 class="mb-0">Ricky Turner</h6>
                                <p>has replied your mails.</p>
                                <p class="meta-time">7 mins ago</p>
                            </div>
                        </div>

                    </div>

                    <div class="today mt-5">

                        <div class="d-flex justify-content-between mb-5">
                            <div>
                                <span>Yesterday</span> <span class="notification-count ml-2">8</span>
                            </div>

                            <div>
                                <p class="r-view-all">See all</p>
                            </div>
                        </div>

                        <div class="media">
                            <img src="assets/img/120x120.jpg" class="img-fluid mr-3" alt="admin-profile">
                            <div class="media-body">
                                <h6 class="mb-0">Angie Lamb</h6>
                                <p>has replied your mail.</p>
                                <p class="meta-time">7 mins ago</p>
                            </div>
                        </div>

                        <div class="media">
                            <img src="assets/img/120x120.jpg" class="img-fluid mr-3" alt="admin-profile">
                            <div class="media-body">
                                <h6 class="mb-0">Amy Diaz</h6>
                                <p>comment to your posts.</p>
                                <p class="meta-time">13 mins ago</p>
                            </div>
                        </div>

                        <div class="media">
                            <img src="assets/img/120x120.jpg" class="img-fluid mr-3" alt="admin-profile">
                            <div class="media-body">
                                <h6 class="mb-0">Irene Collins</h6>
                                <p>has replied your mail.</p>
                                <p class="meta-time">7 mins ago</p>
                            </div>
                        </div>

                        <div class="media">
                            <img src="assets/img/120x120.jpg" class="img-fluid mr-3" alt="admin-profile">
                            <div class="media-body">
                                <h6 class="mb-0">Lila Perry</h6>
                                <p>has replied your mails.</p>
                                <p class="meta-time">7 mins ago</p>
                            </div>
                        </div>

                    </div>

                    <div class="task-stats mt-5">

                        <div class="t-s-header mb-5">
                            <div class="row">
                                <div class="col-md-12 text-center">
                                    <h6><span>TASK STATISTICS</span></h6>
                                </div>
                            </div>
                        </div>

                        <div class="t-s-body">

                            <div class="row">

                                <div class="col-md-12">

                                    <div class="d-flex justify-content-between">
                                        <p>Feature development</p>
                                        <p>70%</p>
                                    </div>

                                    <div class="progress  br-30 mb-4">
                                        <div class="progress-bar  br-30 bg-secondary" role="progressbar" style="width: 70%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>

                                </div>

                                <div class="col-md-12">

                                    <div class="d-flex justify-content-between mt-3">
                                        <p>Uploading files</p>
                                        <p>30%</p>
                                    </div>

                                    <div class="progress  br-30 mb-4">
                                        <div class="progress-bar  br-30 bg-danger" role="progressbar" style="width: 30%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>

                                </div>

                                <div class="col-md-12">

                                    <div class="d-flex justify-content-between mt-3">
                                        <p>Total progress</p>
                                        <p>86%</p>
                                    </div>

                                    <div class="progress  br-30">
                                        <div class="progress-bar  br-30 bg-info" role="progressbar" style="width: 86%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>

                                </div>

                            </div>

                        </div>

                        <div class="close-sidebar text-center">
                            <i class="flaticon-cancel-12 toggle-control-sidebar"></i>
                        </div>

                    </div>

                </div>
            </div>

            <div id="friends-tab" class="tab-pane tab-2 fade">

                <div class="friends">
                    <div class="recent">
                        <div class="friend-request">

                            <div class="d-flex justify-content-between header mb-5">

                                <div class="media">
                                    <i class="flaticon-user-plus mr-3 align-self-center"></i>
                                    <div class="media-body">
                                        <h6 class="mt-2">Friend request</h6>
                                    </div>
                                </div>

                                <div class="align-self-center">
                                    <p class="mb-0">See all</p>
                                </div>

                            </div>

                            <div class="media">
                                <img src="assets/img/120x120.jpg" class="img-fluid mr-3" alt="admin-profile">
                                <div class="media-body">
                                    <h6>Kara Young</h6>
                                    <p>2 mins ago</p>
                                </div>
                                <i class="flaticon-fill-tick mr-2"></i>
                                <i class="flaticon-close-fill"></i>
                            </div>

                            <div class="media mt-2">
                                <img src="assets/img/120x120.jpg" class="img-fluid mr-3" alt="admin-profile">
                                <div class="media-body">
                                    <h6>Justin Cross</h6>
                                    <p>5 mins ago</p>
                                </div>
                                <i class="flaticon-fill-tick mr-2"></i>
                                <i class="flaticon-close-fill"></i>
                            </div>

                            <div class="media mt-2">
                                <img src="assets/img/120x120.jpg" class="img-fluid mr-3" alt="admin-profile">
                                <div class="media-body">
                                    <h6>Amy Diaz</h6>
                                    <p>7 mins ago</p>
                                </div>
                                <i class="flaticon-fill-tick mr-2"></i>
                                <i class="flaticon-close-fill"></i>
                            </div>


                            <div class="media mt-2">
                                <img src="assets/img/120x120.jpg" class="img-fluid mr-3" alt="admin-profile">
                                <div class="media-body">
                                    <h6>Ernest Reeves</h6>
                                    <p>10 mins ago</p>
                                </div>
                                <i class="flaticon-fill-tick mr-2"></i>
                                <i class="flaticon-close-fill"></i>
                            </div>

                        </div>
                    </div>

                    <div class="friends-stats">

                        <div class="a-s-media mt-5">

                            <div class="d-flex justify-content-between header mb-5">

                                <div class="media">
                                    <div class="media-body">
                                        <h6 class="mt-2 text-center ml-4"><span>Status</span></h6>
                                    </div>
                                </div>

                                <div class="align-self-center">
                                    <p class="mb-0">See all</p>
                                </div>

                            </div>

                            <div class="media mb-3">
                                <div class="profile-img online mr-3">
                                    <img src="assets/img/90x90.jpg" class="img-fluid" alt="admin-profile">
                                </div>
                                <div class="media-body">
                                    <h6 class="mt-2 mb-0">Traci Lopez</h6>
                                    <p class="stats">Available</p>
                                </div>
                                <div class="align-self-center">
                                    <p class="meta-time">12 mins ago</p>
                                </div>
                            </div>

                            <div class="media mb-3">
                                <div class="profile-img away mr-3">
                                    <img src="assets/img/120x120.jpg" class="img-fluid" alt="admin-profile">
                                </div>
                                <div class="media-body">
                                    <h6 class="mt-2 mb-0">Kristen Beck</h6>
                                    <p class="stats">Away</p>
                                </div>
                                <div class="align-self-center">
                                    <div class="text-center mb-2">
                                        <span class="badge-primary">8</span>
                                    </div>
                                    <p class="meta-time">15 mins ago</p>
                                </div>
                            </div>

                            <div class="media">
                                <div class="profile-img online mr-3">
                                    <img src="assets/img/120x120.jpg" class="img-fluid" alt="admin-profile">
                                </div>
                                <div class="media-body">
                                    <h6 class="mt-2 mb-0">Keith Foster</h6>
                                    <p class="stats">Available</p>
                                </div>
                                <div class="align-self-center">
                                    <p class="meta-time">35 mins ago</p>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="close-sidebar text-center">
                        <i class="flaticon-cancel-12 toggle-control-sidebar"></i>
                    </div>

                </div>
            </div>

            <div id="settings-tab" class="tab-pane tab-3 fade">
                <div class="settings">
                    <div class="admin-setting">

                        <div class="d-flex justify-content-between header">

                            <div class="media">
                                <i class="flaticon-user-5 mr-3 align-self-center"></i>
                                <div class="media-body">
                                    <h6 class="mt-2">Admin settings</h6>
                                </div>
                            </div>

                            <div class="align-self-center">
                                <p class="mb-0">See all</p>
                            </div>

                        </div>

                        <div class="mb-3 mt-5">
                            <div class="d-flex justify-content-between">
                                <h6 class="mb-0 mt-1">Show notifications</h6>
                                <label class="custom-control material-switch mb-4 mt-1 material-s-rounded material-primary">
                                    <input type="checkbox" class="material-switch-control-input" checked="">
                                    <span class="material-switch-control-indicator"></span>
                                </label>
                            </div>
                        </div>

                        <div class="mb-3">
                            <div class="d-flex justify-content-between">
                                <h6 class="mb-0 mt-1">Enable auto logout</h6>
                                <label class="custom-control material-switch mb-4 mt-1 material-s-rounded material-primary">
                                    <input type="checkbox" class="material-switch-control-input" checked="">
                                    <span class="material-switch-control-indicator"></span>
                                </label>
                            </div>
                        </div>

                        <div class="mb-3">
                            <div class="d-flex justify-content-between">
                                <h6 class="mb-0 mt-1">Show recent activity</h6>
                                <label class="custom-control material-switch mb-4 mt-1 material-s-rounded material-primary">
                                    <input type="checkbox" class="material-switch-control-input" checked="">
                                    <span class="material-switch-control-indicator"></span>
                                </label>
                            </div>
                        </div>

                        <div class="mb-3">
                            <div class="d-flex justify-content-between">
                                <h6 class="mb-0 mt-1">Chat history</h6>
                                <label class="custom-control material-switch mb-4 mt-1 material-s-rounded material-primary">
                                    <input type="checkbox" class="material-switch-control-input" checked="">
                                    <span class="material-switch-control-indicator"></span>
                                </label>
                            </div>
                        </div>

                        <div class="mb-3">
                            <div class="d-flex justify-content-between">
                                <h6 class="mb-0 mt-1">Users activity</h6>
                                <label class="custom-control material-switch mb-4 mt-1 material-s-rounded material-primary">
                                    <input type="checkbox" class="material-switch-control-input" checked="">
                                    <span class="material-switch-control-indicator"></span>
                                </label>
                            </div>
                        </div>

                        <div class="mb-3">
                            <div class="d-flex justify-content-between">
                                <h6 class="mb-0 mt-1">Orders history</h6>
                                <label class="custom-control material-switch mb-4 mt-1 material-s-rounded material-primary">
                                    <input type="checkbox" class="material-switch-control-input" checked="">
                                    <span class="material-switch-control-indicator"></span>
                                </label>
                            </div>
                        </div>

                        <div class="mb-3">
                            <div class="d-flex justify-content-between">
                                <h6 class="mb-0 mt-1">Show task statistics</h6>
                                <label class="custom-control material-switch mb-4 mt-1 material-s-rounded material-primary">
                                    <input type="checkbox" class="material-switch-control-input" checked="">
                                    <span class="material-switch-control-indicator"></span>
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="general-setting mt-5">

                        <div class="d-flex justify-content-between header mb-5">

                            <div class="media">
                                <i class="flaticon-gear-5 mr-3 align-self-center"></i>
                                <div class="media-body">
                                    <h6 class="mt-2">General Settings</h6>
                                </div>
                            </div>

                        </div>

                        <div class="media mb-4 social-media-list">
                            <i class="flaticon-facebook-logo fb"></i>
                            <div class="media-body d-flex justify-content-around">
                                <h6 class="mb-0 mt-2">Show notfications</h6>
                                <label class="custom-control material-switch mb-4  mt-2 material-s-rounded material-primary">
                                    <input type="checkbox" class="material-switch-control-input" checked="">
                                    <span class="material-switch-control-indicator"></span>
                                </label>
                            </div>
                        </div>

                        <div class="media mb-4 social-media-list">
                            <i class="flaticon-dribbble-bold dribbble"></i>
                            <div class="media-body d-flex justify-content-around">
                                <h6 class="mb-0 mt-2">Show notfications</h6>
                                <label class="custom-control material-switch mb-4  mt-2 material-s-rounded material-primary">
                                    <input type="checkbox" class="material-switch-control-input" checked="">
                                    <span class="material-switch-control-indicator"></span>
                                </label>
                            </div>
                        </div>

                        <div class="media mb-4 social-media-list">
                            <i class="flaticon-linkedin-logo lin"></i>
                            <div class="media-body d-flex justify-content-around">
                                <h6 class="mb-0 mt-2">Show notfications</h6>
                                <label class="custom-control material-switch mb-4  mt-2 material-s-rounded material-primary">
                                    <input type="checkbox" class="material-switch-control-input" checked="">
                                    <span class="material-switch-control-indicator"></span>
                                </label>
                            </div>
                        </div>

                        <div class="media mb-4 social-media-list">
                            <i class="flaticon-twitter-logo tweet"></i>
                            <div class="media-body d-flex justify-content-around">
                                <h6 class="mb-0 mt-2">Show notfications</h6>
                                <label class="custom-control material-switch mb-4  mt-2 material-s-rounded material-primary">
                                    <input type="checkbox" class="material-switch-control-input" checked="">
                                    <span class="material-switch-control-indicator"></span>
                                </label>
                            </div>
                        </div>

                        <div class="media mb-4 social-media-list">
                            <i class="flaticon-behance-logo behance"></i>
                            <div class="media-body d-flex justify-content-around">
                                <h6 class="mb-0 mt-2">Show notfications</h6>
                                <label class="custom-control material-switch mb-4  mt-2 material-s-rounded material-primary">
                                    <input type="checkbox" class="material-switch-control-input" checked="">
                                    <span class="material-switch-control-indicator"></span>
                                </label>
                            </div>
                        </div>

                        <div class="chk-settings mt-5">

                            <div class="media mb-4 ">
                                <div class="media-body">
                                    <h6 class="media-heading mt-0 mb-3"><span class="media-title">Report panel usage</span>
                                    </h6>
                                    <p class="media-text">
                                        Show information on any malicious activity
                                    </p>
                                </div>
                                <div class="n-chk">
                                    <label class="new-control new-checkbox checkbox-secondary mr-1">
                                        <input type="checkbox" class="new-control-input" checked>
                                        <span class="new-control-indicator"></span><span class="invisible">C</span>
                                    </label>
                                </div>
                            </div>

                            <div class="media mb-4 ">
                                <div class="media-body">
                                    <h6 class="media-heading mt-0 mb-3"><span class="media-title">Allow mail redirect</span>
                                    </h6>
                                    <p class="media-text">
                                        Redirect mail through exchange server
                                    </p>
                                </div>
                                <div class="n-chk">
                                    <label class="new-control new-checkbox checkbox-secondary mr-1">
                                        <input type="checkbox" class="new-control-input">
                                        <span class="new-control-indicator"></span><span class="invisible">C</span>
                                    </label>
                                </div>
                            </div>

                            <div class="media mb-4 ">
                                <div class="media-body">
                                    <h6 class="media-heading mt-0 mb-3"><span class="media-title"> Show author name in posts</span>
                                    </h6>
                                    <p class="media-text">
                                        Allow the user to show his name in blog posts
                                    </p>
                                </div>
                                <div class="n-chk">
                                    <label class="new-control new-checkbox checkbox-secondary mr-1">
                                        <input type="checkbox" class="new-control-input" checked>
                                        <span class="new-control-indicator"></span><span class="invisible">C</span>
                                    </label>
                                </div>
                            </div>

                            <div class="media mb-4 ">
                                <div class="media-body">
                                    <h6 class="media-heading mt-0 mb-3"><span class="media-title"> Sync phone when connected to the PC</span>
                                    </h6>
                                    <p class="media-text">
                                        Connect smart phone automatically and sync with user profile
                                    </p>
                                </div>
                                <div class="n-chk">
                                    <label class="new-control new-checkbox checkbox-secondary mr-1">
                                        <input type="checkbox" class="new-control-input" checked>
                                        <span class="new-control-indicator"></span><span class="invisible">C</span>
                                    </label>
                                </div>
                            </div>

                            <div class="media mb-4 ">
                                <div class="media-body">
                                    <h6 class="media-heading mt-0 mb-3"><span class="media-title"> Show me as Online </span>
                                    </h6>
                                </div>
                                <div class="n-chk">
                                    <label class="new-control new-checkbox checkbox-secondary mr-1">
                                        <input type="checkbox" class="new-control-input" checked>
                                        <span class="new-control-indicator"></span><span class="invisible">C</span>
                                    </label>
                                </div>
                            </div>

                        </div>

                        <div class="mt-5 delete-chat">

                            <div class="media mb-4">
                                <div class="media-body">
                                    <h6 class="media-heading mt-0 mb-3"><span class="media-title"> Delete chat history</span>
                                    </h6>
                                </div>
                                <i class="del-chat flaticon-delete-2 mb-4"></i>

                            </div>

                        </div>

                        <div class="close-sidebar text-center">
                            <i class="flaticon-cancel-12 toggle-control-sidebar"></i>
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </div>
</aside>
<!--  END CONTROL SIDEBAR  -->

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

    function productDisplay(ctl,id) {
        var imageName=document.getElementById("imageName"+id).innerHTML;
        document.getElementById("input-file-max-fs").setAttribute("data-default-file","UserImages/"+imageName);
        _row = $(ctl).parents("tr");
        var cols = _row.children("td");
        $("#id").val($(cols[6]).text());
        $("#fullName").val($(cols[2]).text());
        $("#email").val($(cols[3]).text());
        $("#country").val($(cols[4]).text());
        $("#sport").val($(cols[5]).text());
        $("#action").val("updateAthlete");
        var imageName=document.getElementById("imageName"+id).innerHTML;
        document.getElementById("input-file-max-fs").setAttribute("data-default-file","UserImages/"+imageName);
        $("#input-file-max-fs").attr("data-default-file","UserImages/"+imageName);
        alert(imageName);
        //$("#country").selectpicker("refresh");
        // Change Update Button Text
        // $("#button").text("Update");
    }
    function cleanForm(){
        document.getElementById("fullName").value=null;
        document.getElementById("email").value=null;
        document.getElementById("country").value=null;
        document.getElementById("sport").value="3x3 Basketball";
        document.getElementById("action").value="registering";
    }

    let tableRowElement;
    function toggleModal(element) {


        tableRowElement = element.parentElement.parentElement;
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
    var country_list = ["3x3 Basketball", "Acrobatic Gymnastic","Apline Skiing", "Archery", "Artistic Gymnastics", "Artistic Swimming Athletics Swimming", "Athletics", "Badminton", "Baseball Softball", "Basketball","Beach handball", "Beach volleyball", " Biathlon", "BMX freestyle", "BMX racing", "Bobsleigh", "Boxing Breaking", "Canoe/Kayak flatwater", "Canoe/kayak slamo", "Cross-country skiing", "Curling, Diving", "Equestrian", "Fencing", "Figure skating", "Football", "Freestyle skiing", "Futsal", "Golf", "Handball", "Hockey", "Ice hockey", "Judo", "Karate", "Luge", "Marathon swimming", "Modern pentathlon", "Mountain bike",  "Nordic combined" , "Rhythmic gymnastics", "Road Cycling", "Roller speed skating", "Rowing", "Rugby", " Sailing, Shooting", "Short track speed racing", "skateboarding", "skeleton", " ski jumping", " ski mountaineering", "Snowboard", "speed skating", " sport climbing", "Surfing", "Swimming", "Table tennis", "Taekwondo", "Tennis", " Track cycling", "Trampoline", "Triathlon", "Volleyball", " Water polo", " Weight lifting","Wrestling"]
    for(var i = 0; i < country_list.length; i++) {
        var opt = country_list[i];
        var el = document.createElement("option");
        el.textContent = opt;;
        el.value = opt;
        select.appendChild(el);
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


<!--  BEGIN CUSTOM SCRIPTS FILE  -->
<script src="plugins/dropify/dropify.min.js"></script>
<script src="plugins/bootstrap-tagsinput/bootstrap-tagsinput.min.js"></script>
<script>
    $('.dropify').dropify({
        messages: { 'default': 'Click to Upload or Drag n Drop', 'remove':  '<i class="flaticon-close-fill"></i>', 'replace': 'Upload or Drag n Drop' }
    });
</script>
<!--  END CUSTOM SCRIPTS FILE  -->


<!-- BEGIN THEME GLOBAL STYLE -->
<script src="plugins/sweetalerts/sweetalert2.min.js"></script>
<script src="plugins/sweetalerts/custom-sweetalert.js"></script>
<!-- END THEME GLOBAL STYLE -->
</body>
</html>