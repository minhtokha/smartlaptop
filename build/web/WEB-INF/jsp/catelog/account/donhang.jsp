<%-- 
    Document   : donhang
    Created on : Nov 14, 2018, 10:51:23 PM
    Author     : MINH TO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="left_content"> 
      <div class="title_box">Tài Khoản Của: ${sessionScope.account.tenkhachhang} </div>
      <ul class="left_menu">
        <li class="odd"><a href="${pageContext.servletContext.contextPath}/account/myaccount.html">Thông tin tài khoản</a></li>
        <li class="even"><a href="${pageContext.servletContext.contextPath}/account/donhang.html">Quản lý đơn hàng</a></li>
        <li class="odd"><a href="${pageContext.servletContext.contextPath}/account/diachi.html">Địa chỉ</a></li>
        <li class="even"><a href="${pageContext.servletContext.contextPath}/account/dangxuat.html">Đăng xuất</a></li>
        <li class="odd"><a href="${pageContext.servletContext.contextPath}/account/contact.html">Contact us</a></li>
      </ul>
      
</div>
<div class="center_content">
    <c:set var="i" value="0"></c:set>
    
    <c:if test="${donhangs!=null}">
        <c:forEach items="${donhangs}" var="dh">
            <c:set var="i" value="${i+1}"/>
            <h1>ĐƠN HÀNG THỨ: ${i} </h1>
            <p style="font-size: 20px">Tình trạng
            <c:if test="${dh.tinhtrang==0}" >
                Đang tiếp nhận đơn hàng<br>
                Dự kiến sẽ được giao vào ngày: ${dh.ngaygiao}
            </c:if>
            <c:if test="${dh.tinhtrang==1}" >
                Đơn hàng đơn hàng đã được đóng gói<br>
                Dự kiến sẽ được giao vào ngày :${dh.ngaygiao}
            </c:if>
            <c:if test="${dh.tinhtrang==2}" >
                Đơn hàng đang được giao<br>
                Dự kiến sẽ được giao vào hôm nay ngày :${dh.ngaygiao}
            </c:if>
            <c:if test="${dh.tinhtrang==3}" >
                Đơn hàng đã giao thành công<br>
                Ngày giao :${dh.ngaygiao}
            </c:if>
            <c:if test="${dh.tinhtrang==4}" >
                Đơn hàng đã bị hủy<br>
            </c:if>
            <c:if test="${dh.tinhtrang==5}" >
                Đơn hàng đã được thanh toán<br>
                Ngày giao :${dh.ngaygiao}
            </c:if>
             </p>  
            <table border="1" style="font-size: 20px" style="width:600px;">
                <thead>
                    <tr>
                        <th>Ten San pham</th>
                        <th>Hinh anh</th>
                        <th>So luong</th>
                        <th>Gia tien</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${dh.ctdonhangs}" var="ct">
                        <tr>
                            <td>${ct.sanpham.ten}</td>
                            <td><img src="<c:url value="/images/products/${ct.sanpham.hinhanh}"/>"</td>
                            <td>${ct.soluong}</td>
                            <td>${ct.sotien}</td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <td colspan="2">Tong tien:</td><td colspan="2">${dh.tongtien}</td>
                    </tr>
                </tbody>
            </table>
        </c:forEach>
    </c:if>
</div>
