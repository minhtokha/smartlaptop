<%-- 
    Document   : login
    Created on : Oct 25, 2018, 11:44:39 PM
    Author     : MINH TO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Login | admin</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="<c:url value="/adminstyle/img/favicon.ico"/>">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
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
    <!-- forms CSS
		============================================ -->
    <link rel="stylesheet" href="<c:url value="/adminstyle/css/form/all-type-forms.css"/>">
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

    <div class="color-line"></div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="back-link back-backend">
                    <a href="index.html" class="btn btn-primary">Back to Dashboard</a>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"></div>
            <div class="col-md-4 col-md-4 col-sm-4 col-xs-12">
                <div class="text-center m-b-md custom-login">
                    <h3>PLEASE LOGIN TO APP</h3>
                    <p>This is the best app ever!</p>
                </div>
                <div class="hpanel">
                    <div class="panel-body">
                        <form action="admin/login.html" id="loginForm" method="post">
                            <div class="form-group">
                                <label class="control-label" for="username">Username</label>
                                <input type="text" placeholder="username" title="Please enter you username" required="" value="" name="username" id="username" class="form-control">
                                <span class="help-block small">Your unique username to app</span>
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="password">Password</label>
                                <input type="password" title="Please enter your password" placeholder="******" required="" value="" name="password" id="password" class="form-control">
                                <span class="help-block small">Your strong password</span>
                            </div>
                            <div class="checkbox login-checkbox">
                                <label>
					<input type="checkbox" class="i-checks"> Remember me </label>
                                        <label >${error}</label>
                                <p class="help-block small">(if this is a private computer)</p>
                            </div>
                            
                            <button class="btn btn-success btn-block loginbtn">Login</button>
                            <a class="btn btn-default btn-block" href="#">Register</a>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12"></div>
        </div>
        <div class="row">
            <div class="col-md-12 col-md-12 col-sm-12 col-xs-12 text-center">
                <p>Copyright © 2018 <a href="https://colorlib.com/wp/templates/">Colorlib</a> All rights reserved.</p>
            </div>
        </div>
    </div>

    <!-- jquery
		============================================ -->
    <script src="<c:url value="/adminstyle/js/vendor/jquery-1.11.3.min.js"/>"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="<c:url value="/adminstyle/js/bootstrap.min.js"/>"></script>
    <!-- wow JS
		============================================ -->
    <script src="<c:url value="/adminstyle/js/wow.min.js"/>"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="<c:url value="/adminstyle/js/jquery-price-slider.js"/>"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="<c:url value="/adminstyle/js/jquery.meanmenu.js"/>"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="<c:url value="/adminstyle/js/owl.carousel.min.js"/>"></script>
    <!-- sticky JS
		============================================ -->
    <script src="<c:url value="/adminstyle/js/jquery.sticky.js"/>"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="<c:url value="/adminstyle/js/jquery.scrollUp.min.js"/>"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="<c:url value="/adminstyle/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"/>"></script>
    <script src="<c:url value="/adminstyle/js/scrollbar/mCustomScrollbar-active.js"/>"></script>
    <!-- metisMenu JS
		============================================ -->
    <script src="<c:url value="/adminstyle/js/metisMenu/metisMenu.min.js"/>"></script>
    <script src="<c:url value="/adminstyle/js/metisMenu/metisMenu-active.js"/>"></script>
    <!-- tab JS
		============================================ -->
    <script src="<c:url value="/adminstyle/js/tab.js"/>"></script>
    <!-- icheck JS
		============================================ -->
    <script src="<c:url value="/adminstyle/js/icheck/icheck.min.js"/>"></script>
    <script src="<c:url value="/adminstyle/js/icheck/icheck-active.js"/>"></script>
    <!-- plugins JS
		============================================ -->
    <script src="<c:url value="/adminstyle/js/plugins.js"/>"></script>
    <!-- main JS
		============================================ -->
    <script src="<c:url value="/adminstyle/js/main.js"/>"></script>
</body>

</html>