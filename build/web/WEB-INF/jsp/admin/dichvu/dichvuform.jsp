<%-- 
    Document   : thongtin
    Created on : Nov 22, 2018, 3:32:14 PM
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
                            <c:if test="${dichvu.tentt!=null}">
                                <li class="active"><a href="#description"><i class="icon nalika-edit" aria-hidden="true"></i> Edit A Blog</a></li>
                                </c:if>
                                <c:if test="${dichvu.tentt==null}">
                                <li class="active"><a href="#description"><i class="icon nalika-edit" aria-hidden="true"></i> Add A Blog</a></li>
                                </c:if>
                            <li><a href="#reviews"><i class="fa fa-file-image-o" aria-hidden="true"></i> Pictures</a></li>
                            <li><a href="#INFORMATION"><i class="fa fa-commenting" aria-hidden="true"></i> Review</a></li>
                        </ul>
                        <div id="myTabContent" class="tab-content custom-product-edit">
                            <div class="product-tab-list tab-pane fade active in" id="description">
                                 <form:form action="capnhatdv.html" modelAttribute="dichvu" method="post" enctype="multipart/form-data">
                                    <div class="row">
                                        <form:hidden path="matt"/>
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                            <div class="review-content-section">
                                                <div class="input-group mg-b-pro-edt">
                                                    <span class="input-group-addon">Tiêu Đề("tên thông tin dịch vụ"):</span>
                                                    <form:input path="tentt" class="form-control"/>
                                                </div>
                                                <div class="input-group mg-b-pro-edt">
                                                    <span class="input-group-addon">Nội dung:</span>
                                                    <form:textarea rows="10" cols="50" path="noidung" class="form-control"/>
                                                </div>
                                                <div class="input-group mg-b-pro-edt">
                                                    <span class="input-group-addon">Hinh Anh:</span>
                                                    <input type="file" class="form-control pro-edt-select form-control-primary" name="hinhanhs" multiple  />
                                                </div>
                                                <div class="input-group mg-b-pro-edt">
                                                    <span class="input-group-addon">Nội dung 1:</span>
                                                    <form:textarea rows="10" cols="50" path="noidung1" class="form-control"/>
                                                </div>
                                                
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                            <div class="review-content-section">
                                                
                                                <div class="input-group mg-b-pro-edt">
                                                    <span class="input-group-addon">Nội dung 2:</span>
                                                    <form:textarea rows="10" cols="50" path="noidung2" class="form-control"/>
                                                </div>
                                                
                                                <div class="input-group mg-b-pro-edt">
                                                    <span class="input-group-addon">Nội dung 3:</span>
                                                   <form:textarea rows="10" cols="50" path="noidung3" class="form-control"/>
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
                            <div class="product-tab-list tab-pane fade" id="reviews">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="review-content-section">
                                            <div class="row">
                                                <div class="col-lg-4">
                                                    <div class="pro-edt-img">
                                                        <img src="<c:url value="/images/dichvu/${tenhinhanh}"/>" alt="" />
                                                    </div>
                                                    <div class="pro-edt-img">
                                                        <img src="<c:url value="/images/dichvu/${tenhinhanh1}"/>" alt="" />
                                                    </div>
                                                    <div class="pro-edt-img">
                                                        <img src="<c:url value="/images/dichvu/${tenhinhanh2}"/>" alt="" />
                                                    </div>
                                                    <div class="pro-edt-img">
                                                        <img src="<c:url value="/images/dichvu/${tenhinhanh3}"/>" alt="" />
                                                    </div>
                                                </div>
                                                <div class="col-lg-8">
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <div class="product-edt-pix-wrap">
                                                                <div class="input-group">
                                                                    <span class="input-group-addon">TT</span>
                                                                    <input type="text" class="form-control" placeholder="Label Name">
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-lg-6">
                                                                        <div class="form-radio">
                                                                            <form>
                                                                                <div class="radio radiofill">
                                                                                    <label>
                                                                                        <input type="radio" name="radio"><i class="helper"></i>Largest Image
                                                                                    </label>
                                                                                </div>
                                                                                <div class="radio radiofill">
                                                                                    <label>
                                                                                        <input type="radio" name="radio"><i class="helper"></i>Medium Image
                                                                                    </label>
                                                                                </div>
                                                                                <div class="radio radiofill">
                                                                                    <label>
                                                                                        <input type="radio" name="radio"><i class="helper"></i>Small Image
                                                                                    </label>
                                                                                </div>
                                                                            </form>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6">
                                                                        <div class="product-edt-remove">
                                                                            <button type="button" class="btn btn-danger waves-effect waves-light">Remove
                                                                                <i class="fa fa-times" aria-hidden="true"></i>
                                                                            </button>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="product-tab-list tab-pane fade" id="INFORMATION">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="review-content-section">
                                            <div class="card-block">
                                                <div class="text-muted f-w-400">
                                                    <p>No reviews yet.</p>
                                                </div>
                                                <div class="m-t-10">
                                                    <div class="txt-primary f-18 f-w-600">
                                                        <p>Your Rating</p>
                                                    </div>
                                                    <div class="stars stars-example-css detail-stars">
                                                        <div class="review-rating">
                                                            <fieldset class="rating">
                                                                <input type="radio" id="star5" name="rating" value="5">
                                                                <label class="full" for="star5"></label>
                                                                <input type="radio" id="star4half" name="rating" value="4 and a half">
                                                                <label class="half" for="star4half"></label>
                                                                <input type="radio" id="star4" name="rating" value="4">
                                                                <label class="full" for="star4"></label>
                                                                <input type="radio" id="star3half" name="rating" value="3 and a half">
                                                                <label class="half" for="star3half"></label>
                                                                <input type="radio" id="star3" name="rating" value="3">
                                                                <label class="full" for="star3"></label>
                                                                <input type="radio" id="star2half" name="rating" value="2 and a half">
                                                                <label class="half" for="star2half"></label>
                                                                <input type="radio" id="star2" name="rating" value="2">
                                                                <label class="full" for="star2"></label>
                                                                <input type="radio" id="star1half" name="rating" value="1 and a half">
                                                                <label class="half" for="star1half"></label>
                                                                <input type="radio" id="star1" name="rating" value="1">
                                                                <label class="full" for="star1"></label>
                                                                <input type="radio" id="starhalf" name="rating" value="half">
                                                                <label class="half" for="starhalf"></label>
                                                            </fieldset>
                                                        </div>
                                                        <div class="clear"></div>
                                                    </div>
                                                </div>
                                                <div class="input-group mg-b-15 mg-t-15">
                                                    <span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
                                                    <input type="text" class="form-control" placeholder="User Name">
                                                </div>
                                                <div class="input-group mg-b-15">
                                                    <span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
                                                    <input type="text" class="form-control" placeholder="Last Name">
                                                </div>
                                                <div class="input-group mg-b-15">
                                                    <span class="input-group-addon"><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
                                                    <input type="text" class="form-control" placeholder="Email">
                                                </div>
                                                <div class="form-group review-pro-edt">
                                                    <button type="submit" class="btn btn-primary waves-effect waves-light">Submit
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



