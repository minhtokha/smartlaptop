<%-- 
    Document   : layout
    Created on : Oct 8, 2018, 7:41:14 PM
    Author     : MINH TO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Electronix Store</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="<c:url value="/css/style.css"/>" />

<script type="text/javascript" src="<c:url value="/js/boxOver.js"/>"></script>

</head>
<body>
<div id="main_container">
  <div class="top_bar">
    <div class="top_search">
      <div class="search_text"><a href="#">Advanced Search</a></div>
      <form:form action="${pageContext.servletContext.contextPath}/index/search.html" method="get">
      <input type="text" class="search_input" name="search" />
      <button type="submit" value="">
      <input type="image" src="<c:url value="/images/search.gif"/>" class="search_bt"/>
      </button>
      </form:form>
    </div>
    <div class="languages">
      <div class="lang_text">Languages:</div>
      <a href="#" class="lang"><img src="<c:url value="/images/en.gif"/>" alt="" border="0" /></a> <a href="#" class="lang"><img src="<c:url value="/images/de.gif"/>" alt="" border="0" /></a> </div>
  </div>
      <tiles:insertAttribute name="header"/>
  <div id="main_content">

    <!-- end of menu tab -->
    <tiles:insertAttribute name="menu"/>
    <div class="crumb_navigation"> Navigation: <span class="current">Home</span> </div>
  
   
   <tiles:insertAttribute name="content"/>
  

    
    <!-- end of left content -->
   
    <!-- end of center content -->

    <!-- end of right content -->
  </div>
  <!-- end of main content -->
  <tiles:insertAttribute name="footer"/>
</div>
<!-- end of main_container -->
</body>
</html>


