<%-- 
    Document   : checkout
    Created on : Oct 29, 2018, 9:22:45 PM
    Author     : MINH TO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="center_content">
    <div>
        <h1>Cảm ơn bạn đã đặc mua hàng!</h1>
        <h1>Vui lòng lưu lại ma code của bạn để kiểm tra thông tin đơn hàng (code: ${key})!</h1>
        <h2>Thông tin khách hàng bao gồm:</h2>
        <p>Tên khách hàng: ${dh.tenkhachhang}</p>
        <p>Ngày đặc hàng: ${dh.ngaydh}</p>
        <p>Địa chỉ giao hàng:${dh.diachi} </p>
        <p>Số điện thoại: ${dh.sdt}</p>
        <p>email: ${dh.email}</p>
        <p>Tổng tiền: ${dh.tongtien/1000}00.000</p>
        <p>Đơn hàng sẽ được giao vào ngày: ${dh.ngaygiao}</p>
        
        <h2>Chi tiết đơn hàng:</h2>
        <table border="1" style="width: 600px;">
            <thead>
                <tr>
                    <th>image</th>
                    <th>Tên sản phẩm</th>
                    <th>Số lượng</th>
                    <th>Giá tiền</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${dh.ctdonhangs}" var="p">
                <tr>
                    <td><img src="<c:url value="/images/products/${p.sanpham.hinhanh}"/>"</td>
                    <td>${p.sanpham.ten}</td>
                    <td>${p.soluong}</td>
                    <td>${p.sotien/1000}00.000</td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
        
        <a class="payonline" target="_blank" href="https://www.nganluong.vn/button_payment.php?receiver=tokhaminhIT1996@gmail.com&product_name=${dh.madh}_HDLT&price=${tien}}&return_url=http://localhost:8282/web_spring3/cart/checkout.html&comments=(Ghi chú về đơn hàng)">
             Thanh toán online
            <span>Bằng thẻ ATM, Visa, Master</span>
        </a>
    </div>
</div>
