<jsp:include page="../includes/header.jsp" />

<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../ListCategoryServlet"></jsp:include>
    <!-- page content -->
    <div class="right_col">
        <div class="col-md-12  col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>Categories <small>All Categories</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>

                    </ul>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <p class="text-danger font-15 m-b-30">
                    <h2>
                        This table contains all categories you have in the system
                    </h2>
                    </p>
                    <table id="datatable-buttons" class="table table-hover table-striped table-bordered">
                        <thead>
                            <tr>
                                <th style="font-size: 15px;">No.</th>
                                <th style="font-size: 15px;">Category Name</th>
                                <th style="font-size: 15px;">Edit</th>
                                <th style="font-size: 15px;">Remove</th>
                            </tr>
                        </thead>


                        <tbody>
                        <c:forEach var="category" items="${categories}">
                            <tr>
                                <td > <c:out value="${category.id}"></c:out></td>
                                <td style="font-weight: bold;"> <c:out value="${category.name}"></c:out></td>
                               
                                <td class=" last"><a class="btn btn-block" onclick="location.href = '${pageContext.request.contextPath}/AdminView/ViewCategory.jsp?ID=' + $(this).parents('tr').find('td:eq(0)').html()">
                                        <i class="fa fa-pencil-square-o fa-lg"></i> Edit</a></td>
                                <td class=" last"><a class="btn btn-block" onclick="location.href = '${pageContext.request.contextPath}/DeleteCategoryServlet?ID=' + $(this).parents('tr').find('td:eq(0)').html();$(this).parents('tr').remove();">
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