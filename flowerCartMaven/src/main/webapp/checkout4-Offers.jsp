<%-- 
    Document   : checkout4-Offers
    Created on : Mar 19, 2017, 7:54:31 AM
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
                <li>Checkout - Offers </li>
            </ul>
        </div>

        <div class="col-md-9" id="checkout">

            <div class="box">
                <form method="post" action="checkout5-review.jsp">
                    <h1>Checkout</h1>
                    <ul class="nav nav-pills nav-justified">
                        <li ><a href="checkout.jsp"><i class="fa fa-map-marker"></i><br>Address</a>
                        </li>
                        <li ><a href="checkout2.jsp"><i class="fa fa-envelope"></i><br>Delivery Message</a>
                        </li>
                        <li ><a href="checkout3-Extras.jsp"><i class="fa fa-envelope"></i><br>Extras</a>
                        </li>
                        <li class="active"><a href="checkout4-Offers.jsp"><i class="fa fa-money"></i><br>Payment Offers!</a>
                        </li>
                        <li class="disabled"><a href="checkout5-review.jsp"><i class="fa fa-eye"></i><br>Order Review</a>
                        </li>
                    </ul>

                    <div class="content">
                        <br/>
                        <br/>
                        
                        <c:if test="${requestScope.isBirthday}" >
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
                                <div class="listing listing-radius listing-success">
                                    <div class="shape">
                                        <div class="shape-text">20%</div>
                                    </div>
                                    <div class="listing-content">
                                        <h3 class="lead">Your Birthday is Today! </h3>
                                        <p>Buy now - 20% off.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </c:if>
                        
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-xs-12 col-sm-12 col-md-10 col-lg-10">
                                <div class="listing listing-radius listing-warning">
                                    <div class="shape">
                                        <div class="shape-text">20%</div>
                                    </div>
                                    <div class="listing-content">
                                        <h3 class="lead">Your order is Over $500! </h3>
                                        <p>Buy now - 20% off.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>

                    <div class="box-footer">
                        <div class="pull-left">
                            <a href="basket.jsp" class="btn btn-default"><i class="fa fa-chevron-left"></i>Back to basket</a>
                        </div>
                        <div class="pull-right">
                            <button type="submit" class="btn btn-primary">Continue Order Review <i class="fa fa-chevron-right"></i>
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


