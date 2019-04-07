<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div style="width: 100%; min-height: 1000px; background-color: #080808">
    

    <div class="center_content">
        <div class="center_title_bar">Đăng nhập</div>
        <div class="prod_box_big">
            <div class="top_prod_box_big"></div>
            <div class="center_prod_box_big">
                <div class="contact_form">
                    <form:form action="dangnhap.html" method="post">
                        <div class="form_row">
                            <label class="contact"><strong>Email:</strong></label>
                            <input type="text" placeholder="email" required class="contact_input" name="email"/>
                        </div>
                        <div class="form_row">
                            <label class="contact"><strong>Password</strong></label>
                            <input type="password" placeholder="***" required class="contact_input" name="pass" />
                        </div>
                        <div class="form_row"> <input type="submit" value="Đăng nhập"/> </div>
                        </form:form>
                </div>
            </div>
            <div class="bottom_prod_box_big"></div>
        </div>
    </div>
</div>
