<%-- 
    Document   : index
    Created on : Mar 12, 2017, 6:03:20 PM
    Author     : Sheko
--%>

<%@include file="header.jsp" %>
<jsp:include  page="HomeServlet" />

<div id="all">
    <div id="content">
        <div class="container">
            <div class="col-md-12">
                <div id="main-slider">
                    <div class="item">
                        <img src="assets/img/11.jpg" alt="" class="img-responsive">
                    </div>
                    <div class="item">
                        <img class="img-responsive" src="assets/img/12.jpg" alt="">
                    </div>
                    <div class="item">
                        <img class="img-responsive" src="assets/img/13.jpg" alt="">
                    </div>
                    <div class="item">
                        <img class="img-responsive" src="assets/img/14.jpg" alt="">
                    </div>
                </div>
                <!-- /#main-slider -->
            </div>
        </div>

        <!-- *** ADVANTAGES HOMEPAGE ***
_________________________________________________________ -->
        <div id="advantages">
            <div class="container">
                <div class="same-height-row">
                    <div class="col-sm-4">
                        <div class="box same-height clickable">
                            <div class="icon"><i class="fa fa-heart"></i>
                            </div>

                            <h3><a href="#">We love our customers</a></h3>
                            <p>We are known to provide best possible Flowers ever</p>
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <div class="box same-height clickable">
                            <div class="icon"><i class="fa fa-tags"></i>
                            </div>

                            <h3><a href="#">Best prices</a></h3>
                            <p>You can check that the height of the boxes adjust when longer text like this one is used in one of them.</p>
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <div class="box same-height clickable">
                            <div class="icon"><i class="fa fa-thumbs-up"></i>
                            </div>

                            <h3><a href="#">100% satisfaction guaranteed</a></h3>
                            <p>Free returns on everything for 3 months.</p>
                        </div>
                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container -->
        </div>
        <!-- /#advantages -->

        <!-- *** ADVANTAGES END *** -->

        <!-- *** HOT PRODUCT SLIDESHOW ***
_________________________________________________________ -->
        <div id="hot">

            <div class="box">
                <div class="container">
                    <div class="col-md-12">
                        <h2><a href="AllBouquets.jsp" style="text-decoration: none;" title="show all bouquets"> Bouquets</a></h2>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="product-slider">
                    <c:forEach items="${requestScope.products}" var="product" end="6">
                        <div class="item">
                            <div class="product">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="${product.images.get(0).url}" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="${product.images.get(0).url}" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="${product.images.get(0).url}" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="detail.html">${product.name}</a></h3>
                                    <strong><a class="item_add" href="cartServlet?id=${product.id}" style="text-decoration: none;"> <i class="fa fa-shopping-cart"></i>${product.price} </a> </strong>
                                </div>
                               
                                <!-- /.text -->
                            </div>
                            <!-- /.product -->
                        </div>

                    </c:forEach>
                </div>
                <!-- /.product-slider -->
            </div>
            <!-- /.container -->

        </div>
        <!-- /#hot -->

        <!-- ***Bouquets END *** -->
        <!-- *** Flower Start *** -->
        <div id="hot">
            <div class="box">
                <div class="container">
                    <div class="col-md-12">
                        <h2>Flowers</h2>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="product-slider">
                    <c:forEach items="${requestScope.flowers}" var="flower" end="6">
                        <div class="item">
                            <div class="product" >
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="flowerBouquests?f=${flower.id}">
                                               <img src="${flower.image.url}" alt="" class="img-responsive" >
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="flowerBouquests?f=${flower.id}">
                                                <img src="${flower.image.url}" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="flowerBouquests?f=${flower.id}"class="invisible">
                                    <img src="${flower.image.url}" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3><a href="flowerBouquests?f=${flower.id}">${flower.name}</a></h3>
                                    <p class="price">${flower.country}</p>
                                </div>
                                <!-- /.text -->
                            </div>
                            <!-- /.flower -->
                        </div>

                    </c:forEach>
                </div>
                <!-- /.flower-slider -->
            </div>
            <!-- /.container -->

        </div>

        <!-- *** BLOG HOMEPAGE ***
_________________________________________________________ -->

        <div class="box text-center" data-animate="fadeInUp">
            <div class="container">
                <div class="col-md-12">
                    <h3 class="text-uppercase">From our blog</h3>

                    <p class="lead">What's new in the world of fashion? <a href="blog.html">Check our blog!</a>
                    </p>
                </div>
            </div>
        </div>

        <div class="container">

            <div class="col-md-12" data-animate="fadeInUp">

                <div id="blog-homepage" class="row">
                    <div class="col-sm-6">
                        <div class="post">
                            <h4><a href="post.html">Fashion now</a></h4>
                            <p class="author-category">By <a href="#">John Slim</a> in <a href="">Fashion and style</a>
                            </p>
                            <hr>
                            <p class="intro">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean
                                ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                            <p class="read-more"><a href="post.html" class="btn btn-primary">Continue reading</a>
                            </p>
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="post">
                            <h4><a href="post.html">Who is who - example blog post</a></h4>
                            <p class="author-category">By <a href="#">John Slim</a> in <a href="">About Minimal</a>
                            </p>
                            <hr>
                            <p class="intro">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean
                                ultricies mi vitae est. Mauris placerat eleifend leo.</p>
                            <p class="read-more"><a href="post.html" class="btn btn-primary">Continue reading</a>
                            </p>
                        </div>

                    </div>

                </div>
                <!-- /#blog-homepage -->
            </div>
        </div>
        <!-- /.container -->

        <!-- *** BLOG HOMEPAGE END *** -->


    </div>
    <!-- /#content -->

    <%@include file="footer.jsp" %>