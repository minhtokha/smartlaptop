<%-- 
    Document   : indexcart
    Created on : Oct 21, 2018, 9:26:31 AM
    Author     : MINH TO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="center_content">
    <div>
        <ul class="listorder">
            <c:set var="total" value="0"></c:set>
            <c:forEach items="${sessionScope.cart}" var="p">
                <c:set var="total" value="${total+p.sanpham.gia*p.soluong}"></c:set>
                    <li class=" ">
                        <div class="colimg">
                            <a href="${pageContext.servletContext.contextPath}/index/product.html?id=${p.sanpham.masp}"><img src="<c:url value="/images/products/${p.sanpham.hinhanh}"/>" alt="" border="0" /></a>
                        <a class="delete" href="${pageContext.servletContext.contextPath}/cart/remove.html?id=${p.sanpham.masp}">
                            <span></span>
                            Xoa
                        </a>
                    </div>
                    <div class="colinfo">
                        <strong>${p.gia}</strong>
                        <a href="#">${p.sanpham.ten}</a>
                        <div class="promotion  webnote">
                            <div class="title">
                                <label>3 khuyến mãi áp dụng đến 31/10</label>
                            </div>
                            <span class=" ">Chuột không dây
                                <label class="infoend">(đến 31/10)</label>
                            </span>
                            <span class=" ">Balo Laptop Dell
                                <label class="infoend">(đến 31/10)</label>
                            </span>

                        </div>
                    </div>
                    <div style="clear: both;"></div>
                    <div class="choosenumber">

                        <div class="abate "></div>
                        <div class="number">${p.soluong}</div>
                        <div class="augment "></div>
                    </div>
                    <div style="clear: both;"></div>
                </li>
            </c:forEach>
        </ul>

        <div class="area_total">
            <div>
                <span>Tổng tiền:</span>

                <span>${total}₫</span>
            </div>
            <div class="shipping_home">
                <div class="total">
                    <b>Cần thanh toán:</b>
                    <strong>${total}₫</strong>
                </div>
            </div>
        </div>
        <form:form action="cart/checkout.html" modelAttribute="khachhang" method="POST">
             <c:if test="${khachhang.tenkhachhang!=null}">
                <c:set var="t" value="true"/>
            </c:if>
            <div style="font-size: 14pt; font-family: time new roman">
                <h2>Vui lòng xem và điều chỉnh thông tin dưới đây</h2>
                <table border="0" style="width: 100%; padding: 10px">
                    <tbody>
                        <tr>
                            <td><label for="tenkhachhang">Ten Khach hang:</label></td>
                            <td>
                                <form:input id="text" path="tenkhachhang" style="width:100%; font-size:16pt" disabled="${t}"/>
                                <form:errors cssClass="error" path="tenkhachhang"/>
                            </td>
                            
                        </tr>
                        <tr>
                            <td><label for="diachi">Dia chi</label></td>
                            <td> 
                                
                                <form:textarea id="text1" path="diachi" style="width:100%; font-size:16pt" disabled="${t}" cols="4" rows="3"/>
                                <form:errors cssClass="error" path="diachi" />
                            </td>
                        </tr>
                        <tr>
                            <td><label for="sdt">So Dien Thoai</label></td>
                            <td>  
                                <form:input id="text2" path="sdt" style="width:100%; font-size:16pt" disabled="${t}"/>
                                <form:errors cssClass="error" path="sdt"/>
                            </td>
                        </tr>
                        <c:if test="${khachhang.email==null}">
                            <tr>
                                <td><label for="email">Email</label></td>
                                <td> 
                                    <form:input id="text3" path="email" style="width:100%; font-size:16pt"/>
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

            <button type="submit" class="payoffline" >Thanh toán </button>

        </form:form>
            <button onclick="f1()"  class="payoffline" id="btn">Cập nhật thông tin</button>

    </div>
    <div style="clear: both"></div>



    <div><a href="${pageContext.servletContext.contextPath}/index.html">Continue</a></div>



</div>
    <script>
          function f1(){
              if(document.getElementById("text").disabled == true)
              {
                  document.getElementById("btn").innerHTML="Hủy cập nhật";
                  document.getElementById("text").disabled = false;
                  document.getElementById("text1").disabled = false;
                  document.getElementById("text2").disabled = false;
                  document.getElementById("text3").disabled = false;
                  document.getElementById("xn").disabled=false;
              }
              else {
                  document.getElementById("btn").innerHTML="Cập nhật thông tin";
                  document.getElementById("text").disabled = true;
                  document.getElementById("text1").disabled = true;
                  document.getElementById("text2").disabled = true;
                  document.getElementById("text3").disabled = true;
                  document.getElementById("xn").disabled=true;
              }
          }
      </script>
