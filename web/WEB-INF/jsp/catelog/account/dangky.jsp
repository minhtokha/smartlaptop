<%-- 
    Document   : dangnhap
    Created on : Nov 11, 2018, 10:22:33 AM
    Author     : MINH TO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="center_content">
      <div class="center_title_bar">Đăng Ký</div>
      <div class="prod_box_big">
        <div class="top_prod_box_big"></div>
        <div class="center_prod_box_big">
            <form:form action="AddAccount.html" commandName="khachhang">
          <div class="contact_form">
            <div class="form_row">
              <label class="contact"><strong>Email:</strong></label>
              <form:input path="email" class="contact_input" required="required" />
            </div>
            <div class="form_row">
              <label class="contact"><strong>Password:</strong></label>
              <form:password path="password" required="required" class="contact_input"/>
            </div>
            <div class="form_row">
              <label class="contact"><strong>Nhập lại Password:</strong></label>
              <input type="password" class="contact_input" name="psw-repeat" required />
            </div>
            <div class="form_row"> <button type="submit">Đăng Ký</button> </div>
          </div>
             </form:form>
        </div>
        <div class="bottom_prod_box_big"></div>
      </div>
</div>

