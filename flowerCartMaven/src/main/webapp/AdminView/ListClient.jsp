<%-- 
    Document   : ListClient
    Created on : Mar 12, 2017, 7:58:16 PM
    Author     : Moamenovic
--%>
<jsp:include page="../includes/header.jsp" />
<%--<jsp:useBean id="controller" class="adminServlets.ListClientServlet" scope="application" >
</jsp:useBean>--%>


<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../ListClientServlet"></jsp:include>
    <!-- page content -->
    <div class="right_col">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2>Flowers <small>All Products</small></h2>
                    <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>

                    </ul>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <p class="text-danger font-15 m-b-30">
                    <h2>
                        This table contains all flowers you have in the system
                    </h2>
                    </p>
                    <table id="datatable-buttons" class="table table-striped table-bordered">
                        <thead>
                            <tr>
                                <th></th>
                                <th>ID</th>
                                <th>Full name</th>
                                <th>Email</th>
                                <th>Birthday</th>
                                <th>Phone</th>
                                <th>Credit</th>
                                <th>Edit</th>
                                <th>Remove</th>
                            </tr>
                        </thead>


                        <tbody>


                        <c:forEach var="client" items="${allClients}">
                            <tr>
                                <th><input type="checkbox" id="check-all" class="icheckbox_flat-green"></th>
                                <td> <c:out value="${client.id}"></c:out></td>
                                <td><c:out value="${client.fname} ${client.lname}"></c:out></td>
                                <td><c:out value="${client.mail}"></c:out></td>
                                <td><c:out value="${client.birthday}"></c:out></td>   
                                <td><c:out value="${client.phone}"></c:out></td>
                                <td><c:out value="${client.cridetlimit}"></c:out></td>
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