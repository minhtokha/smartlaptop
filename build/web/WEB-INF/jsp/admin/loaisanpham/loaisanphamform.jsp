<%-- 
    Document   : loaisanphamform
    Created on : Nov 20, 2018, 11:14:41 AM
    Author     : MINH TO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!-- Single pro tab start-->
<div class="single-product-tab-area mg-tb-15">
            <!-- Single pro tab review Start-->
            <div class="single-pro-review-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="review-tab-pro-inner">
                                <ul id="myTab3" class="tab-review-design">
                                     <c:if test="${loaisanpham.tenloai!=null}">
                                    <li class="active"><a href="#description"><i class="icon nalika-edit" aria-hidden="true"></i> Sua Loai San Pham</a></li>
                                    </c:if>
                                    <c:if test="${sanpham.tenloai==null}">
                                    <li class="active"><a href="#description"><i class="icon nalika-edit" aria-hidden="true"></i> Them Loai San Pham</a></li>
                                    </c:if>
                                  
                                </ul>
                                <div id="myTabContent" class="tab-content custom-product-edit">
                                    <div class="product-tab-list tab-pane fade active in" id="description">
                                        <form:form action="capnhat.html" modelAttribute="loaisanpham" method="post" >
                                        <div class="row">
                                            <form:hidden path="maloai"/>
                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                <div class="review-content-section">
                                                    <div class="input-group mg-b-pro-edt">
                                                        <span class="input-group-addon">Ten loai:</span>
                                                         <form:input path="tenloai" class="form-control"/>
                                                    </div>
                                                    
                                                    <div class="input-group mg-b-pro-edt">
                                                        <span class="input-group-addon">Mo ta:</span>
                                                        <form:textarea rows="10" cols="50" path="mota" class="form-control"/>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="text-center mg-b-pro-edt custom-pro-edt-ds">
                                                    <input type="submit" class="btn btn-primary waves-effect waves-light m-r-10" value="save">
														
                                                    <button type="button" class="btn btn-warning waves-effect waves-light">Discard
														</button>
                                                </div>
                                            </div>
                                        </div>
                                        </form:form>
                                    </div>
                                    