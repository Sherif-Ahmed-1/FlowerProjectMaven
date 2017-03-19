<%-- 
    Document   : checkout3-Extras
    Created on : Mar 19, 2017, 7:54:00 AM
    Author     : alaa
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@include file="header.jsp" %>

 <div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="index.jsp">Home</a>
                        </li>
                        <li>Checkout - Extras </li>
                    </ul>
                </div>

                <div class="col-md-9" id="checkout">

                    <div class="box">
                        <form method="post" action="checkout4-Offers.jsp">
                            <h1>Checkout</h1>
                            <ul class="nav nav-pills nav-justified">
                                <li ><a href="checkout.jsp"><i class="fa fa-map-marker"></i><br>Address</a>
                                </li>
                                <li ><a href="checkout2.jsp"><i class="fa fa-envelope"></i><br>Delivery Message</a>
                                </li>
                                <li class="active"><a href="checkout3-Extras.jsp"><i class="fa fa-envelope"></i><br>Extras</a>
                                </li>
                                <li class="disabled"><a href="checkout4-Offers.jsp"><i class="fa fa-money"></i><br>Payment Offers!</a>
                                </li>
                                <li class="disabled"><a href="checkout5-review.jsp"><i class="fa fa-eye"></i><br>Order Review</a>
                                </li>
                            </ul>

                            <div class="content">
                                <div class="row"></div>
                                <div class="row"></div>
                                <center>
                                <div class="row center">
                                    <div class="col-sm-1"></div>
                                    <div class="col-sm-10">
                                        <div class="form-group">
                                            <label for="firstname">Say Somthing Nice To Write on the Bouquet : </label>
                                            <br/>
                                            <textarea  rows="10" type="text" class="form-control" id="firstname"></textarea>
                                        </div>
                                    </div>
                                    
                                </div>
                                </center>
                                <div class="row"></div>
                                <div class="row"></div>
                               
                            </div>

                            <div class="box-footer">
                                <div class="pull-left">
                                    <a href="basket.jsp" class="btn btn-default"><i class="fa fa-chevron-left"></i>Back to basket</a>
                                </div>
                                <div class="pull-right">
                                    <button type="submit" class="btn btn-primary">Continue to Todays Offers!<i class="fa fa-chevron-right"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- /.box -->


                </div>
                <!-- /.col-md-9 -->

                <div class="col-md-3">

                    <div class="box" id="order-summary">
                        <div class="box-header">
                            <h3>Order summary</h3>
                        </div>
                        <p class="text-muted">Shipping and additional costs are calculated based on the values you have entered.</p>

                        <div class="table-responsive">
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <td>Order subtotal</td>
                                        <th>$446.00</th>
                                    </tr>
                                    <tr>
                                        <td>Shipping and handling</td>
                                        <th>$10.00</th>
                                    </tr>
                                    <tr>
                                        <td>Tax</td>
                                        <th>$0.00</th>
                                    </tr>
                                    <tr class="total">
                                        <td>Total</td>
                                        <th>$456.00</th>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>

                </div>
                <!-- /.col-md-3 -->

            </div>
            <!-- /.container -->
        </div>

<%@include file="footer.jsp" %>
   
