<%-- 
    Document   : diachi
    Created on : Nov 14, 2018, 10:51:36 PM
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
     <p  style="font-size: 20px">
        
        
     <form action="capnhat.html" method="post">
         <h1> Tên tài khoản:${khachhang.tenkhachhang}</h1>
          <c:set var="t" value="true"/>  
         <c:if test="${khachhang.diachi==null}">
            <c:set var="t" value="false"/>
        </c:if>
         <textarea name="diachi" id="diachi" disabled="${t}" required="true" style="width:100%; font-size:16pt" cols="4" rows="3">${khachhang.diachi}</textarea>
         <button type="submit" disabled="true" id="xn" >Xác nhận</button>
     </form>
        
         <button onclick="f1()" id="btn" >Cập nhật địa chỉ mới</button>
    </p>
</div>
      <script>
          function f1(){
              if(document.getElementById("diachi").disabled == true)
              {
                  document.getElementById("btn").innerHTML="Hủy cập nhật";
                  document.getElementById("diachi").disabled = false;
                  document.getElementById("xn").disabled=false;
              }
              else {
                  document.getElementById("btn").innerHTML="Cập nhật địa chỉ mới";
                  document.getElementById("diachi").disabled = true;
                  document.getElementById("xn").disabled=true;
              }
          }
      </script>