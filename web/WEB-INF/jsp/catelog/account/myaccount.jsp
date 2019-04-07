<%-- 
    Document   : dangkysuccess
    Created on : Nov 11, 2018, 11:55:07 AM
    Author     : MINH TO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="left_content"> 
      <div class="title_box">Tài Khoản Của: ${khachhang.tenkhachhang} </div>
      <ul class="left_menu">
        <li class="odd"><a href="${pageContext.servletContext.contextPath}/account/myaccount.html">Thông tin tài khoản</a></li>
        <li class="even"><a href="${pageContext.servletContext.contextPath}/account/donhang.html">Quản lý đơn hàng</a></li>
        <li class="odd"><a href="${pageContext.servletContext.contextPath}/account/diachi.html">Địa chỉ</a></li>
        <li class="even"><a href="${pageContext.servletContext.contextPath}/account/dangxuat.html">Đăng xuất</a></li>
        <li class="odd"><a href="${pageContext.servletContext.contextPath}/account/contact.html">Contact us</a></li>
      </ul>
      
</div>
<div class="center_content">
    <h1>THÔNG TIN TÀI KHOẢN</h1>
    <c:set var="t" value="true"/>
    <c:if test="${khachhang!=null}">
        <form:form action="update.html" modelAttribute="khachhang" method="POST">
            <div style="font-size: 14pt; font-family: time new roman">
            
                <table border="0" style="width: 100%; padding: 10px">
                    <tbody>
                        <tr>
                            <td><label for="tenkhachhang">Ten Khach hang:</label></td>
                            <td>
                                <c:if test="${khachhang.tenkhachhang==null}">
                                    <c:set var="t" value="false"/>
                                </c:if>
                                <form:input path="tenkhachhang" disabled="${t}" style="width:100%; font-size:16pt"/>
                                <form:errors cssClass="error" path="tenkhachhang"/>
                                
                            </td>
                           
                        </tr>
                        <tr>
                            <td><label for="diachi">Dia chi</label></td>
                            <td> 
                                <c:if test="${khachhang.diachi==null}">
                                    <c:set var="t" value="false"/>
                                </c:if>
                                <form:textarea path="diachi" disabled="${t}" style="width:100%; font-size:16pt" cols="4" rows="3"/>
                                 <form:errors cssClass="error" path="diachi"/>
                            </td>
                        </tr>
                        <tr>
                            <td><label for="sdt">So Dien Thoai</label></td>
                            <td>  
                                <c:if test="${khachhang.sdt==null}">
                                    <c:set var="t" value="false"/>
                                </c:if>
                                <form:input path="sdt" disabled="${t}" style="width:100%; font-size:16pt"/>
                                 <form:errors cssClass="error" path="sdt"/>
                            </td>
                        </tr>
                        <c:if test="${khachhang.email==null}">
                        <tr>
                            <td><label for="email">Email</label></td>
                            <td> 
                                <form:input path="email" style="width:100%; font-size:16pt"/>
                                 <form:errors cssClass="error" path="email"/>
                            </td>
                        </tr>
                        </c:if>
                        <c:if test="${khachhang.email!=null}">
                            <form:hidden path="email" style="width:100%; font-size:16pt"/>
                            <form:hidden path="password" style="width:100%; font-size:16pt"/>
                        </c:if>
                         
                       
                    </tbody>
                </table>
            </div>     
        </form:form>
        
     </c:if>
</div>
