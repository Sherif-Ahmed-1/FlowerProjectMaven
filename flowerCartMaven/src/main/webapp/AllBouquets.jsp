<%-- 
    Document   : AllBouquets
    Created on : Mar 13, 2017, 6:31:40 AM
    Author     : alaa
--%>

<%@include file="header.jsp" %>
<jsp:include  page="HomeServlet" />


<div id="all">

    <div id="content">
        <div class="container">

            <div class="col-md-12">
                <ul class="breadcrumb">
                    <li><a href="index.jsp">Home</a>
                    </li>
                    <li>All Bouquets</li>
                </ul>
            </div>

            <div class="col-md-3">
                <!-- *** MENUS AND FILTERS ***
                <jsp:include page="sideBar.jsp"></jsp:include>
_________________________________________________________ -->
                <div class="panel panel-default sidebar-menu">

                    <div class="panel-heading">
                        <h3 class="panel-title">Categories</h3>
                    </div>

                    <div class="panel-body">
                        <ul class="nav nav-pills nav-stacked category-menu">
                            <li>
                                <ul>
                                    <c:forEach items="${requestScope.categories}" var="category">
                                        <li><a href="categoryBouquets?c=${category.id}">${category.name}</a>
                                        </li>
                                    </c:forEach>

                                </ul>
                            </li>

                        </ul>     

                    </div>
                </div>

                <div class="panel panel-default sidebar-menu">

                    <div class="panel-heading">
                        <h3 class="panel-title">Brands <a class="btn btn-xs btn-danger pull-right" href="#"><i class="fa fa-times-circle"></i> Clear</a></h3>
                    </div>

                    <div class="panel-body">

                        <form>
                            <div class="form-group">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox">Armani (10)
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox">Versace (12)
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox">Carlo Bruni (15)
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox">Jack Honey (14)
                                    </label>
                                </div>
                            </div>

                            <button class="btn btn-default btn-sm btn-primary"><i class="fa fa-pencil"></i> Apply</button>

                        </form>

                    </div>
                </div>

                <div class="panel panel-default sidebar-menu">

                    <div class="panel-heading">
                        <h3 class="panel-title">Colours <a class="btn btn-xs btn-danger pull-right" href="#"><i class="fa fa-times-circle"></i> Clear</a></h3>
                    </div>

                    <div class="panel-body">

                        <form>
                            <div class="form-group">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox"> <span class="colour white"></span> White (14)
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox"> <span class="colour blue"></span> Blue (10)
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox"> <span class="colour green"></span> Green (20)
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox"> <span class="colour yellow"></span> Yellow (13)
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox"> <span class="colour red"></span> Red (10)
                                    </label>
                                </div>
                            </div>

                            <button class="btn btn-default btn-sm btn-primary"><i class="fa fa-pencil"></i> Apply</button>

                        </form>

                    </div>
                </div>

                <!-- *** MENUS AND FILTERS END *** -->

                <div class="banner">
                    <a href="#">
                        <img src="img/banner.jpg" alt="sales 2014" class="img-responsive">
                    </a>
                </div>
            </div>

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
                   <c:forEach items="${requestScope.products}" var="product" >
                    <div class="col-md-4 col-sm-6">
                        <div class="product">
                            <div class="flip-container">
                                <div class="flipper">
                                    <div class="front">
                                        <a href="ShowDetails?b=${product.id}">
                                            <img src="${product.images.get(0).url}" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                    <div class="back">
                                        <a href="ShowDetails?b=${product.id}">
                                            <img src="${product.images.get(0).url}" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <a href="ShowDetails?b=${product.id}" class="invisible">
                                <img src="assets/img/bouques/Alstroemeria-AnyThing For You.jpg" alt="" class="img-responsive">
                            </a>
                            <div class="text">
                                <h3><a href="ShowDetails?b=${product.id}">${product.name}</a></h3>
                                <p class="price">$ ${product.price}</p>
                                <p class="buttons">
                                    <a href="ShowDetails?b=${product.id}" class="btn btn-default">View detail</a>
                                    <a class="btn btn-primary" onclick="addToCart(${product.id})" ><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                </p>
                            </div>
                            <!-- /.text -->
                        </div>
                        <!-- /.product -->
                    </div>
                   </c:forEach>
                    <!-- /.col-md-4 -->
                </div>
                <!-- /.products -->

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
