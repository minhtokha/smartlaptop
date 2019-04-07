<%-- 
    Document   : productOfCategory
    Created on : Oct 13, 2018, 11:35:57 PM
    Author     : MINH TO
--%>

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
<div class="center_title_bar">Latest Products </div>
<div class="center_content">
    <c:if test="${nsx!=null}">
    <c:forEach items="${nsx.sanphams}" var="p">
      <div class="prod_box">
        <div class="top_prod_box"></div>
        <div class="center_prod_box">
            <div class="product_title"><a href="${pageContext.servletContext.contextPath}/index/product.html?id=${p.masp}">${p.ten}</a></div>
          <div class="product_img"><a href="${pageContext.servletContext.contextPath}/index/product.html?id=${p.masp}"><img src="<c:url value="/images/products/${p.hinhanh}"/>" alt="" border="0" /></a></div>
          <div class="prod_price"><span class="reduce">${(p.gia+500000)}</span> <span class="price">${p.gia}</span></div>
        </div>
        <div class="bottom_prod_box"></div>
        <div class="prod_details_tab"> <a href="${pageContext.servletContext.contextPath}/cart/buy.html?id=${p.masp}" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="<c:url value="/images/cart.gif"/>" alt="" border="0" class="left_bt" /></a> <a href="#" title="header=[Specials] body=[&nbsp;] fade=[on]"><img src="<c:url value="/images/favs.gif"/>" alt="" border="0" class="left_bt" /></a> <a href="#" title="header=[Gifts] body=[&nbsp;] fade=[on]"><img src="<c:url value="/images/favorites.gif"/>" alt="" border="0" class="left_bt" /></a> <a href="#" class="prod_details">details</a> </div>
      </div>
    </c:forEach>
    </c:if>
    <c:if test="${lsp!=null}">
        <c:forEach items="${lsp.sanphams}" var="p">
      <div class="prod_box">
        <div class="top_prod_box"></div>
        <div class="center_prod_box">
            <div class="product_title"><a href="${pageContext.servletContext.contextPath}/index/product.html?id=${p.masp}">${p.ten}</a></div>
          <div class="product_img"><a href="${pageContext.servletContext.contextPath}/index/product.html?id=${p.masp}"><img src="<c:url value="/images/products/${p.hinhanh}"/>" alt="" border="0" /></a></div>
          <div class="prod_price"><span class="reduce">${(p.gia+500000)}</span> <span class="price">${p.gia}</span></div>
        </div>
        <div class="bottom_prod_box"></div>
        <div class="prod_details_tab"> <a href="${pageContext.servletContext.contextPath}/cart/buy.html?id=${p.masp}" title="header=[Add to cart] body=[&nbsp;] fade=[on]"><img src="<c:url value="/images/cart.gif"/>" alt="" border="0" class="left_bt" /></a> <a href="#" title="header=[Specials] body=[&nbsp;] fade=[on]"><img src="<c:url value="/images/favs.gif"/>" alt="" border="0" class="left_bt" /></a> <a href="#" title="header=[Gifts] body=[&nbsp;] fade=[on]"><img src="<c:url value="/images/favorites.gif"/>" alt="" border="0" class="left_bt" /></a> <a href="#" class="prod_details">details</a> </div>
      </div>
    </c:forEach>
    </c:if>
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