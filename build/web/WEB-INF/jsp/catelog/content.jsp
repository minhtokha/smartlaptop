<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="left_content"> 
      <div class="title_box">Categories</div>
      <ul class="left_menu">
          
          <c:forEach items="${dsLoaisanpham}" var="p">
              <li class="odd"><a href="${pageContext.servletContext.contextPath}/index/loaisanpham.html?id=${p.maloai}">${p.tenloai}</a></li>
          </c:forEach>
      </ul>
      <div class="title_box">Special Products</div>
      <div class="border_box">
        <div class="product_title"><a href="details.html">Motorola 156 MX-VL</a></div>
        <div class="product_img"><a href="details.html"><img src="<c:url value="/images/laptop.png"/>" alt="" border="0" /></a></div>
        <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
      </div>
      <div class="title_box">Newsletter</div>
      <div class="border_box">
        <input type="text" name="newsletter" class="newsletter_input" value="your email"/>
        <a href="#" class="join">join</a> </div>
      <div class="banner_adds"> <a href="#"><img src="<c:url value="/images/bann2.jpg"/>" alt="" border="0" /></a> </div>
</div>
<div class="center_title_bar">Latest Products</div>
<div class="center_content">
    <p>${kq}</p> 
    <c:if test="${dh!=null}">
        <p>Tên khách hàng: ${dh.tenkhachhang}</p>
        <p>Ngày đặc hàng: ${dh.ngaydh}</p>
        <p>Địa chỉ giao hàng:${dh.diachi} </p>
        <p>Số điện thoại: ${dh.sdt}</p>
        <p>email: ${dh.email}</p>
        <p>Tổng tiền: ${dh.tongtien}</p>
        
        
        <h2>Chi tiết đơn hàng:</h2>
        <c:if test="${dh.tinhtrang==0}" >
                <p style="font-size: 20px">Dự kiến đơn hàng sẽ giao vào ngày: ${dh.ngaygiao}</p>
                </c:if>
                <c:if test="${dh.tinhtrang==1}" >
                <p style="font-size: 20px">Đơn hàng sẽ giao cho bạn vào ngày hôm nay:${dh.ngaygiao}</p>
                </c:if>
                <c:if test="${dh.tinhtrang==2}" >
                <p style="font-size: 20px">Bạn đã nhận được hàng</p>
                </c:if>
                <c:if test="${dh.tinhtrang==3}" >
                <p style="font-size: 20px">Đơn hàng đã thanh toán</p>
                </c:if>
                <table border="1" style="font-size: 20px">
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
                            <td colspan="2">Tong tien:</td><td colspan="2">${dh.tongtien/1000}00.000</td>
                        </tr>
                    </tbody>
                </table>
        
    </c:if>
        
    <c:forEach items="${dsSanpham}" var="p">
      <div class="prod_box">
        <div class="top_prod_box"></div>
        <div class="center_prod_box">
            <div class="product_title"><a href="${pageContext.servletContext.contextPath}/index/product.html?id=${p.masp}">${p.ten}</a></div>
          <div class="product_img"><a href="${pageContext.servletContext.contextPath}/index/product.html?id=${p.masp}"><img src="<c:url value="/images/products/${p.hinhanh}"/>" alt="" border="0" /></a></div>
          <div class="prod_price"><span class="reduce">$(p.gia+50000}</span> <span class="price">${p.gia}</span></div>
        </div>
        <div class="bottom_prod_box"></div>
        <div class="prod_details_tab"> <a href="${pageContext.servletContext.contextPath}/cart/buy.html?id=${p.masp}" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="<c:url value="/images/cart.gif"/>" alt="" border="0" class="left_bt" /></a> <a href="#" title="header=[Specials] body=[&nbsp;] fade=[on]"><img src="<c:url value="/images/favs.gif"/>" alt="" border="0" class="left_bt" /></a> <a href="#" title="header=[Gifts] body=[&nbsp;] fade=[on]"><img src="<c:url value="/images/favorites.gif"/>" alt="" border="0" class="left_bt" /></a> <a href="${pageContext.servletContext.contextPath}/index/product.html?id=${p.masp}" class="prod_details">details</a> </div>
      </div>
    </c:forEach>
                <div class="center_title_bar">
                    <a href="${pageContext.servletContext.contextPath}/index.html?id=1">1</a>
                     <a href="${pageContext.servletContext.contextPath}/index.html?id=2">2</a>
                      <a href="${pageContext.servletContext.contextPath}/index.html?id=3">3</a>
                </div>
</div>
<div class="right_content">
      <div class="shopping_cart">
        <div class="cart_title">Shopping cart</div>
        <div class="cart_details"> 3 items <br />
          <span class="border_cart"></span> Total: <span class="price">350$</span> </div>
        <div class="cart_icon"><a href="${pageContext.servletContext.contextPath}/cart.html" title="header=[Checkout] body=[&nbsp;] fade=[on]"><img src="<c:url value="/images/shoppingcart.png"/>" alt="" width="48" height="48" border="0" /></a></div>
      </div>
      
      <div class="title_box">Manufacturers</div>
      <ul class="left_menu">
        <c:forEach items="${dsNhasanxuat}" var="p">
           
                <li class="odd">
                    <a href="${pageContext.servletContext.contextPath}/index/nhasanxuat.html?id=${p.mansx}">${p.tennsx}</a>
                </li>
           
            
        </c:forEach>
      </ul>
      <div class="banner_adds"> <a href="#"><img src="<c:url value="/images/bann1.jpg"/>" alt="" border="0" /></a> </div>
</div>