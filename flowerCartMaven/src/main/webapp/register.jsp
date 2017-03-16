<%-- 
    Document   : register
    Created on : Mar 13, 2017, 4:16:38 PM
    Author     : Sheko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script src="js/registerPage.js" type="text/javascript"></script>

<jsp:include page="header.jsp"></jsp:include>
    <div id="all">

        <div id="content">
            <div class="container">

                <div class="col-md-12">

                    <ul class="breadcrumb">
                        <li><a href="#">Home</a>
                        </li>
                        <li>New account / Sign in</li>
                    </ul>

                </div>
            <jsp:include page="sideBar.jsp"></jsp:include>
                <div class="col-md-9 center" >
                    <div class="box">
                        <h1>New account</h1>

                        <p class="lead">Not our registered customer yet?</p>
                        <p>With registration with us new world of fashion, fantastic discounts and much more opens to you! The whole process will not take you more than a minute!</p>
                        <p class="text-muted">If you have any questions, please feel free to <a href="contact.html">contact us</a>, our customer service center is working for you 24/7.</p>

                        <hr>

                        <form action="RegisterServlet" method="post">
                            <div class="form-group">
                                <label for="name">First Name<sup>*</sup></label>
                                <input type="text" class="form-control" id="name" name="fname" required>
                            </div>
                            <div class="form-group">
                                <label for="name">Last Name<sup>*</sup></label>
                                <input type="text" class="form-control" id="name" name="lname" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Email<sup>*</sup></label>
                                <input type="email" class="form-control" id="email"  name="mail" required>
                            </div>
                            <div class="form-group">
                                <label for="password">Password<sup>*</sup></label>
                                <input type="password" class="form-control" id="password" name="password" onblur="setConfirmPassword()" required>
                            </div>
                            <div class="form-group">
                                <label for="password">confirm Password<sup>*</sup></label>
                                <input type="password" class="form-control" id="Confirmpassword" onblur="viewpassword()" required>
                            </div>
                            <div class="form-group">
                                <label  for="birthday">Date of Birth <sup>*</sup></label>
                                <input type="date"  name="birthday" min="1980-12-31" max="2017-01-02" class="form-control"   required>
                            </div>
                    </div>

                    <div class="well" style="background-color: white;">
                        <h3>Your Contact Details</h3>
                        <div class="form-group">
                            <label  for="job">Job <sup>*</sup></label>
                            <input type="text" name="job" placeholder="Job"class="form-control"  required>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="phone">Phone <sup>*</sup></label>
                            <input type="tel" name="phone" placeholder="Phone" class="form-control"  required>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="address">Address <sup>*</sup></label>
                            <input type="text" name="address" placeholder="Address" class="form-control"  required>
                        </div>
                    </div>




                    <div class="well" style="background-color: white;">
                        <h3>Your Billing Data</h3>
                        <div class="form-group">
                            <label class="control-label" for="cridetlimit">Credit Limit <sup>*</sup></label>

                            <input type="number" name="cridetlimit" class="form-control" placeholder="Credit Limit" required>
                        </div>
                    </div>
                    <div class="well" style="background-color: white;">
                        <h3 >Your Interests</h3>
                        <div class="control-group">
                            <label class="control-label" for="inputCreditLimit">Interest </label>
                            <div class="controls">
                                <input type="text" name="interestsList" placeholder="Interest Name">
                                <input type="text" name="interestsList" placeholder="Interest Name">
                                <input type="text" name="interestsList" placeholder="Interest Name">
                                <input type="text" name="interestsList" placeholder="Interest Name">
                            </div>
                        </div>
                    </div>
                    <div class="well" style="background-color: white;">
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary"><i class="fa fa-user-md"></i> Register</button>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>

        <!--
                        <div class="col-md-6">
                            <div class="box">
                                <h1>Login</h1>
        
                                <p class="lead">Already our customer?</p>
                                <p class="text-muted">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies
                                    mi vitae est. Mauris placerat eleifend leo.</p>
        
                                <hr>
        
                                <form action="customer-orders.html" method="post">
                                    <div class="form-group">
                                        <label for="email">Email</label>
                                        <input type="text" class="form-control" id="email">
                                    </div>
                                    <div class="form-group">
                                        <label for="password">Password</label>
                                        <input type="password" class="form-control" id="password">
                                    </div>
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-primary"><i class="fa fa-sign-in"></i> Log in</button>
                                    </div>
                                </form>
                            </div>
                        </div>
        
        
                    </div>
                     /.container 
        
        --></div>
    <!-- /#content -->
<jsp:include page="footer.jsp"></jsp:include>