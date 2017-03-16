<%-- 
    Document   : AllFlowers
    Created on : Mar 14, 2017, 8:33:01 PM
    Author     : alaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>
<jsp:include  page="HomeServlet" />

<div id="all">

    <div id="content">
        <div class="container">

            <div class="col-md-12">
                <ul class="breadcrumb">
                    <li><a href="index.jsp">Home</a>
                    </li>
                    <li>All Flowers</li>
                </ul>
            </div>

            <%@include file="sideBar.jsp" %>

            <div class="col-md-9">
                <div class="box">
                    <h1>Bouquets</h1>
                    <p>Every flower is a soul blossoming in nature.</p>
                </div>

                <div class="box info-bar">
                    <div class="row">
                        <div class="col-sm-12 col-md-4 products-showing">
                            Showing <strong>12</strong> of <strong>25</strong> products
                        </div>

                        <div class="col-sm-12 col-md-8  products-number-sort">
                            <div class="row">
                                <form class="form-inline">
                                    <div class="col-md-6 col-sm-6">
                                        <div class="products-number">
                                            <strong>Show</strong>  <a href="#" class="btn btn-default btn-sm btn-primary">12</a>  <a href="#" class="btn btn-default btn-sm">24</a>  <a href="#" class="btn btn-default btn-sm">All</a> products
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6">
                                        <div class="products-sort-by">
                                            <strong>Sort by</strong>
                                            <select name="sort-by" class="form-control">
                                                <option>Price</option>
                                                <option>Name</option>
                                                <option>Sales first</option>
                                            </select>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row products">
                    <c:forEach items="${requestScope.flowers}" var="flower" end="6">
                        <div class="col-md-3 col-sm-6">
                            <div class="product" >
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="flowerBouquests?f=${flower.id}&n=${flower.name}">
                                                <img src="${flower.image.url}" alt="" class="img-responsive" >
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="flowerBouquests?f=${flower.id}&n=${flower.name}">
                                                <img src="${flower.image.url}" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="flowerBouquests?f=${flower.id}&n=${flower.name}" class="invisible">
                                    <img src="${flower.image.url}" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="flowerBouquests?f=${flower.id}&n=${flower.name}">${flower.name}</a></h3>
                                    <p class="price">${flower.country}</p>
                                </div>
                                <!-- /.text -->
                            </div>
                            <!-- /.flower -->
                        </div>
                    </c:forEach>
                </div>
                <div class="pages">

                    <p class="loadMore">
                        <a href="#" class="btn btn-primary btn-lg"><i class="fa fa-chevron-down"></i> Load more</a>
                    </p>

                    <ul class="pagination">
                        <li><a href="#">&laquo;</a>
                        </li>
                        <li class="active"><a href="#">1</a>
                        </li>
                        <li><a href="#">2</a>
                        </li>
                        <li><a href="#">3</a>
                        </li>
                        <li><a href="#">4</a>
                        </li>
                        <li><a href="#">5</a>
                        </li>
                        <li><a href="#">&raquo;</a>
                        </li>
                    </ul>
                </div>


            </div>
            <!-- /.col-md-9 -->
        </div>
        <!-- /.container -->
    </div>
    <!-- /#content -->



    <%@include file="footer.jsp" %>