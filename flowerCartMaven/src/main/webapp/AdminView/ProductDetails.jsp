<jsp:include page="../includes/header.jsp" />

<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../ListProductServlet"></jsp:include>
<!-- page content -->
<div class="right_col">
    <div class="col-md-12  col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>Boquets <small>All Products</small></h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>

                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <p class="text-danger font-15 m-b-30">
                <h2>
                    This table contains all bouquets you have in the system
                </h2>
                </p>
                <table id="datatable-buttons" class="table table-hover table-striped table-bordered">
                    <thead>
                        <tr>
                            <th style="font-size: 15px;">No.</th>
                            <th style="font-size: 15px;">Bouquet Name</th>
                            <th style="font-size: 15px;">Price</th>
                            <th style="font-size: 15px;">Quantity</th>
                            <th style="font-size: 15px;">Rating</th>
                            <th style="font-size: 15px;">Edit</th>
                            <th style="font-size: 15px;">Remove</th>
                        </tr>
                    </thead>


                    <tbody>
                    <c:forEach var="product" items="${products}">
                        <tr>
                            <td > <c:out value="${product.id}"></c:out></td>
                             <td style="font-weight: bold;"> <c:out value="${product.name}"></c:out></td>
                             <td> <c:out value="${product.price}"></c:out></td>
                             <td> <c:out value="${product.quantity}"></c:out></td>
                             <td> <c:out value="${product.rating}"></c:out></td>
                             <td class=" last"><a class="btn btn-block" href="#">
                                    <i class="fa fa-pencil-square-o fa-lg"></i> Edit</a></td>
                            <td class=" last"><a class="btn btn-block" href="#">
                                    <i class="fa fa-trash-o fa-lg"></i> Remove</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- /page content -->
<jsp:include page="../includes/footer.jsp" />  