<%-- 
    Document   : dsnhasanxuat
    Created on : Nov 20, 2018, 12:33:43 PM
    Author     : MINH TO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="product-status mg-tb-15">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="product-status-wrap">
                    <h4>Products List</h4>
                    <div class="add-product">
                        <a href="${pageContext.servletContext.contextPath}/admin/nhasanxuat/them.html">Them Nha San Xuat</a>
                    </div>
                    <table>
                        <tr>
                            <th>Hinh anh</th>
                            <th>Ten</th>
                            <th>Option</th>
                        </tr>
                        <c:forEach items="${nhasanxuats}" var="p">
                            <tr>
                                <td><img src="<c:url value="/images/nhasanxuats/${p.hinhanh}"/>" alt="" /></td>
                                <td>${p.tennsx}</td>
                                
                                <td>
                                    <a href="${pageContext.servletContext.contextPath}/admin/nhasanxuat/sua.html?id=${p.mansx}" title="Sua"><i><img src="<c:url value="/adminstyle/img/icon_edit.png"/>"></i></a>
                                    <a onclick="funtionXoa()" href="${pageContext.servletContext.contextPath}/admin/nhasanxuat/xoa.html?id=${p.mansx}" title="Xoa"><i><img src="<c:url value="/adminstyle/img/icon_delete.png"/>"></i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                    <div class="custom-pagination">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination">
                                <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item"><a class="page-link" href="#">Next</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
 <script>
  function funtionXoa(){
      var txt;
    if (confirm("Press a button!")) {
        txt = "You pressed OK!";
    } else {
        txt = "You pressed Cancel!";

    }
    
  }
</script>