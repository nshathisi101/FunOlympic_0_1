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
                    <img src="assets/img/90x90.jpg" class="img-fluid mr-2" alt="admin-profile">
                    <div class="media-body align-self-center">
                        <h6 class="mb-1">Alan Green</h6>
                        <p class="mb-0">UI/UX Designer</p>
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
            <a href="#" class="nav-link toggle-control-sidebar suffle">
                <span class="icon flaticon-log-3"></span>
            </a>
        </li>
    </ul>
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
                            <i class="flaticon-computer-6"></i>
                            <span>Dashboard</span>
                        </div>

                        <div>
                            <i class="flaticon-down-arrow"></i>
                        </div>
                    </a>
                    <ul class="collapse submenu list-unstyled" id="dashboard" data-parent="#topAccordion">
                        <li>
                            <a href="#dashboards" data-toggle="collapse" aria-expanded="true" class="dropdown-toggle"> ADMIN <i class="flaticon-dot-three"></i> </a>
                            <ul class="collapse list-unstyled sub-submenu show" id="dashboards">
                                <li>
                                    <a href="index.html"> Default </a>
                                </li>
                                <li>
                                    <a href="ecommerce_dashboard.html"> Ecommerce </a>
                                </li>
                                <li>
                                    <a href="accounting_dashboard.html"> Accounting </a>
                                </li>
                                <li>
                                    <a href="analytics_dashboard.html"> Analytics </a>
                                </li>
                                <li>
                                    <a href="car_dashboard.html"> Car </a>
                                </li>
                                <li>
                                    <a href="classic_dashboard.html"> Classic </a>
                                </li>
                                <li>
                                    <a href="stock_market_dashboard.html"> Stock Market </a>
                                </li>
                                <li>
                                    <a href="cryptocurrency_dashboard.html">Cryptocurrency </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>

                <li class="menu">
                    <a href="#uiAndComponents" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <div class="">
                            <i class="flaticon-3d-cube"></i>
                            <span>UI & Components</span>
                        </div>
                        <div>
                            <i class="flaticon-down-arrow"></i>
                        </div>
                    </a>
                    <div class="collapse submenu list-unstyled" id="uiAndComponents" data-parent="#topAccordion">
                        <div class="row">
                            <div class="col-lg-4">
                                <ul class="list-unstyled">
                                    <li>
                                        <a href="#ui-features" data-toggle="collapse" aria-expanded="true" class="dropdown-toggle"> UI KIT <i class="flaticon-dot-three"></i> </a>
                                        <ul class="collapse list-unstyled sub-submenu show" id="ui-features">
                                            <li>
                                                <a href="ui_helper_classes.html"> Helper Classes </a>
                                            </li>
                                            <li>
                                                <a href="ui_color_library.html"> Color Library </a>
                                            </li>
                                            <li>
                                                <a href="ui_grid.html"> Grid System </a>
                                            </li>
                                            <li>
                                                <a href="ui_typography.html"> Typography </a>
                                            </li>
                                            <li>
                                                <a href="ui_shadows.html"> Shadow </a>
                                            </li>
                                            <li>
                                                <a href="ui_miscellaneous.html"> Miscellaneous </a>
                                            </li>
                                            <li>
                                                <a href="ui_pagination.html">Pagination</a>
                                            </li>
                                            <li>
                                                <a href="ui_alert.html"> Alerts </a>
                                            </li>
                                            <li>
                                                <a href="ui_tooltips_and_popovers.html"> Tooltips And Popovers </a>
                                            </li>
                                            <li>
                                                <a href="ui_loader.html"> Loaders </a>
                                            </li>
                                            <li class="sub-sub-submenu-list">
                                                <a href="#ui-buttons" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> Buttons <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="ui-buttons" data-parent="#ui-features">
                                                    <li>
                                                        <a href="ui_buttons.html"> Bootstrap </a>
                                                    </li>
                                                    <li>
                                                        <a href="ui_creative.html"> Creative </a>
                                                    </li>
                                                    <li>
                                                        <a href="ui_switches.html"> Switches </a>
                                                    </li>
                                                    <li>
                                                        <a href="ui_social_button.html"> Social </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="ui_sweetalert.html"> Sweet Alerts </a>
                                            </li>
                                            <li class="sub-sub-submenu-list">
                                                <a href="#ui-font-icons" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> Font Icons <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="ui-font-icons" data-parent="#ui-features">
                                                    <li>
                                                        <a href="ui_flaticon_icon.html"> Flaticon </a>
                                                    </li>
                                                    <li>
                                                        <a href="ui_linea_icon.html"> Linea </a>
                                                    </li>
                                                    <li>
                                                        <a href="ui_themify_icon.html"> Themify </a>
                                                    </li>
                                                    <li>
                                                        <a href="ui_pixeden_icon.html"> Pixeden </a>
                                                    </li>
                                                    <li>
                                                        <a href="ui_fontawesome_icon.html"> Fontawesome </a>
                                                    </li>
                                                    <li>
                                                        <a href="ui_metro_icon.html"> Metro </a>
                                                    </li>
                                                    <li>
                                                        <a href="ui_weather_icon.html"> Weather </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="ui_tabs.html"> Tabs </a>
                                            </li>
                                            <li>
                                                <a href="ui_accordion.html"> Accordions  </a>
                                            </li>
                                            <li>
                                                <a href="ui_modal.html"> Modals </a>
                                            </li>
                                            <li>
                                                <a href="ui_sliders.html"> Range Sliders </a>
                                            </li>
                                            <li>
                                                <a href="ui_timeline.html"> Timeline </a>
                                            </li>
                                            <li>
                                                <a href="ui_tree.html"> Tree View </a>
                                            </li>
                                            <li class="sub-sub-submenu-list">
                                                <a href="#ui-progress" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> Progress Bar <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="ui-progress" data-parent="#ui-features">
                                                    <li>
                                                        <a href="ui_bootstrap_progress_bar.html"> Bootstrap </a>
                                                    </li>
                                                    <li>
                                                        <a href="ui_material_progress_bar.html"> Custom </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="sub-sub-submenu-list">
                                                <a href="#ui-notification" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> Notifications <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="ui-notification" data-parent="#ui-features">
                                                    <li>
                                                        <a href="ui_toastr.html"> Toastr </a>
                                                    </li>
                                                    <li>
                                                        <a href="ui_notification.html"> Creative </a>
                                                    </li>
                                                    <li>
                                                        <a href="ui_snackbar.html"> Snackbar </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="ui_session_timeout.html"> Session Timeout </a>
                                            </li>
                                            <li>
                                                <a href="ui_media_object.html"> Media Object </a>
                                            </li>
                                            <li>
                                                <a href="ui_list_group.html"> List Group </a>
                                            </li>
                                            <li>
                                                <a href="ui_nestable_list.html"> Nested List </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-4">
                                <ul class="list-unstyled">
                                    <li>
                                        <a href="#components" data-toggle="collapse" aria-expanded="true" class="dropdown-toggle"> COMPONENTS <i class="flaticon-dot-three"></i> </a>
                                        <ul class="collapse list-unstyled sub-submenu show" id="components">
                                            <li>
                                                <a href="component_portlet.html"> Portlets </a>
                                            </li>
                                            <li>
                                                <a href="component_keypad.html"> Keypad </a>
                                            </li>

                                            <li class="sub-sub-submenu-list">
                                                <a href="#component-carousel" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> Carousel <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="component-carousel" data-parent="#components">
                                                    <li>
                                                        <a href="component_bootstrap_carousel.html">Bootstrap</a>
                                                    </li>
                                                    <li>
                                                        <a href="component_carousel.html">Metro</a>
                                                    </li>
                                                    <li>
                                                        <a href="component_sliders.html">Swiper</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="component_rating.html"> Rating </a>
                                            </li>
                                            <li>
                                                <a href="component_blockui.html"> Block UI </a>
                                            </li>
                                            <li>
                                                <a href="component_popup.html"> Popup </a>
                                            </li>
                                            <li>
                                                <a href="component_scroll_bars_basic.html"> Scrollbar </a>
                                            </li>
                                            <li>
                                                <a href="component_todo_list.html"> Todo List </a>
                                            </li>
                                            <li>
                                                <a href="component_scrollspy.html"> Scrollspy </a>
                                            </li>
                                            <li>
                                                <a href="component_countdown.html"> Countdown </a>
                                            </li>

                                            <li>
                                                <a href="component_counter.html"> Counter </a>
                                            </li>
                                            <li>
                                                <a href="component_datetime_picker.html"> Date &amp; Time Picker </a>
                                            </li>
                                            <li>
                                                <a href="component_lightbox.html"> LightBox </a>
                                            </li>
                                            <li>
                                                <a href="component_color_picker.html"> Color Picker </a>
                                            </li>
                                            <li class="sub-sub-submenu-list">
                                                <a href="#component-media" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> Media <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="component-media" data-parent="#components">
                                                    <li>
                                                        <a href="component_video_player.html"> Video Player </a>
                                                    </li>
                                                    <li>
                                                        <a href="component_audio_player.html"> Audio Player </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="component_clipboard.html"> Clipboard </a>
                                            </li>
                                            <li>
                                                <a href="component_typeahead.html"> Typeahead </a>
                                            </li>
                                            <li class="sub-sub-submenu-list">
                                                <a href="#component-search" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> Search <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu show" id="component-search" data-parent="#components">
                                                    <li>
                                                        <a href="component_search_multiple.html"> Multiple </a>
                                                    </li>
                                                    <li>
                                                        <a href="component_search_web.html"> Web </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="sub-sub-submenu-list">
                                                <a href="#component-animation" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> Animations <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="component-animation" data-parent="#components">
                                                    <li>
                                                        <a href="component_animation_buttons.html"> Buttons </a>
                                                    </li>
                                                    <li>
                                                        <a href="component_animation_css.html"> CSS </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="sub-sub-submenu-list">
                                                <a href="#component-img-crop" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> Image Cropping <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="component-img-crop" data-parent="#components">
                                                    <li>
                                                        <a href="component_image_cropping_basic.html"> Basic </a>
                                                    </li>
                                                    <li>
                                                        <a href="component_image_cropping_advanced.html"> Advanced </a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-4">
                                <ul class="list-unstyled">
                                    <li>
                                        <a href="#element" data-toggle="collapse" aria-expanded="true" class="dropdown-toggle"> ELEMENTS <i class="flaticon-dot-three"></i> </a>
                                        <ul class="collapse list-unstyled sub-submenu show" id="element">
                                            <li>
                                                <a href="element_steps.html"> Steps </a>
                                            </li>
                                            <li>
                                                <a href="element_list.html"> List </a>
                                            </li>
                                            <li>
                                                <a href="element_ribbon.html"> Ribbons </a>
                                            </li>
                                            <li>
                                                <a href="element_overlays.html"> Overlays </a>
                                            </li>
                                            <li>
                                                <a href="element_weatherapp.html"> Weather Apps </a>
                                            </li>
                                            <li>
                                                <a href="element_testimonial.html"> Testimonials </a>
                                            </li>
                                            <li>
                                                <a href="element_team.html"> Team </a>
                                            </li>
                                            <li>
                                                <a href="element_contacts.html"> Contacts </a>
                                            </li>
                                            <li>
                                                <a href="element_blog.html"> Blog Elements </a>
                                            </li>
                                            <li>
                                                <a href="element_pricing_table.html"> Pricing Tables </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>

                <li class="menu">
                    <a href="#tables-forms" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <div class="">
                            <i class="flaticon-table"></i>
                            <span>Tables & Forms</span>
                        </div>
                        <div>
                            <i class="flaticon-down-arrow"></i>
                        </div>
                    </a>
                    <div class="collapse submenu list-unstyled" id="tables-forms"  data-parent="#topAccordion">
                        <div class="row">
                            <div class="col-lg-4">
                                <ul class="list-unstyled">
                                    <li>
                                        <a href="#tables" data-toggle="collapse" aria-expanded="true" class="dropdown-toggle"> TABLES <i class="flaticon-dot-three"></i> </a>
                                        <ul class="collapse list-unstyled sub-submenu show" id="tables">
                                            <li>
                                                <a href="table_basic.html"> Basic </a>
                                            </li>
                                            <li>
                                                <a href="table_tablesaw.html"> Tablesaw</a>
                                            </li>
                                            <li>
                                                <a href="table_sticky_table_header.html"> Sticky Headers</a>
                                            </li>
                                            <li class="sub-sub-submenu-list">
                                                <a href="#tables-editable" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> Editable <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="tables-editable" data-parent="#tables">
                                                    <li>
                                                        <a href="table_jq_spreadsheet.html"> Spreadsheet </a>
                                                    </li>
                                                    <li>
                                                        <a href="table_jquery_tabledit.html"> TableEdit </a>
                                                    </li>
                                                    <li>
                                                        <a href="table_editablegrid.html"> Editable Grid </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="sub-sub-submenu-list">
                                                <a href="#tables-data-tables" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> DataTables <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="tables-data-tables" data-parent="#tables">
                                                    <li>
                                                        <a href="table_dt_zero_configuration.html"> Basic </a>
                                                    </li>
                                                    <li>
                                                        <a href="table_dt_ordering_sorting.html"> Order Sorting </a>
                                                    </li>
                                                    <li>
                                                        <a href="table_dt_multi-column_ordering.html"> Multi-Column </a>
                                                    </li>
                                                    <li>
                                                        <a href="table_dt_multiple_tables.html"> Multiple Tables</a>
                                                    </li>
                                                    <li>
                                                        <a href="table_dt_alternative_pagination.html"> Alternative Pagination</a>
                                                    </li>
                                                    <li>
                                                        <a href="table_dt_miscellaneous.html"> Miscellaneous </a>
                                                    </li>
                                                    <li>
                                                        <a href="table_dt_custom.html"> Custom </a>
                                                    </li>
                                                    <li>
                                                        <a href="table_dt_scrollable.html"> Scrollable </a>
                                                    </li>
                                                    <li>
                                                        <a href="table_dt_range_search.html"> Range Search </a>
                                                    </li>
                                                    <li>
                                                        <a href="table_dt_html5.html"> HTML5 Export </a>
                                                    </li>
                                                    <li>
                                                        <a href="table_dt_live_dom_ordering.html"> Live DOM ordering </a>
                                                    </li>

                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-4">
                                <ul class="list-unstyled">
                                    <li>
                                        <a href="#forms" data-toggle="collapse" aria-expanded="true" class="dropdown-toggle"> FORM <i class="flaticon-dot-three"></i> </a>
                                        <ul class="collapse list-unstyled sub-submenu show" id="forms">
                                            <li class="sub-sub-submenu-list">
                                                <a href="#forms-bootstrap" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> Bootstrap <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="forms-bootstrap" data-parent="#forms">
                                                    <li>
                                                        <a href="form_bootstrap_basic.html"> Basic </a>
                                                    </li>
                                                    <li>
                                                        <a href="form_bootstrap_rounded.html"> Rounded </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="sub-sub-submenu-list">
                                                <a href="#forms-input-group" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> Input Group <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="forms-input-group" data-parent="#forms">
                                                    <li>
                                                        <a href="form_input_group_basic.html"> Basic </a>
                                                    </li>
                                                    <li>
                                                        <a href="form_input_group_rounded.html"> Rounded </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="form_bootstrap_material.html"> Material </a>
                                            </li>
                                            <li class="sub-sub-submenu-list">
                                                <a href="#forms-layout" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> Layouts <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="forms-layout" data-parent="#forms">
                                                    <li>
                                                        <a href="form_layouts.html"> Basic </a>
                                                    </li>
                                                    <li>
                                                        <a href="form_layouts_rounded.html"> Rounded </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="sub-sub-submenu-list">
                                                <a href="#forms-validation" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> Validation <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="forms-validation" data-parent="#forms">
                                                    <li>
                                                        <a href="form_validation.html"> Bootstrap </a>
                                                    </li>
                                                    <li>
                                                        <a href="form_jqvalidation.html"> jQuery </a>
                                                    </li>
                                                    <li>
                                                        <a href="form_validation_material.html"> Custom </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="form_input_mask.html"> Input Mask </a>
                                            </li>
                                            <li>
                                                <a href="form_bootstrap_select.html"> Bootstrap Select </a>
                                            </li>
                                            <li>
                                                <a href="form_select2.html"> Select2 </a>
                                            </li>
                                            <li>
                                                <a href="form_bootstrap_touchspin.html"> TouchSpin </a>
                                            </li>
                                            <li>
                                                <a href="form_multiselect.html"> Multi Select </a>
                                            </li>
                                            <li>
                                                <a href="form_maxlength.html"> Maxlength </a>
                                            </li>
                                            <li>
                                                <a href="form_repeater.html"> Repeater </a>
                                            </li>
                                            <li>
                                                <a href="form_checkbox_radio.html"> Checkbox and Radio </a>
                                            </li>

                                            <li class="sub-sub-submenu-list">
                                                <a href="#forms-wizard" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> Wizards <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="forms-wizard" data-parent="#forms">
                                                    <li>
                                                        <a href="form_bs_wizard.html"> Bootstrap </a>
                                                    </li>
                                                    <li>
                                                        <a href="form_wizard.html"> jQuery Steps </a>
                                                    </li>
                                                </ul>
                                            </li>

                                            <li>
                                                <a href="form_fileupload.html"> File Upload </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-4">
                                <ul class="list-unstyled">
                                    <li>
                                        <a href="#editors" data-toggle="collapse" aria-expanded="true" class="dropdown-toggle"> EDITORS <i class="flaticon-dot-three"></i> </a>
                                        <ul class="collapse list-unstyled sub-submenu show" id="editors">
                                            <li>
                                                <a href="editor_tinymce.html"> Tinymce </a>
                                            </li>
                                            <li>
                                                <a href="editor_quill.html"> Quill </a>
                                            </li>
                                            <li>
                                                <a href="editor_markdown.html"> Markdown </a>
                                            </li>
                                            <li>
                                                <a href="editor_contenttools.html"> ContentTools </a>
                                            </li>
                                            <li>
                                                <a href="editor_summernote.html"> Summernote </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>

                <li class="menu">
                    <a href="#pages" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <div class="">
                            <i class="flaticon-copy"></i>
                            <span>Pages</span>
                        </div>
                        <div>
                            <i class="flaticon-down-arrow"></i>
                        </div>
                    </a>
                    <div class="collapse submenu list-unstyled" id="pages" data-parent="#topAccordion">
                        <div class="row">
                            <div class="col-lg-4">
                                <ul class="list-unstyled">
                                    <li>
                                        <a href="#ecommerce" data-toggle="collapse" aria-expanded="true" class="dropdown-toggle"> ECOMMERCE <i class="flaticon-dot-three"></i> </a>
                                        <ul class="collapse list-unstyled sub-submenu show" id="ecommerce">
                                            <li>
                                                <a href="ecommerce_orders.html"> Orders </a>
                                            </li>
                                            <li>
                                                <a href="ecommerce_product.html"> Products </a>
                                            </li>
                                            <li>
                                                <a href="ecommerce_product_catalog.html"> Product Catalog </a>
                                            </li>
                                            <li class="sub-sub-submenu-list">
                                                <a href="#product-details" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"  data-parent="#ecommerce"> Product Details <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="product-details">
                                                    <li>
                                                        <a href="ecommerce_product_details_1.html"> Product Details 1 </a>
                                                    </li>
                                                    <li>
                                                        <a href="ecommerce_product_details_2.html"> Product Details 2 </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="ecommerce_addedit_product.html"> Add/Edit Products </a>
                                            </li>
                                            <li>
                                                <a href="ecommerce_addedit_categories.html"> Add/Edit Categories </a>
                                            </li>
                                            <li>
                                                <a href="ecommerce_view_cart.html"> View Cart </a>
                                            </li>
                                            <li>
                                                <a href="ecommerce_view_payments.html"> View Payments </a>
                                            </li>
                                            <li class="active">
                                                <a href="ecommerce_view_customers.html"> View Customers </a>
                                            </li>
                                            <li>
                                                <a href="ecommerce_checkout.html"> Checkout </a>
                                            </li>
                                            <li>
                                                <a href="ecommerce_invoices.html"> Invoice </a>
                                            </li>
                                            <li>
                                                <a href="ecommerce_shipments.html"> Shipments </a>
                                            </li>
                                            <li>
                                                <a href="ecommerce_products_cart.html"> Products in Cart </a>
                                            </li>
                                            <li>
                                                <a href="ecommerce_coupons.html"> Coupons </a>
                                            </li>
                                            <li>
                                                <a href="ecommerce_low_stock.html"> Low Stock </a>
                                            </li>
                                            <li>
                                                <a href="ecommerce_best_sellers.html"> Best Sellers </a>
                                            </li>
                                            <li>
                                                <a href="ecommerce_refunds.html"> Refunds </a>
                                            </li>
                                            <li>
                                                <a href="ecommerce_search_terms.html"> Search Terms </a>
                                            </li>
                                            <li>
                                                <a href="ecommerce_newsletters.html"> Newsletters </a>
                                            </li>
                                            <li>
                                                <a href="ecommerce_wizards.html"> Payment Wizard </a>
                                            </li>
                                            <li>
                                                <a href="ecommerce_reviews.html"> Reviews </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-4">
                                <ul class="list-unstyled">
                                    <li>
                                        <a href="#page" data-toggle="collapse" aria-expanded="true" class="dropdown-toggle"> PAGES <i class="flaticon-dot-three"></i> </a>
                                        <ul class="collapse list-unstyled sub-submenu show" id="page">
                                            <li>
                                                <a href="pages_blank_page.html"> Blank Page</a>
                                            </li>
                                            <li>
                                                <a href="pages_helpdesk.html"> Helpdesk </a>
                                            </li>
                                            <li>
                                                <a href="pages_contact_us.html"> Contact Form </a>
                                            </li>
                                            <li>
                                                <a href="pages_faq.html"> FAQ </a>
                                            </li>
                                            <li>
                                                <a href="pages_blog.html"> Blog </a>
                                            </li>
                                            <li>
                                                <a href="pages_privacy.html"> Privacy Policy </a>
                                            </li>
                                            <li>
                                                <a href="pages_cookie_consent.html"> Cookie Consent </a>
                                            </li>
                                            <li>
                                                <a href="pages_landing_page.html" target="_blank"> Landing Page </a>
                                            </li>
                                            <li>
                                                <a href="pages_coming_soon.html"> Coming Soon </a>
                                            </li>

                                            <li class="sub-sub-submenu-list">
                                                <a href="#pages-error" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> Error <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="pages-error" data-parent="#pages">
                                                    <li>
                                                        <a href="pages_error404.html"> 404 1 </a>
                                                    </li>
                                                    <li>
                                                        <a href="pages_error404-2.html"> 404 2 </a>
                                                    </li>
                                                    <li>
                                                        <a href="pages_error500.html"> 500 1 </a>
                                                    </li>
                                                    <li>
                                                        <a href="pages_error500-2.html"> 500 2 </a>
                                                    </li>
                                                    <li>
                                                        <a href="pages_error503.html"> 503 1 </a>
                                                    </li>
                                                    <li>
                                                        <a href="pages_error503-2.html"> 503 2 </a>
                                                    </li>
                                                    <li>
                                                        <a href="pages_maintenence.html"> Maintanence </a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-4">
                                <ul class="list-unstyled">
                                    <li>
                                        <a href="#users" data-toggle="collapse" aria-expanded="true" class="dropdown-toggle"> USERS <i class="flaticon-dot-three"></i> </a>
                                        <ul class="collapse list-unstyled sub-submenu show" id="users">
                                            <li>
                                                <a href="user_profile.html"> Profile </a>
                                            </li>
                                            <li>
                                                <a href="user_account_setting.html"> Account Settings </a>
                                            </li>
                                            <li class="sub-sub-submenu-list">
                                                <a href="#user-login" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> Login <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="user-login" data-parent="#users">
                                                    <li>
                                                        <a href="user_login_1.html"> Login 1 </a>
                                                    </li>
                                                    <li>
                                                        <a href="user_login_2.html"> Login 2 </a>
                                                    </li>
                                                    <li>
                                                        <a href="user_login_3.html"> Login 3 </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="sub-sub-submenu-list">
                                                <a href="#user-register" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> Register <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="user-register" data-parent="#users">
                                                    <li>
                                                        <a href="user_register_1.html"> Register 1 </a>
                                                    </li>
                                                    <li>
                                                        <a href="user_register_2.html"> Register 2 </a>
                                                    </li>
                                                    <li>
                                                        <a href="user_register_3.html"> Register 3 </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="sub-sub-submenu-list">
                                                <a href="#user-passRecovery" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> Password Recovery <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="user-passRecovery" data-parent="#users">
                                                    <li>
                                                        <a href="user_pass_recovery_1.html"> Password Recovery 1 </a>
                                                    </li>
                                                    <li>
                                                        <a href="user_pass_recovery_2.html"> Password Recovery 2 </a>
                                                    </li>
                                                    <li>
                                                        <a href="user_pass_recovery_3.html"> Password Recovery 3 </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="sub-sub-submenu-list">
                                                <a href="#user-lockscreen" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> Lockscreen <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="user-lockscreen" data-parent="#users">
                                                    <li>
                                                        <a href="user_lockscreen_1.html"> Lockscreen 1 </a>
                                                    </li>
                                                    <li>
                                                        <a href="user_lockscreen_2.html"> Lockscreen 2 </a>
                                                    </li>
                                                    <li>
                                                        <a href="user_lockscreen_3.html"> Lockscreen 3 </a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>

                <li class="menu">
                    <a href="#more" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">
                        <div class="">
                            <i class="flaticon-plus"></i>
                            <span class="d-lg-none">More</span>
                        </div>
                        <div class="d-lg-none">
                            <i class="flaticon-down-arrow"></i>
                        </div>
                    </a>
                    <div class="collapse submenu list-unstyled" id="more" data-parent="#topAccordion">
                        <div class="row">
                            <div class="col-lg-3">
                                <ul class="list-unstyled">
                                    <li>
                                        <a href="#modules" data-toggle="collapse" aria-expanded="true" class="dropdown-toggle"> MODULES <i class="flaticon-dot-three"></i> </a>
                                        <ul class="collapse list-unstyled sub-submenu show" id="modules">
                                            <li>
                                                <a href="modules_widgets.html"> Widgets </a>
                                            </li>
                                            <li>
                                                <a href="modules_table_and_event.html"> Tables &amp; Events </a>
                                            </li>
                                            <li>
                                                <a href="modules_charts_and_maps.html"> Charts &amp; Maps </a>
                                            </li>
                                            <li>
                                                <a href="modules_weather_and_calendar.html"> Weather &amp; Calendar </a>
                                            </li>
                                            <li>
                                                <a href="modules_cards.html"> Cards </a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#dragndrop" data-toggle="collapse" aria-expanded="true" class="dropdown-toggle"> DRAG AND DROP <i class="flaticon-dot-three"></i> </a>
                                        <ul class="collapse list-unstyled sub-submenu show" id="dragndrop">
                                            <li>
                                                <a href="dragndrop_gridstack.html"> Grid Stack</a>
                                            </li>
                                            <li>
                                                <a href="dragndrop_dragula.html"> Dragula</a>
                                            </li>
                                            <li class="sub-sub-submenu-list">
                                                <a href="#dragndrop-jqueryui" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> jQuery UI <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="dragndrop-jqueryui" data-parent="#dragndrop">
                                                    <li>
                                                        <a href="dragndrop_ui_product_cart.html"> Shopping Cart </a>
                                                    </li>
                                                    <li>
                                                        <a href="dragndrop_scrumboard.html"> Scrum Task Board</a>
                                                    </li>
                                                    <li>
                                                        <a href="dragndrop_scroll_bars.html"> Scrollbar</a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-3">
                                <ul class="list-unstyled">
                                    <li>
                                        <a href="#charts" data-toggle="collapse" aria-expanded="true" class="dropdown-toggle"> CHARTS <i class="flaticon-dot-three"></i> </a>
                                        <ul class="collapse list-unstyled sub-submenu show" id="charts">
                                            <li class="sub-sub-submenu-list">
                                                <a href="#chart-amcharts" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> amCharts <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="chart-amcharts" data-parent="#charts">
                                                    <li>
                                                        <a href="am_column_and_barchart.html"> Column &amp; Bar </a>
                                                    </li>
                                                    <li>
                                                        <a href="am_line_and_areachart.html"> Line &amp; Area </a>
                                                    </li>
                                                    <li>
                                                        <a href="am_pie_and_donutchart.html"> Pie &amp; Donut </a>
                                                    </li>
                                                    <li>
                                                        <a href="am_gauge_and_otherchart.html"> Gauges  &amp; Other </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="sub-sub-submenu-list">
                                                <a href="#chart-c3chart" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> C3 <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="chart-c3chart" data-parent="#charts">
                                                    <li>
                                                        <a href="charts_c3_chart.html"> Simple</a>
                                                    </li>
                                                    <li>
                                                        <a href="charts_c3_api.html"> Api </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="charts_cssplot.html"> CSS Plot </a>
                                            </li>
                                            <li>
                                                <a href="charts_morris.html"> Morris </a>
                                            </li>
                                            <li>
                                                <a href="charts_flowchart.html"> Flowcharts </a>
                                            </li>
                                            <li>
                                                <a href="charts_jQuery_sparklines.html"> jQuery Sparklines </a>
                                            </li>
                                            <li class="sub-sub-submenu-list">
                                                <a href="#chart-echart" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> eCharts <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="chart-echart" data-parent="#charts">
                                                    <li>
                                                        <a href="charts_echart_basic.html"> Basic </a>
                                                    </li>
                                                    <li>
                                                        <a href="charts_echart_candlestick.html"> Candlestick </a>
                                                    </li>
                                                    <li>
                                                        <a href="charts_echart_funnel_radar.html"> Funnel & Radar  </a>
                                                    </li>
                                                    <li>
                                                        <a href="charts_echart_scatters.html"> Scatter </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="sub-sub-submenu-list">
                                                <a href="#chart-chartist" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> Chartist <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="chart-chartist" data-parent="#charts">
                                                    <li>
                                                        <a href="charts_chartist_bar.html"> Bar </a>
                                                    </li>
                                                    <li>
                                                        <a href="charts_chartist_line.html"> Line &amp; Area </a>
                                                    </li>
                                                    <li>
                                                        <a href="charts_chartist_pie.html"> Pie </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="charts_google.html"> Google </a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-3">
                                <ul class="list-unstyled">
                                    <li>
                                        <a href="#maps" data-toggle="collapse" aria-expanded="true" class="dropdown-toggle"> MAPS <i class="flaticon-dot-three"></i> </a>
                                        <ul class="collapse list-unstyled sub-submenu show" id="maps">
                                            <li class="sub-sub-submenu-list">
                                                <a href="#map-googleMaps" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> Google <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="map-googleMaps" data-parent="#maps">
                                                    <li>
                                                        <a href="map_google_basic.html"> Basic </a>
                                                    </li>
                                                    <li>
                                                        <a href="map_google_event.html"> Event </a>
                                                    </li>
                                                    <li>
                                                        <a href="map_google_controls_interaction.html"> Controls and Interaction </a>
                                                    </li>
                                                    <li>
                                                        <a href="map_google_styles.html"> Styles </a>
                                                    </li>
                                                    <li>
                                                        <a href="map_google_other.html"> Other </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="sub-sub-submenu-list">
                                                <a href="#map-jqMapael" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> jquery Mapael <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="map-jqMapael" data-parent="#maps">
                                                    <li>
                                                        <a href="map_jquerymapael_basic.html"> Basic </a>
                                                    </li>
                                                    <li>
                                                        <a href="map_jquerymapael_advanced.html"> Advanced </a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a href="map_jhere.html"> jhere </a>
                                            </li>
                                            <li>
                                                <a href="map_open_layers.html"> OpenLayers </a>
                                            </li>
                                            <li class="sub-sub-submenu-list">
                                                <a href="#map-vMaps" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> Vector Maps <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="map-vMaps" data-parent="#maps">
                                                    <li>
                                                        <a href="map_amvector.html"> amVector</a>
                                                    </li>
                                                    <li>
                                                        <a href="map_jvector.html"> jVector</a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-lg-3">
                                <ul class="list-unstyled">
                                    <li>
                                        <a href="#apps" data-toggle="collapse" aria-expanded="true" class="dropdown-toggle"> APPS <i class="flaticon-dot-three"></i> </a>
                                        <ul class="collapse list-unstyled sub-submenu show" id="apps">
                                            <li>
                                                <a href="apps_chat.html"> Chat </a>
                                            </li>
                                            <li>
                                                <a href="apps_mailbox.html"> Mailbox </a>
                                            </li>
                                            <li>
                                                <a href="apps_mailbox_with_chat.html"> Mailbox With Chat </a>
                                            </li>
                                            <li>
                                                <a href="apps_newsletter.html"> Newsletter </a>
                                            </li>
                                            <li>
                                                <a href="apps_scheduler.html"> Scheduler </a>
                                            </li>
                                            <li class="sub-sub-submenu-list">
                                                <a href="#apps-calendars" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"> Calendar <i class="flaticon-right-arrow"></i> </a>
                                                <ul class="collapse list-unstyled sub-submenu" id="apps-calendars" data-parent="#apps-calendars">
                                                    <li>
                                                        <a href="apps_basic_calendar.html"> Basic </a>
                                                    </li>
                                                    <li>
                                                        <a href="apps_full_calendar.html"> Full Calendar </a>
                                                    </li>
                                                    <li>
                                                        <a href="apps_drag_n_drop_calendar.html"> Drag n Drop </a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
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
                        <form method="post" action="ServletLogin2" id="test-form" enctype="multipart/form-data" class="white-popup-block mfp-hide col-xl-12 col-lg-12 col-md-12 layout-spacing">
                            <c:if test="${alertEmailError=='Email Exits'}">
                                <div class="alert alert-arrow-left alert-icon-left alert-light-danger mb-4" role="alert">
                                    <i class="flaticon-cancel-12 close" data-dismiss="alert"></i>
                                    <i class="flaticon-bell-13"></i>
                                    <strong>${alertEmailError}!</strong><br>
                                    The email you used exists.
                                </div>
                            </c:if>
                            <div class="info">
                                <h6 class="mt-4">General Information</h6>
                                <div class="row">
                                        <div class="form">
                                            <input type="hidden" name="command" value="athletes">
                                            <input type="hidden" name="userType" value="${userInfo.userType}">
                                            <input type="hidden" name="country" value="${userInfo.country}">
                                            <input type="hidden" name="id" id="id" value="0">
                                            <input type="hidden" name="action" id="action" value="setAthlete">
                                            <div class="upload ml-md-5 mt-4 pr-md-4">
                                                <input type="file" id="input-file-max-fs"   name="image" class="dropify" data-default-file="asserts/img/200x200.jpg" data-max-file-size="2M" />
                                                <p class="mt-2"><i class="flaticon-cloud-upload mr-1"></i> Upload Picture</p>
                                            </div>
                                            <div class="form-group col-md-9">
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <input class="mdl-textfield__input" name="fullName" type="text" id="fullName" value="${alertEmailError2.fullName}">
                                                    <label class="mdl-textfield__label" for="fullName">Full Name</label>
                                                </div>
                                            </div>

                                            <div class="form-group col-md-9">
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <input class="mdl-textfield__input" name="email" type="email" id="email" value="${alertEmailError2.email}">
                                                    <label class="mdl-textfield__label" for="email">Email address</label>
                                                </div>
                                            </div>
                                            <div class="form-group col-md-9">
                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                                    <label class="mdl-textfield__label" for="sport">Sport</label>
                                                    <select name="sport" class="mdl-textfield__input form-control basic" aria-selected="${alertEmailError2.sport}" id="sport">

                                                    </select>
                                                </div>
                                            </div>

                                            <div class="col-md-12 text-center">
                                                <button id="button" class="btn btn-warning btn-rounded mt-5 mb-0">Submit</button>
                                            </div>
                                        </div>
                                </div>
                            </div>
                        </form>
                        <c:if test="${alertEmailError2!=null}">
                           <script>
                               window.onload=function (){
                                   document.getElementById("popup").click();
                               }
                           </script>
                        </c:if>

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