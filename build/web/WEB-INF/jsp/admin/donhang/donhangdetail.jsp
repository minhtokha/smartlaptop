<%-- 
    Document   : donhangdetail
    Created on : Nov 15, 2018, 11:55:09 PM
    Author     : MINH TO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="product-status mg-b-15">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="product-status-wrap">
                    <h4>
                        Đơn hàng có mã là: DH${donhang.madh}
                        <c:if test="${donhang.tinhtrang==0}" >
                            <p style="font-size: 20px">Đơn hàng đang được tiếp nhận</p>
                        </c:if>
                        <c:if test="${donhang.tinhtrang==1}" >
                            <p style="font-size: 20px">Đơn đã được đóng gói</p>
                        </c:if>
                        <c:if test="${donhang.tinhtrang==2}" >
                            <p style="font-size: 20px">Đơn hàng đang được giao</p>
                        </c:if>
                        <c:if test="${donhang.tinhtrang==3}" >
                            <p style="font-size: 20px">Đơn hàng đã được thanh toán.</p>
                        </c:if>
                    </h4>
                    <table>
                        <tr>
                            <th>Image</th>
                            <th>Tên sản phẩm</th>
                            <th>Đơn giá</th>
                            <th>Số lượng</th>
                            <th>Số tiền</th>
                            
                        </tr>
                        
                        <c:forEach items="${ctdonhangs}" var="ct">
                            <tr>
                                <td><img src="<c:url value="/images/products/${ct.sanpham.hinhanh}"/>"></td>
                                <td>${ct.sanpham.ten}</td>
                                <td>
                                    ${ct.gia/1000}00.000
                                </td>
                                <td>${ct.soluong}</td>
                                 <td>${ct.sotien/1000}00.000</td>
                            </tr>
                        </c:forEach>
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


