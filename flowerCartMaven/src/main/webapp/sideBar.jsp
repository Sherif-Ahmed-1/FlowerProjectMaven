<%-- 
    Document   : sideBar
    Created on : Mar 13, 2017, 4:49:52 PM
    Author     : Sheko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include  page="HomeServlet" ></jsp:include>
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
                        ${category.id}
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

            <form action="">
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