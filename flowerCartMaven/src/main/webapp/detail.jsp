<%-- 
    Document   : detail
    Created on : Mar 13, 2017, 4:23:29 PM
    Author     : alaa
--%>

<%@include file="header.jsp" %>

<div id="all">

    <div id="content">
        <div class="container">

            <div class="col-md-12">
                <ul class="breadcrumb">
                    <li><a href="index.jsp">Home</a>
                    </li>
                    <li>${requestScope.productDetail.name}</li>
                </ul>
            </div>

            <div class="col-md-3">
                <!-- *** MENUS AND FILTERS ***
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

                <div class="row" id="productMain">
                    <div class="col-sm-6">
                        <div id="mainImage">
                            <img src="${image.url}" data-imagezoom="true"  alt="" class="img-responsive">
                        </div>

                        <div class="ribbon sale">
                            <div class="theribbon">SALE</div>
                            <div class="ribbon-background"></div>
                        </div>
                        <!-- /.ribbon -->

                        <div class="ribbon new">
                            <div class="theribbon">NEW</div>
                            <div class="ribbon-background"></div>
                        </div>
                        <!-- /.ribbon -->

                    </div>
                    <div class="col-sm-6">
                        <div class="box">
                            <h1 class="text-center">${requestScope.productDetail.name}</h1>
                            <p class="goToDescription"><a href="#details" class="scroll-to">Scroll to BOUQUET description and Consisting Flowers</a>
                            </p>
                            <p class="price">$${requestScope.productDetail.price}</p>

                            <p class="text-center buttons">
                                <a href="basket.html" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Add to cart</a> 
                                <a href="basket.html" class="btn btn-default"><i class="fa fa-heart"></i> Add to wishlist</a>
                            </p>
                        </div>

                        <div class="row" id="thumbs">
                            <c:forEach items="${requestScope.productDetail.images}" var="image">
                                <div class="col-xs-4">
                                    <a href="${image.url}" class="thumb">
                                        <img src="${image.url}" alt="" class="img-responsive">
                                    </a>
                                </div>
                            </c:forEach>
                        </div>
                    </div>

                </div>


                <div class="box" id="details">
                    <p>
                    <h4>BOUQUET Description</h4>
                    <p>${requestScope.productDetail.description}</p>
                    <h4>BOUQUET Flowers</h4>
                    <ul>
                        <c:forEach items="${requestScope.productDetail.flowers}" var="flower">
                            <li>${flower.name}</li>
                            </c:forEach>
                    </ul>
                    <h4>BOUQUET Rating</h4>
                    <p class="box">
                        <strong> ${requestScope.productDetail.rating} out of 10  </strong> &nbsp;&nbsp;
                        <c:forEach begin="1" end="${requestScope.productDetail.rating}" varStatus="loop">
                            <img src="assets/img/icons/star.png" alt="" /> 
                        </c:forEach>
                        <c:forEach begin="${requestScope.productDetail.rating}" end="9" varStatus="loop">
                            <img src="assets/img/icons/star-free.png" alt="" /> 
                        </c:forEach>
                    </p>

                    <!--                    <blockquote>
                                            <p><em>Define style this season with Armani's new range of trendy tops, crafted with intricate details. Create a chic statement look by teaming this lace number with skinny jeans and pumps.</em>
                                            </p>
                                        </blockquote>-->

                    <hr>
                    <!--                    <div class="social">
                                            <h4>Show it to your friends</h4>
                                            <p>
                                                <a href="#" class="external facebook" data-animate-hover="pulse"><i class="fa fa-facebook"></i></a>
                                                <a href="#" class="external gplus" data-animate-hover="pulse"><i class="fa fa-google-plus"></i></a>
                                                <a href="#" class="external twitter" data-animate-hover="pulse"><i class="fa fa-twitter"></i></a>
                                                <a href="#" class="email" data-animate-hover="pulse"><i class="fa fa-envelope"></i></a>
                                            </p>
                                        </div>-->
                </div>

                <div class="row same-height-row">
                    <div class="col-md-3 col-sm-6">
                        <div class="box same-height">
                            <h3>Bouquets With the same type of  Flower</h3>
                            <img src="assets/img/bouques/Alstroemeria-AnyThing For You.jpg" alt="" class="img-responsive invisible" >
                        </div>
                    </div>
                    <c:forEach items="${requestScope.simaliarProducts}" var="product" end="2">
                    <div class="col-md-3 col-sm-6">
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
                            </div>
                            <!-- /.text -->
                        </div>
                        <!-- /.product -->
                    </div>
                    </c:forEach>
                   

                </div>

               

            </div>
            <!-- /.col-md-9 -->
        </div>
        <!-- /.container -->
    </div>
    <!-- /#content -->
    <%@include file="footer.jsp" %>