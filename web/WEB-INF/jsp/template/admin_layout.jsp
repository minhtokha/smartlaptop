<%-- 
    Document   : admin_layout
    Created on : Oct 8, 2018, 9:22:59 PM
    Author     : MINH TO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>

<!--header-->
<tiles:insertAttribute name="header"/>
    <!-- Start Welcome area -->
<!--content-->
<tiles:insertAttribute name="content"/>
    <!-- jquery
		============================================ -->
<tiles:insertAttribute name="footer"/>
    <!--footer-->