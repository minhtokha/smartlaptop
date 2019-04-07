<%-- 
    Document   : dichvudetail
    Created on : Nov 22, 2018, 2:40:38 PM
    Author     : MINH TO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h1>${dv.tentt}</h1>
<div>
    <p>
        <c:if test="${dv.noidung!=null}">
       ${dv.noidung}
       </c:if>  
    </p>
    <p>
        <c:if test="${dv.hinhanh!=null}">
        <img src="<c:url value="/images/dichvu/${dv.hinhanh}"/>">
        </c:if>
    </p>
    <p><c:if test="${dv.noidung1!=null}">
        ${dv.noidung1}
        </c:if>
    </p> 
    <p>
        <c:if test="${dv.hinhanh1!=null}">
        <img src="<c:url value="/images/dichvu/${dv.hinhanh1}"/>">
        </c:if>
    </p>
    <p><c:if test="${dv.noidung2!=null}">
        ${dv.noidung2}
        </c:if>
    </p>  
    <p>
        <c:if test="${dv.hinhanh2!=null}">
        <img src="<c:url value="/images/dichvu/${dv.hinhanh2}"/>">
        </c:if>
    </p>
    <p><c:if test="${dv.noidung3!=null}">
        ${dv.noidung3}
        </c:if>
    </p>  
    <p>
        <c:if test="${dv.hinhanh3!=null}">
        <img src="<c:url value="/images/dichvu/${dv.hinhanh3}"/>">
        </c:if>
    </p>
     
</div>
