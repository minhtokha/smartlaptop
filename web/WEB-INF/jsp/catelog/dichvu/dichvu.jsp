<%-- 
    Document   : dichvu
    Created on : Nov 15, 2018, 3:14:39 PM
    Author     : MINH TO
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
    
    <h2>Tin tuc cong nghe</h2>
    <c:forEach items="${dsdv}" var="p">
    <ul style="display: block;overflow: auto;">
        <li>
            <a href="${pageContext.servletContext.contextPath}/dichvu/tintuc/dv.html?id=${p.matt}" style="display: block;overflow: hidden;">
                <img src="<c:url value="/images/dichvu/${p.hinhanh}"/>" style="display: block;float: left;width: 180px;height: 100px;margin-right: 10px;" 
                     width="95">
                <h3>${p.tentt}.</h3>
                <p style="display: block;overflow: hidden;line-height: 20px;color: #333;margin: 5px 0;max-height: 40px;">
                   ${p.noidung}
                </p>
                <div style="display: block;overflow: hidden;font-size: 14px;color: #999;">
                    Nguyen Pham Lam Tung                
                </div>
            </a>
        </li>
        
    </ul>
    </c:forEach>                
</div>