
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Dashboard V.1 | jeweler - Material Admin Template</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- favicon
                    ============================================ -->
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
        <!-- Google Fonts
                    ============================================ -->
        <link href="https://fonts.googleapis.com/css?family=Play:400,700" rel="stylesheet">
        <!-- Bootstrap CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/adminstyle/css/bootstrap.min.css"/>">
        <!-- Bootstrap CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/adminstyle/css/font-awesome.min.css"/>">
        <!-- owl.carousel CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/adminstyle/css/owl.carousel.css"/>">
        <link rel="stylesheet" href="<c:url value="/adminstyle/css/owl.theme.css"/>">
        <link rel="stylesheet" href="<c:url value="/adminstyle/css/owl.transitions.css"/>">
        <!-- animate CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/adminstyle/css/animate.css"/>">
        <!-- normalize CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/adminstyle/css/normalize.css"/>">
        <!-- meanmenu icon CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/adminstyle/css/meanmenu.min.css"/>">
        <!-- main CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/adminstyle/css/main.css"/>">
        <!-- morrisjs CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/adminstyle/css/morrisjs/morris.css"/>">
        <!-- mCustomScrollbar CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/adminstyle/css/scrollbar/jquery.mCustomScrollbar.min.css"/>">
        <!-- metisMenu CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/adminstyle/css/metisMenu/metisMenu.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/adminstyle/css/metisMenu/metisMenu-vertical.css"/>">
        <!-- calendar CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/adminstyle/css/calendar/fullcalendar.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/adminstyle/css/calendar/fullcalendar.print.min.css"/>">
        <!-- style CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/adminstyle/style.css"/>">
        <!-- responsive CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/adminstyle/css/responsive.css"/>">
        <!-- modernizr JS
                    ============================================ -->
        <script src="<c:url value="/adminstyle/js/vendor/modernizr-2.8.3.min.js"/>"></script>
    </head>

    <body>
        <!--[if lt IE 8]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->

        <div class="left-sidebar-pro">
            <nav id="sidebar" class="">
                <div class="sidebar-header">
                    <a href="index.html"><img class="main-logo" src="<c:url value="/adminstyle/img/logo/logo.png"/>" alt="" /></a>
                    <strong><img src="<c:url value="/adminstyle/img/logo/logosn.png"/>" alt="" /></strong>
                </div>
                <div class="left-custom-menu-adp-wrap comment-scrollbar">
                    <nav class="sidebar-nav left-sidebar-menu-pro">
                        <ul class="metismenu" id="menu1">
                            <li class="active">
                                <a class="has-arrow" href="index.html">
                                    <i class="fa big-icon fa-home icon-wrap"></i>
                                    <span class="mini-click-non">Ecommerce</span>
                                </a>
                                <ul class="submenu-angle" aria-expanded="true">
                                    <ul class="submenu-angle" aria-expanded="true">
                                        <li><a title="Dashboard v.1" href="${pageContext.servletContext.contextPath}/admin.html"><i class="fa fa-bullseye sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Dashboard v.1</span></a></li>
                                        <li><a title="Quản Lý Sản Phẩm" href="${pageContext.servletContext.contextPath}/admin/sanpham.html"> <span class="mini-sub-pro">Sản Phẩm</span></a></li>
                                        <li><a title="Quản Lý Loại Sản Phẩm" href="${pageContext.servletContext.contextPath}/admin/loaisanpham.html"><span class="mini-sub-pro"> Loại Sản Phẩm</span></a></li>
                                        <li><a title="Quản Lý Hãng Sản Xuất" href="${pageContext.servletContext.contextPath}/admin/nhasanxuat.html"> <span class="mini-sub-pro">Hãng Sản Xuất</span></a></li>
                                        <li><a title="Quản Lý Đơn Hàng" href="${pageContext.servletContext.contextPath}/admin/donhang.html"> <span class="mini-sub-pro">Đơn Hàng</span></a></li>
                                        <li><a title="Quản Lý Thông Tin Dịch Vụ" href="${pageContext.servletContext.contextPath}/admin/dichvu.html"><span class="mini-sub-pro">Dịch Vụ</span></a></li>
                                        <li class="page-item"><a class="page-link" href="${pageContext.servletContext.contextPath}/admin/thongke.html?thang=12">Thong ke</a></li>
                                        <li><a title="Analytics" href="analytics.html"><i class="fa fa-line-chart sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Analytics</span></a></li>
                                        <li><a title="Widgets" href="widgets.html"><i class="fa fa-magnet sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Widgets</span></a></li>
                                    </ul>
                                </ul>
                            </li>

                        </ul>
                    </nav>
                </div>
            </nav>
        </div>
        <!-- Start Welcome area -->
        <div class="all-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="logo-pro">
                            <a href="index.html"><img class="main-logo" src="<c:url value="/adminstyle/img/logo/logo.png"/>" alt="" /></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-advance-area">
                <div class="header-top-area">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="header-top-wraper">
                                    <div class="row">
                                        <div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">
                                            <div class="menu-switcher-pro">
                                                <button type="button" id="sidebarCollapse" class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn">
                                                    <i class="fa fa-bars"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-7 col-sm-6 col-xs-12">
                                            <div class="header-top-menu tabl-d-n">
                                                <ul class="nav navbar-nav mai-top-nav">
                                                    <li class="nav-item"><a href="#" class="nav-link">Home</a>
                                                    </li>
                                                    <li class="nav-item"><a href="#" class="nav-link">About</a>
                                                    </li>
                                                    <li class="nav-item"><a href="#" class="nav-link">Services</a>
                                                    </li>
                                                    <li class="nav-item"><a href="#" class="nav-link">Support</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                                            <div class="header-right-info">
                                                <ul class="nav navbar-nav mai-top-nav header-right-menu">
                                                    <li class="nav-item dropdown">
                                                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><i class="fa fa-envelope-o adminpro-chat-pro" aria-hidden="true"></i><span class="indicator-ms"></span></a>
                                                        <div role="menu" class="author-message-top dropdown-menu animated zoomIn">
                                                            <div class="message-single-top">
                                                                <h1>Message</h1>
                                                            </div>
                                                            <ul class="message-menu">
                                                                <li>
                                                                    <a href="#">
                                                                        <div class="message-img">
                                                                            <img src="<c:url value="adminstyle/img/contact/1.jpg"/>" alt="">
                                                                                 </div>
                                                                                 <div class="message-content">
                                                                                 <span class="message-date">16 Sept</span>
                                                                                <h2>Advanda Cro</h2>
                                                                                <p>Please done this project as soon possible.</p>
                                                                            </div>
                                                                        </a>
                                                                    </li>

                                                                </ul>
                                                                <div class="message-view">
                                                                    <a href="#">View All Messages</a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="nav-item"><a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><i class="fa fa-bell-o" aria-hidden="true"></i><span class="indicator-nt"></span></a>
                                                            <div role="menu" class="notification-author dropdown-menu animated zoomIn">
                                                                <div class="notification-single-top">
                                                                    <h1>Notifications</h1>
                                                                </div>
                                                                <ul class="notification-menu">
                                                                    <li>
                                                                        <a href="#">
                                                                            <div class="notification-icon">
                                                                                <i class="fa fa-check adminpro-checked-pro admin-check-pro" aria-hidden="true"></i>
                                                                            </div>
                                                                            <div class="notification-content">
                                                                                <span class="notification-date">16 Sept</span>
                                                                                <h2>Advanda Cro</h2>
                                                                                <p>Please done this project as soon possible.</p>
                                                                            </div>
                                                                        </a>
                                                                    </li>

                                                                </ul>
                                                                <div class="notification-view">
                                                                    <a href="#">View All Notification</a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
                                                                <i class="fa fa-user adminpro-user-rounded header-riht-inf" aria-hidden="true"></i>
                                                                <span class="admin-name">Advanda Cro</span>
                                                                <i class="fa fa-angle-down adminpro-icon adminpro-down-arrow"></i>
                                                            </a>
                                                            <ul role="menu" class="dropdown-header-top author-log dropdown-menu animated zoomIn">
                                                                <li><a href="register.html"><span class="fa fa-home author-log-ic"></span>Register</a>
                                                                </li>
                                                                <li><a href="#"><span class="fa fa-user author-log-ic"></span>My Profile</a>
                                                                </li>
                                                                <li><a href="lock.html"><span class="fa fa-diamond author-log-ic"></span> Lock</a>
                                                                </li>
                                                                <li><a href="#"><span class="fa fa-cog author-log-ic"></span>Settings</a>
                                                                </li>
                                                                <li><a href="login.html"><span class="fa fa-lock author-log-ic"></span>Log Out</a>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                        <li class="nav-item nav-setting-open"><a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><i class="fa fa-tasks"></i></a>

                                                            <div role="menu" class="admintab-wrap menu-setting-wrap menu-setting-wrap-bg dropdown-menu animated zoomIn">
                                                                <ul class="nav nav-tabs custon-set-tab">
                                                                    <li class="active"><a data-toggle="tab" href="#Notes">News</a>
                                                                    </li>
                                                                    <li><a data-toggle="tab" href="#Projects">Activity</a>
                                                                    </li>
                                                                    <li><a data-toggle="tab" href="#Settings">Settings</a>
                                                                    </li>
                                                                </ul>

                                                                <div class="tab-content custom-bdr-nt">
                                                                    <div id="Notes" class="tab-pane fade in active">
                                                                        <div class="notes-area-wrap">
                                                                            <div class="note-heading-indicate">
                                                                                <h2><i class="fa fa-comments-o"></i> Latest News</h2>
                                                                                <p>You have 10 New News.</p>
                                                                            </div>
                                                                            <div class="notes-list-area notes-menu-scrollbar">
                                                                                <ul class="notes-menu-list">
                                                                                    <li>
                                                                                        <a href="#">
                                                                                            <div class="notes-list-flow">
                                                                                                <div class="notes-img">
                                                                                                    <img src="<c:url value="adminstyle/img/contact/4.jpg"/>" alt="" />
                                                                                                </div>
                                                                                                <div class="notes-content">
                                                                                                    <p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
                                                                                                    <span>Yesterday 2:45 pm</span>
                                                                                                </div>
                                                                                            </div>
                                                                                        </a>
                                                                                    </li>

                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div id="Projects" class="tab-pane fade">
                                                                        <div class="projects-settings-wrap">
                                                                            <div class="note-heading-indicate">
                                                                                <h2><i class="fa fa-cube"></i> Recent Activity</h2>
                                                                                <p> You have 20 Recent Activity.</p>
                                                                            </div>
                                                                            <div class="project-st-list-area project-st-menu-scrollbar">
                                                                                <ul class="projects-st-menu-list">
                                                                                    <li>
                                                                                        <a href="#">
                                                                                            <div class="project-list-flow">
                                                                                                <div class="projects-st-heading">
                                                                                                    <h2>New User Registered</h2>
                                                                                                    <p> The point of using Lorem Ipsum is that it has a more or less normal.</p>
                                                                                                    <span class="project-st-time">1 hours ago</span>
                                                                                                </div>
                                                                                            </div>
                                                                                        </a>
                                                                                    </li>

                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div id="Settings" class="tab-pane fade">
                                                                        <div class="setting-panel-area">
                                                                            <div class="note-heading-indicate">
                                                                                <h2><i class="fa fa-gears"></i> Settings Panel</h2>
                                                                                <p> You have 20 Settings. 5 not completed.</p>
                                                                            </div>
                                                                            <ul class="setting-panel-list">
                                                                                <li>
                                                                                    <div class="checkbox-setting-pro">
                                                                                        <div class="checkbox-title-pro">
                                                                                            <h2>Show notifications</h2>
                                                                                            <div class="ts-custom-check">
                                                                                                <div class="onoffswitch">
                                                                                                    <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="example">
                                                                                                    <label class="onoffswitch-label" for="example">
                                                                                                        <span class="onoffswitch-inner"></span>
                                                                                                        <span class="onoffswitch-switch"></span>
                                                                                                    </label>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </li>

                                                                            </ul>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
