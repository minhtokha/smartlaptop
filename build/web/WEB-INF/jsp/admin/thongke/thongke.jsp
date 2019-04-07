<%-- 
    Document   : thongke
    Created on : Nov 27, 2018, 5:58:28 PM
    Author     : MINH TO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="product-status mg-b-15">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="product-status-wrap">
                    <c:if test="${thang!=null}">
                    <h4>Thông kế danh thu trong tháng ${thang}</h4>
                    </c:if>
                    <c:if test="${thang==null}">
                        <h4>Thông kế danh thu trong tháng </h4>
                    </c:if>
                    <div class="custom-pagination">
                        <ul class="pagination">
                            <li class="page-item">Thang:</li>
                            <li class="page-item"><a class="page-link" href="${pageContext.servletContext.contextPath}/admin/thongke.html?thang=1">1</a></li>
                            <li class="page-item"><a class="page-link" href="${pageContext.servletContext.contextPath}/admin/thongke.html?thang=2">2</a></li>
                            <li class="page-item"><a class="page-link" href="${pageContext.servletContext.contextPath}/admin/thongke.html?thang=3">3</a></li>
                            <li class="page-item"><a class="page-link" href="${pageContext.servletContext.contextPath}/admin/thongke.html?thang=4">4</a></li>
                            <li class="page-item"><a class="page-link" href="${pageContext.servletContext.contextPath}/admin/thongke.html?thang=5">5</a></li>
                            <li class="page-item"><a class="page-link" href="${pageContext.servletContext.contextPath}/admin/thongke.html?thang=6">6</a></li>
                            <li class="page-item"><a class="page-link" href="${pageContext.servletContext.contextPath}/admin/thongke.html?thang=7">7</a></li>
                            <li class="page-item"><a class="page-link" href="${pageContext.servletContext.contextPath}/admin/thongke.html?thang=8">8</a></li>
                            <li class="page-item"><a class="page-link" href="${pageContext.servletContext.contextPath}/admin/thongke.html?thang=9">9</a></li>
                            <li class="page-item"><a class="page-link" href="${pageContext.servletContext.contextPath}/admin/thongke.html?thang=10">10</a></li>
                            <li class="page-item"><a class="page-link" href="${pageContext.servletContext.contextPath}/admin/thongke.html?thang=11">11</a></li>
                            <li class="page-item"><a class="page-link" href="${pageContext.servletContext.contextPath}/admin/thongke.html?thang=12">12</a></li>
                        </ul>
                    </div>
                    <table>
                        <tr>
                            <th>Tên Khách hàng</th>
                            <th>Ngày đặt hàng</th>
                            <th>Địa chỉ</th>
                            <th>Số điện thoại</th>
                            <th>Tình trạng</th>
                            <th>Email</th>
                            <th>Tổng tiền</th>
                            <th>Option</th>
                        </tr>
                        <c:if test="${donhangs!=null}">
                        <c:forEach items="${donhangs}" var="dh">
                            <tr>
                                <td>${dh.tenkhachhang}</td>
                                <td>${dh.ngaydh}</td>
                                <td>
                                    ${dh.diachi}
                                </td>
                                <td>${dh.sdt}</td>
                                <td> <b>
                                <c:if test="${dh.tinhtrang==0}" >
                                    Đang tiếp nhận đơn hàng
                                </c:if>
                                <c:if test="${dh.tinhtrang==1}" >
                                    Đơn hàng đã đóng gói xong
                                </c:if>
                                <c:if test="${dh.tinhtrang==2}" >
                                    Đơn hàng đang được giao
                                </c:if>
                                <c:if test="${dh.tinhtrang==3}" >
                                    Đơn hàng đã giao thành công
                                </c:if>
                                <c:if test="${dh.tinhtrang==4}" >
                                    Đơn hàng đã được hủy
                                </c:if>
                                <c:if test="${dh.tinhtrang==5}" >
                                    Đơn hàng đã thanh toán
                                </c:if>
                                    </b>
                                </td>
                                <td>${dh.email}</td>
                                <td>${dh.tongtien/1000}00.000 vnd</td>
                                <td>
                                    <c:choose>
                                        <c:when test="${dh.tinhtrang==5 || dh.tinhtrang==4}" >
                                        <a href="${pageContext.servletContext.contextPath}/admin/donhang/chitietdonhang.html?id=${dh.madh}" title="Chi tiết"><i class="fa" aria-hidden="true"><img src="<c:url value="/adminstyle/img/icon_detail.png"/>"/></i></a>
                                        </c:when>
                                        <c:when test="${dh.tinhtrang==3}" >
                                        <a href="${pageContext.servletContext.contextPath}/admin/donhang/chitietdonhang.html?id=${dh.madh}" title="Chi tiết"><i class="fa" aria-hidden="true"><img src="<c:url value="/adminstyle/img/icon_detail.png"/>"/></i></a>
                                        <a href="${pageContext.servletContext.contextPath}/admin/donhang/giaohang.html?id=${dh.madh}&t=4" title="Hủy đơn hàng"><i class="fa" aria-hidden="true"><img src="<c:url value="/adminstyle/img/icon_cancel.png"/>"/></i></a>
                                        <a href="${pageContext.servletContext.contextPath}/admin/donhang/giaohang.html?id=${dh.madh}&t=5" title="Thanh toán"><i class="fa" aria-hidden="true"><img src="<c:url value="/adminstyle/img/icon_checkout.png"/>"/></i></a>
                                        </c:when>
                                        <c:when test="${dh.tinhtrang==2}" >
                                            <a href="${pageContext.servletContext.contextPath}/admin/donhang/chitietdonhang.html?id=${dh.madh}" title="Chi tiết"><i class="fa" aria-hidden="true"><img src="<c:url value="/adminstyle/img/icon_detail.png"/>"/></i></a>
                                            <a href="${pageContext.servletContext.contextPath}/admin/donhang/giaohang.html?id=${dh.madh}&t=3" title="Giao hàng thành công"><i class="fa" aria-hidden="true"> <img src="<c:url value="/adminstyle/img/icon_success.png"/>"/></i></a>
                                            <a href="${pageContext.servletContext.contextPath}/admin/donhang/giaohang.html?id=${dh.madh}$t=4" title="Hủy đơn hàng"><i class="fa" aria-hidden="true"> <img src="<c:url value="/adminstyle/img/icon_cancel.png"/>"/></i></a>
                                        </c:when>
                                        <c:when test="${dh.tinhtrang==1}" >
                                            <a href="${pageContext.servletContext.contextPath}/admin/donhang/chitietdonhang.html?id=${dh.madh}" title="Chi tiết"><i class="fa" aria-hidden="true"><img src="<c:url value="/adminstyle/img/icon_detail.png"/>"/></i></a>
                                            <a href="${pageContext.servletContext.contextPath}/admin/donhang/giaohang.html?id=${dh.madh}&t=2" title="Giao hàng -(Đang giao hàng)"><i class="fa" aria-hidden="true"> <img src="<c:url value="/adminstyle/img/icon_shiper.png"/>"/></i></a>
                                            <a href="${pageContext.servletContext.contextPath}/admin/donhang/giaohang.html?id=${dh.madh}&t=4" title="Hủy đơn hàng"><i class="fa" aria-hidden="true"> <img src="<c:url value="/adminstyle/img/icon_cancel.png"/>"/></i></a>
                                        </c:when>
                                        <c:when test="${dh.tinhtrang==0}" >
                                            <a href="${pageContext.servletContext.contextPath}/admin/donhang/chitietdonhang.html?id=${dh.madh}" title="Chi tiết"><i class="fa" aria-hidden="true"><img src="<c:url value="/adminstyle/img/icon_detail.png"/>"/></i></a>
                                            <a href="${pageContext.servletContext.contextPath}/admin/donhang/giaohang.html?id=${dh.madh}&t=1" title="Đóng gói đơn hàng"><i class="fa" aria-hidden="true"> <img src="<c:url value="/adminstyle/img/icon_escape.jpg"/>"/></i></a>
                                            <a href="${pageContext.servletContext.contextPath}/admin/donhang/giaohang.html?id=${dh.madh}$t=4" title="Hủy đơn hàng"><i class="fa" aria-hidden="true"> <img src="<c:url value="/adminstyle/img/icon_cancel.png"/>"/></i></a>
                                        </c:when>
                                    </c:choose>
                                </td>
                            </tr>
                        </c:forEach>
                            </c:if>
                            <tr>
                                <td colspan="8"><b>Tong Tien: ${tongtien/1000}00.000 vnd</b></td>
                            </tr>
                    </table>
                    <div class="custom-pagination">
                        <ul class="pagination">
                            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item"><a class="page-link" href="#">Next</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

