<jsp:include page="../includes/header.jsp" />


<!-- page content -->
<div class="right_col" role="main">
    <div class="">

        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Add New Client <small>Enter Client details</small></h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_panel">
                        <br />
                        <form class="form-horizontal form-label-left input_mask" method="post" action="${pageContext.request.contextPath}/AddClientServlet">

                            <div class="col-md-10 col-sm-6 col-xs-12 form-group has-feedback">
                                <input type="text" class="form-control has-feedback-left" name="fname" placeholder="First Name" required="true">
                                <span class="fa fa-usd form-control-feedback left" aria-hidden="true"></span>
                            </div>
                            <div class="col-md-3 col-sm-12 col-xs-12 form-group has-feedback">
                                <input type="number" class="form-control" name="price" placeholder="Price" required="true">
                                <span class="fa fa-money form-control-feedback right" aria-hidden="true"></span>
                            </div>
                            <div class="col-md-3 col-sm-12 col-xs-12 form-group has-feedback">
                                <input type="number" class="form-control has-feedback-left" name="quantity" placeholder="Quantity" required="true">
                                <span class="fa fa-stack-exchange form-control-feedback left" aria-hidden="true"></span>
                            </div>
                            <div class="col-md-4 col-sm-12 col-xs-12 form-group has-feedback">
                                <input type="number" class="form-control has-feedback-left" name="rating" placeholder="Rating" max="5" min="1">
                                <span class="fa fa-star-half-o form-control-feedback left" aria-hidden="true"></span>
                            </div>
                            <div class="col-md-10 col-sm-10 col-xs-12">
                                <textarea class="form-control" placeholder="Write The discription of your product here" name="description"></textarea>
                            </div>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <div class="ln_solid"></div>
                            <div class="form-group">
                                <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
                                    <button type="button" class="btn btn-danger">Cancel</button>
                                    <button class="btn btn-success" type="reset" >Reset Data</button>
                                    <button type="submit" class="btn btn-primary">Add Flower</button>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>

        </div>

    </div>
</div>
<!-- /page content -->
<jsp:include page="../includes/footer.jsp" />