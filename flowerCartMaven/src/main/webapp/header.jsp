<%-- 
    Document   : header
    Created on : Mar 12, 2017, 5:53:14 PM
    Author     : Sheko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Flowers</title>
        <meta name="keywords" content="">
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100' rel='stylesheet' type='text/css'>
        <!-- styles -->
        <link href="css/font-awesome.css" rel="stylesheet">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/animate.min.css" rel="stylesheet">
        <link href="css/owl.carousel.css" rel="stylesheet">
        <link href="css/owl.theme.css" rel="stylesheet">
        <!-- theme stylesheet -->
        <link href="css/style.default.css" rel="stylesheet" id="theme-stylesheet">
        <!-- your stylesheet with modifications -->
        <link href="css/custom.css" rel="stylesheet">
        <script src="js/respond.min.js"></script>
        <link rel="shortcut icon" href="favicon.png">
    </head>

    <body>

        <jsp:include  page="HomeServlet" />

        <!-- Logged In Header -->
        <c:if test="${!sessionScope.LoggedIn}" >    
            <!-- *** TOPBAR ***
        _________________________________________________________ -->
            <div id="top">
                <div class="container">
                    <div class="col-md-6 offer" data-animate="fadeInDown">
                        <a href="#" class="btn btn-success btn-sm" data-animate-hover="shake">Offer of the day</a>  <a href="#">Get flat 35% off on orders over $50!</a>
                    </div>
                    <div class="col-md-6" data-animate="fadeInDown">
                        <ul class="menu">
                            <li><a href="#" data-toggle="modal" data-target="#login-modal">Login</a>
                            </li>
                            <li><a href="register.jsp">Register</a>
                            </li>
                            <li><a href="contact.html">Contact</a>
                            </li>
                            <li><a href="#">Recently viewed</a>
                            </li>
                            
                        </ul>
                    </div>
                </div>
                <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
                    <div class="modal-dialog modal-sm">

                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="Login">Customer login</h4>
                            </div>
                            <div class="modal-body">
                                <form  method="post" action="LoginServlet">
                                    <div class="form-group">
                                        <input type="email" name="inputEmail" class="form-control" id="email-modal" placeholder="email">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="inputPassword" class="form-control" id="password-modal" placeholder="password">
                                    </div>

                                    <p class="text-center">
                                        <button type="submit" class="btn btn-primary"><i class="fa fa-sign-in"></i> Log in</button>
                                    </p>

                                </form>

                                <p class="text-center text-muted">Not registered yet?</p>
                                <p class="text-center text-muted"><a href="register.html"><strong>Register now</strong></a>! It is easy and done in 1&nbsp;minute and gives you access to special discounts and much more!</p>

                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <!-- *** TOP BAR END *** -->

            <!-- *** NAVBAR ***
         _________________________________________________________ -->

            <div class="navbar navbar-default yamm" role="navigation" id="navbar">
                <div class="container">
                    <div class="navbar-header">

                        <a class="navbar-brand home" href="index.html" data-animate-hover="bounce">
                            <img src="img/logo.png" alt="Obaju logo" class="hidden-xs">
                            <img src="img/logo-small.png" alt="Obaju logo" class="visible-xs"><span class="sr-only">Obaju - go to homepage</span>
                        </a>
                        <div class="navbar-buttons">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation">
                                <span class="sr-only">Toggle navigation</span>
                                <i class="fa fa-align-justify"></i>
                            </button>
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#search">
                                <span class="sr-only">Toggle search</span>
                                <i class="fa fa-search"></i>
                            </button>
                            <a class="btn btn-default navbar-toggle" href="basket.html">
                                <i class="fa fa-shopping-cart"></i>  <span class="hidden-xs">3 items in cart</span>
                            </a>
                        </div>
                    </div>
                    <!--/.navbar-header -->

                    <div class="navbar-collapse collapse" id="navigation">

                        <ul class="nav navbar-nav navbar-left">

                            <li><a href="index.jsp">Home</a>
                            </li>

                            <li><a href="#">Flowers</a>
                            </li>

                            <li><a href="#">Bouquets</a>
                            </li>

                            <li class="dropdown yamm-fw">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Categories <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <div class="yamm-content">
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <ul>
                                                        <c:forEach items="${requestScope.categories}" var="category">
                                                            <li><a href="category.html">${category.name}</a>
                                                            </li>
                                                        </c:forEach>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /.yamm-content -->
                                    </li>
                                </ul>
                            </li>




                        </ul>

                    </div>
                    <!--/.nav-collapse -->

                    <div class="navbar-buttons">

                        <div class="navbar-collapse collapse right" id="basket-overview">
                            <a href="basket.html" class="btn btn-primary navbar-btn"><i class="fa fa-shopping-cart"></i><span class="hidden-sm">3 items in cart</span></a>
                        </div>
                        <!--/.nav-collapse -->

                        <div class="navbar-collapse collapse right" id="search-not-mobile">
                            <button type="button" class="btn navbar-btn btn-primary" data-toggle="collapse" data-target="#search">
                                <span class="sr-only">Toggle search</span>
                                <i class="fa fa-search"></i>
                            </button>
                        </div>

                    </div>

                    <div class="collapse clearfix" id="search">

                        <form class="navbar-form" role="search">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search">
                                <span class="input-group-btn">

                                    <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>

                                </span>
                            </div>
                        </form>

                    </div>
                    <!--/.nav-collapse -->

                </div>
                <!-- /.container -->
            </div>
            <!-- /#navbar -->

        </c:if>


        <!--  Not Logged In Header -->
        <c:if test="${sessionScope.LoggedIn}" >    
            <!-- *** TOPBAR ***
        _________________________________________________________ -->
            <div id="top">
                <div class="container">
                    <div class="col-md-6 offer" data-animate="fadeInDown">
                        <a href="#" class="btn btn-success btn-sm" data-animate-hover="shake">Offer of the day</a>  <a href="#">Get flat 35% off on orders over $50!</a>
                    </div>
                    <div class="col-md-6" data-animate="fadeInDown">
                        <ul class="menu">
                            <li><a href="#"> My Account </a>
                            </li>
                            <li><a href="#">Contact</a>
                            </li>
                            <li><a href="#">Recently viewed</a>
                            </li>
                            <li><a href="LogoutServlet"> Log out </a>
                            </li>
                        </ul>
                    </div>
                </div>


            </div>

            <!-- *** TOP BAR END *** -->

            <!-- *** NAVBAR ***
         _________________________________________________________ -->

            <div class="navbar navbar-default yamm" role="navigation" id="navbar">
                <div class="container">
                    <div class="navbar-header">

                        <a class="navbar-brand home" href="index.html" data-animate-hover="bounce">
                            <img src="img/logo.png" alt="Obaju logo" class="hidden-xs">
                            <img src="img/logo-small.png" alt="Obaju logo" class="visible-xs"><span class="sr-only">Obaju - go to homepage</span>
                        </a>
                        <div class="navbar-buttons">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation">
                                <span class="sr-only">Toggle navigation</span>
                                <i class="fa fa-align-justify"></i>
                            </button>
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#search">
                                <span class="sr-only">Toggle search</span>
                                <i class="fa fa-search"></i>
                            </button>
                            <a class="btn btn-default navbar-toggle" href="basket.html">
                                <i class="fa fa-shopping-cart"></i>  <span class="hidden-xs">3 items in cart</span>
                            </a>
                        </div>
                    </div>
                    <!--/.navbar-header -->

                    <div class="navbar-collapse collapse" id="navigation">

                        <ul class="nav navbar-nav navbar-left">
                            <li><a href="index.jsp">Home</a>
                            </li>

                            <li><a href="#">Flowers</a>
                            </li>

                            <li><a href="AllBouquets.jsp">Bouquets</a>
                            </li>

                            <li class="dropdown yamm-fw">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Categories <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <div class="yamm-content">
                                            <div class="row">
                                                <div class="col-sm-4"></div>
                                                <div class="col-sm-4">
                                                    <ul>
                                                        <c:forEach items="${requestScope.categories}" var="category">
                                                            <li><a href="categoryBouquets?c=${category.id}">${category.name}</a>
                                                            </li>
                                                        </c:forEach>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /.yamm-content -->
                                    </li>
                                </ul>
                            </li>
                        </ul>

                    </div>
                    <!--/.nav-collapse -->

                    <div class="navbar-buttons">

                        <div class="navbar-collapse collapse right" id="basket-overview">
                            <a href="basket.html" class="btn btn-primary navbar-btn"><i class="fa fa-shopping-cart"></i><span class="hidden-sm">3 items in cart</span></a>
                        </div>
                        <!--/.nav-collapse -->

                        <div class="navbar-collapse collapse right" id="search-not-mobile">
                            <button type="button" class="btn navbar-btn btn-primary" data-toggle="collapse" data-target="#search">
                                <span class="sr-only">Toggle search</span>
                                <i class="fa fa-search"></i>
                            </button>
                        </div>

                    </div>

                    <div class="collapse clearfix" id="search">

                        <form class="navbar-form" role="search">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search">
                                <span class="input-group-btn">

                                    <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>

                                </span>
                            </div>
                        </form>

                    </div>
                    <!--/.nav-collapse -->

                </div>
                <!-- /.container -->
            </div>
            <!-- /#navbar -->

        </c:if>
