
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Products details</title>

        <!-- Bootstrap -->
        <link href="../assets/css/bootstrap/bootstrapCSS/bootstrap.min.css" rel="stylesheet">

        <!-- Font Awesome -->
        <link href="../assets/css/fontawesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- NProgress -->
        <link href="../assets/css/nprogress.css" rel="stylesheet">
        <!-- iCheck -->
        <link href="../assets/css/green.css" rel="stylesheet">

        <!-- bootstrap-progressbar -->
        <link href="../assets/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
        <!-- JQVMap -->
        <link href="../assets/css/jqvmap.min.css" rel="stylesheet"/>
        <!-- bootstrap-daterangepicker -->
        <link href="../assets/css/daterangepicker.css" rel="stylesheet">
        <!-- Datatables -->
        <link href="../assets/css/bootstrap/bootstrapCSS/dataTables.bootstrap.min.css" rel="stylesheet">
        <link href="../assets/css/bootstrap/bootstrapCSS/buttons.bootstrap.min.css" rel="stylesheet">
        <!-- Custom Theme Style -->
        <link href="../assets/css/custom.min.css" rel="stylesheet">
    </head>
    <body class="nav-md">
        <div class="container body">
            <div class="main_container">
                <div class="col-md-3 left_col">
                    <div class="left_col scroll-view">
                        <div class="navbar nav_title" style="border: 0;">
                            <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Administrator Page</span></a>
                        </div>

                        <div class="clearfix"></div>

                        <!-- menu profile quick info -->
                        <div class="profile clearfix">
                            <div class="profile_pic">
                                <img src="../assets/img/img.jpg" alt="..." class="img-circle profile_img">
                            </div>
                            <div class="profile_info">
                                <span>Welcome,</span>
                                <h2>Adel Zaid</h2>
                            </div>
                        </div>
                        <!-- /menu profile quick info -->
                        <br />
                        <!-- sidebar menu -->
                        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                            <div class="menu_section">
                                <h3>General</h3>
                                <ul class="nav side-menu">
                                    <li><a><i class="fa fa-thumbs-o-up"></i> Products <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                           
                      <li><a href="ProductAddition.jsp">Add Product</a></li>
                      <li><a href="ProductDetails.jsp">Edit Product</a></li>
                      <li><a href="ProductDetails.jsp">Remove Product</a></li>
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-users"></i> Users <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="form.html">View User</a></li>
                                            <li><a href="form_advanced.html">Add User</a></li>
                                            <li><a href="form_validation.html">Remove User</a></li>
                                        </ul>
                                    </li>
                                    <li><a><i class="fa fa-bars"></i>Category<span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu">
                                            <li><a href="general_elements.html">Add Category</a></li>
                                            <li><a href="media_gallery.html">Edit Category</a></li>
                                            <li><a href="typography.html">Remove Category</a></li>
                                        </ul>
                                    </li>

                            </div>

                        </div>
                        <!-- /sidebar menu -->

                        <!-- /menu footer buttons -->
                        <div class="sidebar-footer hidden-small">
                            <a data-toggle="tooltip" data-placement="top" title="Settings">
                                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                            </a>
                            <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                            </a>
                            <a data-toggle="tooltip" data-placement="top" title="Lock">
                                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                            </a>
                            <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                            </a>
                        </div>
                        <!-- /menu footer buttons -->
                    </div>
                </div>

                <!-- top navigation -->
                <div class="top_nav">
                    <div class="nav_menu">
                        <nav>
                            <div class="nav toggle">
                                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                            </div>

                            <ul class="nav navbar-nav navbar-right">
                                <li class="">
                                    <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                        <img src="../assets/img/img.jpg" alt="">Adel Zaid
                                        <span class=" fa fa-angle-down"></span>
                                    </a>
                                    <ul class="dropdown-menu dropdown-usermenu pull-right">
                                        <li><a href="javascript:;"> Profile</a></li>
                                        <li>
                                            <a href="javascript:;">
                                                <span class="badge bg-red pull-right">50%</span>
                                                <span>Settings</span>
                                            </a>
                                        </li>
                                        <li><a href="javascript:;">Help</a></li>
                                        <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                                    </ul>
                                </li>

                                <li role="presentation" class="dropdown">
                                    <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                                        <i class="fa fa-envelope-o"></i>
                                        <span class="badge bg-green">6</span>
                                    </a>
                                    <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                                        <li>
                                            <a>
                                                <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                                                <span>
                                                    <span>John Smith</span>
                                                    <span class="time">3 mins ago</span>
                                                </span>
                                                <span class="message">
                                                    Film festivals used to be do-or-die moments for movie makers. They were where...
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a>
                                                <span class="image"><img src="../assets/img/img.jpg" alt="Profile Image" /></span>
                                                <span>
                                                    <span>John Smith</span>
                                                    <span class="time">3 mins ago</span>
                                                </span>
                                                <span class="message">
                                                    Film festivals used to be do-or-die moments for movie makers. They were where...
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a>
                                                <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                                                <span>
                                                    <span>John Smith</span>
                                                    <span class="time">3 mins ago</span>
                                                </span>
                                                <span class="message">
                                                    Film festivals used to be do-or-die moments for movie makers. They were where...
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a>
                                                <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                                                <span>
                                                    <span>John Smith</span>
                                                    <span class="time">3 mins ago</span>
                                                </span>
                                                <span class="message">
                                                    Film festivals used to be do-or-die moments for movie makers. They were where...
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <div class="text-center">
                                                <a>
                                                    <strong>See All Alerts</strong>
                                                    <i class="fa fa-angle-right"></i>
                                                </a>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <!-- /top navigation -->

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
                                            <th>No.</th>
                                            <th>Flower Name</th>
                                            <th>Price</th>
                                            <th>Quantity</th>
                                            <th>Rating</th>
                                            <th>Edit</th>
                                            <th>Remove</th>
                                        </tr>
                                    </thead>


                                    <tbody>
                                        <tr>
                                             <th><input type="checkbox" id="check-all" class="icheckbox_flat-green"></th>
                                            <td>Tiger Nixon</td>
                                            <td>System Architect</td>
                                            <td>Edinburgh</td>
                                            <td>61</td>
                                            <td>2011/04/25</td>
                                              <td class=" last"><a class="btn btn-block" href="#">
  <i class="fa fa-pencil-square-o fa-lg"></i> Edit</a></td>
                                               <td class=" last"><a class="btn btn-block" href="#">
  <i class="fa fa-trash-o fa-lg"></i> Remove</a></td>
                                        </tr>
                                        <tr>
                                             <th><input type="checkbox" id="check-all" class="icheckbox_flat-green"></th>
                                            <td>Garrett Winters</td>
                                            <td>Accountant</td>
                                            <td>Tokyo</td>
                                            <td>63</td>
                                            <td>2011/07/25</td>
                                            
                                             <td class=" last"><a class="btn btn-block" href="#">  <i class="fa fa-pencil-square-o fa-lg"></i> Edit</a></td>
                                                                             <td class=" last"><a class="btn btn-block" href="#">  <i class="fa fa-trash-o fa-lg"></i> Remove</a></td>
                                        </tr>
                                        <tr>
                                             <th><input type="checkbox" id="check-all" class="icheckbox_flat-green"></th>
                                            <td>Ashton Cox</td>
                                            <td>Junior Technical Author</td>
                                            <td>San Francisco</td>
                                            <td>66</td>
                                            <td>2009/01/12</td>
                                            
                                             <td class=" last"><a class="btn btn-block" href="#">  <i class="fa fa-pencil-square-o fa-lg"></i> Edit</a></td>
                                                                             <td class=" last"><a class="btn btn-block" href="#">  <i class="fa fa-trash-o fa-lg"></i> Remove</a></td>
                                        </tr>

                                        <tr>
                                             <th><input type="checkbox" id="check-all" class="icheckbox_flat-green"></th>
                                            <td>Jennifer Acosta</td>
                                            <td>Junior Javascript Developer</td>
                                            <td>Edinburgh</td>
                                            <td>43</td>
                                            <td>2013/02/01</td>
                                            
                                             <td class=" last"><a class="btn btn-block" href="#">  <i class="fa fa-pencil-square-o fa-lg"></i> Edit</a></td>
                                                                             <td class=" last"><a class="btn btn-block" href="#">  <i class="fa fa-trash-o fa-lg"></i> Remove</a></td>
                                        </tr> 
                                        <tr>
                                             <th><input type="checkbox" id="check-all" class="icheckbox_flat-green"></th>
                                            <td>Jennifer Acosta</td>
                                            <td>Junior Javascript Developer</td>
                                            <td>Edinburgh</td>
                                            <td>43</td>
                                            <td>2013/02/01</td>
                                            
                                             <td class=" last"><a class="btn btn-block" href="#">  <i class="fa fa-pencil-square-o fa-lg"></i> Edit</a></td>
                                                                             <td class=" last"><a class="btn btn-block" href="#">  <i class="fa fa-trash-o fa-lg"></i> Remove</a></td>
                                        </tr>
                                        <tr>
                                             <th><input type="checkbox" id="check-all" class="icheckbox_flat-green"></th>
                                            <td>Cara Stevens</td>
                                            <td>Sales Assistant</td>
                                            <td>New York</td>
                                            <td>46</td>
                                            <td>2011/12/06</td>
                                            
                                             <td class=" last"><a class="btn btn-block" href="#">  <i class="fa fa-pencil-square-o fa-lg"></i> Edit</a></td>
                                                                             <td class=" last"><a class="btn btn-block" href="#">  <i class="fa fa-trash-o fa-lg"></i> Remove</a></td>
                                        </tr>
                                        <tr>
                                             <th><input type="checkbox" id="check-all" class="icheckbox_flat-green"></th>
                                            <td>Hermione Butler</td>
                                            <td>Regional Director</td>
                                            <td>London</td>
                                            <td>47</td>
                                            <td>2011/03/21</td>
                                            
                                             <td class=" last"><a class="btn btn-block" href="#">  <i class="fa fa-pencil-square-o fa-lg"></i> Edit</a></td>
                                                                             <td class=" last"><a class="btn btn-block" href="#">  <i class="fa fa-trash-o fa-lg"></i> Remove</a></td>
                                        </tr>
                                        <tr>
                                             <th><input type="checkbox" id="check-all" class="icheckbox_flat-green"></th>
                                            <td>Lael Greer</td>
                                            <td>Systems Administrator</td>
                                            <td>London</td>
                                            <td>21</td>
                                            <td>2009/02/27</td>
                                            
                                             <td class=" last"><a class="btn btn-block" href="#">  <i class="fa fa-pencil-square-o fa-lg"></i> Edit</a></td>
                                                                             <td class=" last"><a class="btn btn-block" href="#">  <i class="fa fa-trash-o fa-lg"></i> Remove</a></td>
                                        </tr>
                                        <tr>
                                             <th><input type="checkbox" id="check-all" class="icheckbox_flat-green"></th>
                                            <td>Jonas Alexander</td>
                                            <td>Developer</td>
                                            <td>San Francisco</td>
                                            <td>30</td>
                                            <td>2010/07/14</td>
                                            
                                             <td class=" last"><a class="btn btn-block" href="#">  <i class="fa fa-pencil-square-o fa-lg"></i> Edit</a></td>
                                                                             <td class=" last"><a class="btn btn-block" href="#">  <i class="fa fa-trash-o fa-lg"></i> Remove</a></td>
                                        </tr>
                                        <tr>
                                             <th><input type="checkbox" id="check-all" class="icheckbox_flat-green"></th>
                                            <td>Shad Decker</td>
                                            <td>Regional Director</td>
                                            <td>Edinburgh</td>
                                            <td>51</td>
                                            <td>2008/11/13</td>
                                            
                                             <td class=" last"><a class="btn btn-block" href="#">  <i class="fa fa-pencil-square-o fa-lg"></i> Edit</a></td>
                                                                             <td class=" last"><a class="btn btn-block" href="#">  <i class="fa fa-trash-o fa-lg"></i> Remove</a></td>
                                        </tr>
                                        <tr>
                                             <th><input type="checkbox" id="check-all" class="icheckbox_flat-green"></th>
                                            <td>Michael Bruce</td>
                                            <td>Javascript Developer</td>
                                            <td>Singapore</td>
                                            <td>29</td>
                                            <td>2011/06/27</td>
                                            
                                             <td class=" last"><a class="btn btn-block" href="#">  <i class="fa fa-pencil-square-o fa-lg"></i> Edit</a></td>
                                                                             <td class=" last"><a class="btn btn-block" href="#">  <i class="fa fa-trash-o fa-lg"></i> Remove</a></td>
                                        </tr>
                                        <tr>
                                             <th><input type="checkbox" id="check-all" class="icheckbox_flat-green"></th>
                                            <td>Donna Snider</td>
                                            <td>Customer Support</td>
                                            <td>New York</td>
                                            <td>27</td>
                                            <td>2011/01/25</td>
                                            
                                           <td class=" last"><a class="btn btn-block" href="#">  <i class="fa fa-pencil-square-o fa-lg"></i> Edit</a></td>
                                                                             <td class=" last"><a class="btn btn-block" href="#">  <i class="fa fa-trash-o fa-lg"></i> Remove</a></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /page content -->

                <!-- footer content -->
                <footer>
                    <div class="pull-right">
                        Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
                    </div>
                    <div class="clearfix"></div>
                </footer>
                <!-- /footer content -->
            </div>
        </div>

        <!-- jQuery -->
        <script src="../assets/js/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="../assets/js/bootstrap.min.js"></script>
        <!-- FastClick -->
        <script src="../assets/js/fastclick.js"></script>
        <!-- NProgress -->
        <script src="../assets/js/nprogress.js"></script>
        <!-- Chart.js -->
        <script src="../assets/js/Chart.min.js"></script>
        <!-- gauge.js -->
        <script src="../assets/js/gauge.min.js"></script>
        <!-- bootstrap-progressbar -->
        <script src="../assets/js/bootstrap-progressbar.min.js"></script>
        <!-- iCheck -->
        <script src="../assets/js/icheck.min.js"></script>
        <!-- Skycons -->
        <script src="../assets/js/skycons.js"></script>
        <!-- Flot -->
        <script src="../assets/js/jquery.flot.js"></script>
        <script src="../assets/js/jquery.flot.pie.js"></script>
        <script src="../assets/js/jquery.flot.time.js"></script>
        <script src="../assets/js/jquery.flot.stack.js"></script>
        <script src="../assets/js/jquery.flot.resize.js"></script>
        <!-- Flot plugins -->
        <script src="../assets/js/jquery.flot.orderBars.js"></script>
        <script src="../assets/js/jquery.flot.spline.min.js"></script>
        <script src="../assets/js/curvedLines.js"></script>
        <!-- DateJS -->
        <script src="../assets/js/date.js"></script>

        <!-- bootstrap-daterangepicker -->
        <script src="../assets/js/moment.min.js"></script>
        <script src="../assets/js/daterangepicker.js"></script>

        <!-- Datatables -->
        <script src="../assets/js/jquery.dataTables.min.js"></script>
        <script src="../assets/js/dataTables.bootstrap.min.js"></script>
        <script src="../assets/js/dataTables.buttons.min.js"></script>
        <script src="../assets/js/buttons.bootstrap.min.js"></script>
        <script src="../assets/js/buttons.html5.min.js"></script>
        <script src="../assets/js/buttons.print.min.js"></script>
        <!-- Custom Theme Scripts -->
        <script src="../assets/js/custom.min.js"></script>

    </body>
</html>
