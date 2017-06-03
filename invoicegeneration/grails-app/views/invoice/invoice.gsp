<g:render template="/common/sidebar" />
            <div class="invoice-layout">
                <div class="col-sm-4">
                    <h1>New Invoice</h1>
                </div>
                <div class="col-lg-offset-5 col-sm-3 text-right">
                    <button class="btn btn-primary btn-block btn-lg" style="margin-top: 7%;">Save and Continue</button>
                </div>
            </div>
            <br><br>
            <div class="invoice-layout">
                <g:form name="new-invoice" url="[action:'create',controller:'Invoice']">
                    <div>
                        <div class="panel-group">
                            <div class="panel panel-default" style="background-color: #b7bbb0">
                                <div class="panel-heading" style="background-color: #b7bbb0">
                                    <h3 class="panel-title">
                                        <a data-toggle="collapse" href="#head">Business Address and Contact Details, Title, Summary, and Logo
                                            <span class="glyphicon glyphicon-chevron-down" style="float:right;" ></span></a>
                                    </h3>
                                </div>
                                <br>
                                <div id="head" class="panel-collapse collapse">
                                    <div class="row">
                                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                            <div class="row">
                                                <div class="col-xs-8 col-sm-6 col-md-6 col-lg-6 col-xs-offset-2 col-sm-offset-2 col-md-offset-2 col-lg-offset-2">
                                                    <input type="file" name="logo" id="logo" style="margin-top: 10%;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                            <div class="row">
                                                <div class="form-group">
                                                    <div class="col-sm-10 col-md-10 col-lg-10 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                                                        <input type="text" class="form-control" name="invoice-title" id="invoice-title" placeholder="Invoice Title" value="Invoice">
                                                    </div>
                                                </div>
                                               <br><br>
                                                <div class="form-group">
                                                    <div class="col-sm-10 col-md-10 col-lg-10 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                                                        <input type="text" class="form-control" name="description" id="description" placeholder="Summary (e.g. project name, description of invoice)">
                                                    </div>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="row text-right">
                                                <div class="form-group">
                                                    <div class="col-sm-10 col-md-10 col-lg-10 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                                                        <p>${user.organizationName}</p>
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="form-group">
                                                    <div class="col-sm-10 col-md-10 col-lg-10 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                                                        <p>Country</p>
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="form-group">
                                                    <div class="col-sm-10 col-md-10 col-lg-10 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                                                        <g:link>Edit Your Business Address and Contact Details</g:link>
                                                    </div>
                                                </div>
                                                <br>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="invoice-content">
                        <div class="row content-layout">
                            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                <div>
                                    <button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#addcustomer">
                                        <span class="glyphicon glyphicon-plus-sign"></span> Create a new customer
                                    </button>
                                </div>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                <div class="row text-right">
                                    <div class="form-group">
                                        <label class="control-label col-sm-3 col-md-3 col-lg-3 col-sm-offset-3 col-md-offset-3 col-lg-offset-3" for="invoice-number">Invoice Number:</label>
                                        <div class="col-sm-5 col-md-5 col-lg-5 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                                            <input type="text" class="form-control" name="invoice-number" id="invoice_number">
                                        </div>
                                    </div>
                                    <br><br>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3 col-md-3 col-lg-3 col-sm-offset-3 col-md-offset-3 col-lg-offset-3" for="po-number">P.O./S.O Number:</label>
                                        <div class="col-sm-5 col-md-5 col-lg-5 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                                            <input type="text" class="form-control" name="po-number" id="po_number">
                                        </div>
                                    </div>
                                    <br><br>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3 col-md-3 col-lg-3 col-sm-offset-3 col-md-offset-3 col-lg-offset-3" for="invoice-date">Invoice Date:</label>
                                        <div class="col-sm-5 col-md-5 col-lg-5 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                                            <input type="date" class="form-control" name="invoice-date" id="invoice_date" placeholder="">
                                        </div>
                                    </div>
                                    <br><br>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3 col-md-3 col-lg-3 col-sm-offset-3 col-md-offset-3 col-lg-offset-3" for="payment-due">Payment Due:</label>
                                        <div class="col-sm-5 col-md-5 col-lg-5  col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                                            <input type="date" class="form-control" name="payment-due" id="payment_due" placeholder="">
                                        </div>
                                    </div>
                                    <div class="form-group">

                                        <div class="col-sm-3 col-md-3 col-lg-3  col-sm-offset-6 col-md-offset-6 col-lg-offset-6">
                                            <h5>On Reciept</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-1 col-md-1 col-lg-1"></div>
                            <div class="col-sm-2 col-md-2 col-lg-2 item-edit">
                                <a data-toggle="modal" data-target="#edit-columns"><h4>Edit Columns</h4></a>
                            </div>
                        </div>
                        <div class="row item-strip">
                            <div class="" style="background-color: #4cae4c;">
                                <div class="col-sm-1 col-md-1 col-lg-1"></div>
                                <div class="col-sm-6 col-md-6 col-lg-6 item-input">
                                    <h3>Items</h3>
                                </div>
                                <div class="col-sm-1 col-md-1 col-lg-1 item-text">
                                    <h3>Quantity</h3>
                                </div>
                                <div class="col-sm-1 col-md-1 col-lg-1 item-text">
                                    <h3>Price</h3>
                                </div>
                                <div class="col-sm-2 col-md-2 col-lg-2 item-text">
                                    <h3>Amount</h3>
                                </div>

                            </div>
                        </div>

                        <div style="background-color: #31e1ef">
                            <br>
                            <div class="row">
                                <div class="col-sm-1 col-md-1 col-lg-1"></div>
                                <div class="col-sm-2 col-md-2 col-lg-2 item-input">
                                    <input type="text" class="form-control" name="item-name" id="item_name" placeholder="Enter Item Name">
                                </div>
                                <div class="col-sm-4 col-md-4 col-lg-4 item-input">
                                    <input type="text" class="form-control" name="item-desc" id="item_desc" placeholder="Enter Item Description">
                                </div>
                                <div class="col-sm-1 col-md-1 col-lg-1 item-input">
                                    <input type="text" class="form-control" name="item-quantity" id="item_quantity">
                                </div>
                                <div class="col-sm-1 col-md-1 col-lg-1 item-input">
                                    <input type="text" class="form-control" name="item-price" id="item_price">
                                </div>
                                <div class="col-sm-2 col-md-2 col-lg-2">
                                    <input type="text" class="form-control" name="payment-due" id="payment_due" placeholder="">
                                </div>
                            </div>
                            <br>
                            <div class="row">
                                <div class="col-sm-7 col-md-7 col-lg-7"></div>
                                <div class="col-sm-3 col-md-3 col-lg-3 item-tax">
                                    <a data-toggle="modal" data-target="#tax"><input type="text" class="form-control  " name="tax" id="" placeholder=""></a>
                                    %{--<input type="text" class="form-control  " name="tax" id="" placeholder="">--}%
                                </div>
                            </div>
                            <hr>
                        </div>
                        <div class="row">
                            <div class="col-sm-7 col-md-7 col-lg-7"></div>
                            <div class="col-sm-3 col-md-3 col-lg-3 text-right" style="padding-right: 2.5%;">
                                <h4>Subtotal</h4>
                            </div>
                            <div class="col-sm-7 col-md-7 col-lg-7 text-right" ><label class="control-label" for="" style="margin-right: 10px">TOTAL</label></div>
                                <div class="col-sm-3 col-md-3 col-lg-3" style="padding-right: 2.5%;">

                                <input type="text" class="form-control  " name="tax" id="" placeholder="">
                            </div>
                        </div>

                        <hr>
                        <div class="row">
                            <div class="col-sm-5 col-md-5 col-lg-5  col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                                <label class="control-label" for="notes">NOTES</label><br>
                                <g:textArea rows="4" cols="50" class="note-text" name="notes" id="notes" placeholder="Enter notes here"></g:textArea>
                            </div>
                        </div>
                        <br><br>
                    </div>
                    <br>
                    <div >
                        <div class="panel-group">
                            <div class="panel panel-default" style="background-color: #b7bbb0">
                                <div class="panel-heading" style="background-color: #b7bbb0">
                                    <h3 class="panel-title">
                                        <a data-toggle="collapse" href="#foot">FOOTER<span class="glyphicon glyphicon-chevron-down" style="float:right;" ></span></a>
                                    </h3>
                                </div>
                                <br>
                                <div id="foot" class="panel-collapse collapse">
                                    <div class="row">
                                        <div class="form-group">
                                            <div class="col-sm-10 col-md-10 col-lg-10 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
                                                <g:textArea rows="6" cols="120" class="note-text" name="notes" id="notes" placeholder="Enter notes here"></g:textArea>
                                            </div>
                                        </div>
                                    </div>
                                    <br>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="invoice-layout">
                        <div class="col-sm-4">

                        </div>
                        <div class="col-lg-offset-5 col-sm-3 text-right">
                            <button class="btn btn-primary btn-block btn-lg" style="margin-top: 7%;">Save and Continue</button>
                        </div>
                    </div>
                </g:form>
            </div>
        </div>
    </div>


%{--/************* Edit Columns  ****************/--}%
    <div class="modal fade" id="edit-columns" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header" style=" background-color: #f2f2f2">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h2 class="modal-title text-center">Customize this Invoice</h2>
                </div>
                <div class="modal-body" style="background-color: #e6e6e6
                ">
                    <form action="/login/authenticate" method="post" class="form-horizontal" >
                        <input type='hidden' name='spring-security-redirect'
                               value='/secure'/>
                        <div>  <h4 class="wv-form-legend">Edit the titles of the columns on this invoice:</h4>
                        </div>
                        <div>  <h4 style="">Items</h4>
                            <label class="radio">
                                <input type="radio" style=" transform: scale(1.25); margin-left: 1cm;" name="optradio"> <p style="margin-left: 1.5cm;" > Items <p style="color: silver"></p></input>
                            </label>
                            <label class="radio" >
                                <input type="radio" style="transform: scale(1.25);margin-left: 1cm" name="optradio"><p style="margin-left: 1.5cm">Products</p> </input>
                            </label>
                            <label class="radio" >
                                <input type="radio" style="transform: scale(1.25) ;margin-left: 1cm" name="optradio"><p style="margin-left: 1.5cm"> Services</p></h4></input>
                            </label>
                            <div class="row">
                                <div class="col-sm-6 col-md-6 col-lg-6">
                                    <div class="row">
                                        <div class="col-sm-6 col-md-6 col-lg-6">
                                            <label class="radio" >
                                                <input type="radio" style="transform: scale(1.25);margin-left: 1cm" name="optradio"> <p style="margin-left: 1.5cm">Others</p></input>
                                            </label>
                                        </div>
                                        <div class="col-sm-6 col-md-6 col-lg-6" >
                                            <label> <input type="text" style=" width:80%;" name="others"/></label>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <hr>
                        <div>  <h4 style="">Unit</h4>
                            <label class="radio">
                                <input type="radio" style=" transform: scale(1.25); margin-left: 1cm;" name="optradio"> <p style="margin-left: 1.5cm;">Quantity</p></input>
                            </label>
                            <label class="radio" >
                                <input type="radio" style="transform: scale(1.25);margin-left: 1cm" name="optradio"><p style="margin-left: 1.5cm">Hours</p> </input>
                            </label>
                            <div class="row">
                                <div class="col-sm-6 col-md-6 col-lg-6">
                                    <div class="row">
                                        <div class="col-sm-6 col-md-6 col-lg-6">
                                            <label class="radio" >
                                                <input type="radio" style="transform: scale(1.25);margin-left: 1cm" name="optradio"> <p style="margin-left: 1.5cm">Others</p></input>
                                            </label>
                                        </div>
                                        <div class="col-sm-6 col-md-6 col-lg-6" >
                                            <label> <input type="text" style=" width:80%"; name="others"/></label>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <hr>
                        <div>  <h4 style="">Price</h4>
                            <label class="radio">
                                <input type="radio" style=" transform: scale(1.25); margin-left: 1cm;" name="optradio"> <p style="margin-left: 1.5cm;">Price</p></input>
                            </label>
                            <label class="radio" >
                                <input type="radio" style="transform: scale(1.25);margin-left: 1cm" name="optradio"><p style="margin-left: 1.5cm">Rate</p> </input>
                            </label>
                            <div class="row">
                                <div class="col-sm-6 col-md-6 col-lg-6">
                                    <div class="row">
                                        <div class="col-sm-6 col-md-6 col-lg-6">
                                            <label class="radio" >
                                                <input type="radio" style="transform: scale(1.25);margin-left: 1cm" name="optradio"> <p style="margin-left: 1.5cm">Others</p></input>
                                            </label>
                                        </div>
                                        <div class="col-sm-6 col-md-6 col-lg-6" >
                                            <label> <input type="text"  style=" width:80%" ; name="others"/></label>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <hr>
                        <div>  <h4 style="">Amount</h4>
                            <label class="radio">
                                <input type="radio" style=" transform: scale(1.25); margin-left: 1cm;" name="optradio"> <p style="margin-left: 1.5cm;">Amount</p></input>
                            </label>
                            <div class="row">
                                <div class="col-sm-6 col-md-6 col-lg-6">
                                    <div class="row">
                                        <div class="col-sm-6 col-md-6 col-lg-6">
                                            <label class="radio" >
                                                <input type="radio" style="transform: scale(1.25);margin-left: 1cm" name="optradio"> <p style="margin-left: 1.5cm">Others</p></input>
                                            </label>
                                        </div>
                                        <div class="col-sm-6 col-md-6 col-lg-6" >
                                            <label> <input type="text" style=" width:80%" name="others"/></label>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-4 col-md-4 col-lg-4">
                                <p style="font-size:22px; font-weight:300;">Hide columns:</p>
                            </div>
                            <div class="col-sm-8 col-md-8 col-lg-8">
                                <div class="row">
                                    <div class="col-sm-6 col-md-6 col-lg-6">
                                        <label class="checkbox">
                                            <input type="checkbox" value="" >Hide Item Name
                                        </label>
                                    </div>
                                    <div class="col-sm-6 col-md-6 col-lg-6">
                                        <label class="checkbox">
                                            <input type="checkbox" value="" >Hide Item Description
                                        </label>
                                    </div>
                                </div>
                                <div class="row">
                                    <h6 >Your invoice must show at least one of the above.</h6>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-4 col-md-4 col-lg-4"> </div>
                            <div class="col-sm-8 col-md-8 col-lg-8">
                                <label class="checkbox">
                                    <input type="checkbox" value="">Hide Units
                                </label>
                                <label class="checkbox">
                                    <input type="checkbox" value="">Hide Price
                                </label>
                                <label class="checkbox">
                                    <input type="checkbox" value="">Hide Amounts
                                </label>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-4 col-md-4 col-lg-4"></div>
                            <div class="col-sm-8 col-md-8 col-lg-8">
                                <label class="checkbox">
                                    <input type="checkbox" value=""> <p>Apply these settings for all future invoices.</p>
                                    <h6> You can change these anytime from Invoice Customization settings.</h6>
                                </label>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer" style="background-color:#f2f2f2">
                    <button type="button" class="btn btn-primary">Save</button>
                    <button type="button" class="btn btn-default">Cancel</button>
                </div>
            </div>

        </div>
    </div>
   %{-- /**************** end edit column model  *******************/--}%

   %{-- /*************************       tax mode         *************************/--}%
    <div id="tax" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h3 class="modal-title">Create a new tax</h3>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="row">
                            <div class=" col-sm-3 col-md-3 col-lg-3"></div>
                            <div class="col-sm-9 col-md-9 col-lg-9">
                                <div class="form-group">
                                    <label for="taxname">Tax Name:</label>
                                    <input type="text" class="form-control" style="width:60% " id="taxname">
                                </div>
                                <div class="form-group">
                                    <label for="taxrate">Tax Rate:</label>
                                    <input type="number" placeholder="                                                 %" class="form-control" style=" width: 60%" id="taxrate">
                                </div>
                                <div class="form-group">
                                    <label for="taxno">Tax Number / ID:</label>
                                    <input type="text" class="form-control" style="width:60% " id="taxno">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class=" col-sm-4 col-md-4 col-lg-4"></div>
                            <div class="col-sm-8 col-md-8 col-lg-8">
                                <label class="checkbox">
                                    <input style=" transform: scale(1.2)" type="checkbox" value=""><h5> Show Tax number on Invoice</h5>
                                </label>
                                <label class="checkbox">
                                    <input style=" transform: scale(1.2)" type="checkbox" value=""><p> This is a recoverable tax</p>
                                    <h5> A tax is recoverable if you can deduct the tax that you've paid from the tax that you have collected.<a href="#">Learn More</a></h5>
                                </label>
                                <label class="checkbox">
                                    <input style=" transform: scale(1.2)" type="checkbox" value=""><p> This is a compound tax</p>
                                    <h5> A compound tax, or stacked tax, is calculated on top of a primary tax.<a href="#">Learn More</a></h5>
                                </label>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Save</button>
                </div>
            </div>

        </div>
    </div>
   %{-- /**************** end tax model  *******************/--}%


    %{--******************* Add customer  *************************--}%
   <!-- Modal -->
    <div class="modal fade" id="addcustomer" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <div class="container">
                        <ul class="nav nav-tabs">
                            <li class="active"><a data-toggle="tab" href="#contact">Contact</a></li>
                            <li><a data-toggle="tab" href="#billing">Billing</a></li>
                            <li><a data-toggle="tab" href="#more">More</a></li>
                        </ul>
                        <br>
                    </div>
                </div>
                <br>
                <div>
                    <form>

                        <div class="row">
                            <div class="col-xs-offset-1 col-sm-offset-1 col-md-offset-1 col-lg-offset-1 col-xs-10 col-sm-10 col-md-10 col-lg-10">
                                <div class="tab-content">
                                    <div id="contact" class="tab-pane fade in active">
                                        <label>Customer <input type="text" style=" position: relative; left: 30px;" placeholder="Business or person"> </label><br><br>
                                        <label>Email <input type="text" style=" position: relative;left: 60px;"> </label><br><br>
                                        <label>Phone <input type="text" style=" position: relative;left: 53px;"> </label><br><br>
                                        <label>Contact <input type="text" style=" position: relative;left: 43px;"  placeholder="first name"> </label><br><br>
                                        <label>Customer <input type="text" style=" position: relative;left: 31px;"  placeholder="last name"> </label>
                                    </div>
                                    <div id="billing" class="tab-pane fade">
                                        <div class="row" >
                                            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                <label style="font-weight: bold">Currency</label>
                                            </div>
                                            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
                                                <div class="dropdown">
                                                    <input type="text" class="btn btn-default dropdown-toggle" id="menu1" data-toggle="dropdown">
                                                    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                                                        <li role="presentation"><a role="menuitem" href="#">HTML</a></li>
                                                        <li role="presentation"><a role="menuitem" href="#">CSS</a></li>
                                                        <li role="presentation"><a role="menuitem" href="#">JavaScript</a></li>
                                                        <li role="presentation"><a role="menuitem" href="#">About Us</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row" >
                                            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4"><label>Address Line1</label></div>
                                            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8"><input type="text" > </div>
                                        </div>
                                        <br>
                                        <div class="row" >
                                            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4"><label>Address Line2 </label></div>
                                            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8"><input type="text"> </div>
                                        </div>
                                        <br>
                                        <div class="row" >
                                            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4"><label>City </label></div>
                                            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8"><input type="text"> </div>
                                        </div>
                                        <br>
                                        <div class="row" >
                                            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4"><label>Postal/ZIP code </label></div>
                                            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8"><input type="text"> </div>
                                        </div>
                                        <br>
                                        <div class="row" >
                                            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                <label style="font-weight: bold">Country</label>
                                            </div>
                                            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
                                                <div class="dropdown">
                                                    <input type="text" class="btn btn-default dropdown-toggle" id="menu1" data-toggle="dropdown">
                                                    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                                                        <li role="presentation"><a role="menuitem" href="#">Afganistan</a></li>
                                                        <li role="presentation"><a role="menuitem" href="#">Albania</a></li>
                                                        <li role="presentation"><a role="menuitem" href="#">Aland Iceland</a></li>
                                                        <li role="presentation"><a role="menuitem" href="#">Algeria</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <br>
                                        <div class="row" >
                                            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                                                <label style="font-weight: bold">State/Province</label>
                                            </div>
                                            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
                                                <div class="dropdown">
                                                    <input type="text" class="btn btn-default dropdown-toggle" id="menu1" data-toggle="dropdown">
                                                    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                                                        <li role="presentation"><a role="menuitem" href="#">Afganistan</a></li>
                                                        <li role="presentation"><a role="menuitem" href="#">Albania</a></li>
                                                        <li role="presentation"><a role="menuitem" href="#">Aland Iceland</a></li>
                                                        <li role="presentation"><a role="menuitem" href="#">Algeria</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="more" class="tab-pane fade">
                                        <div class="row" >
                                            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4"><label>Account Number</label></div>
                                            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8"><input type="text" > </div>
                                        </div><br>
                                        <div class="row" >
                                            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4"><label>Fax</label></div>
                                            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8"><input type="text" > </div>
                                        </div><br>
                                        <div class="row" >
                                            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4"><label>Mobile</label></div>
                                            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8"><input type="text" > </div>
                                        </div><br>
                                        <div class="row" >
                                            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4"><label>Toll-Free</label></div>
                                            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8"><input type="text" > </div>
                                        </div><br>
                                        <div class="row" >
                                            <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4"><label>Website</label></div>
                                            <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8"><input type="text" > </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Save</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    %{--/******************************  End of Add Customer   **********************************/--}%
        </div>
    </div>

</div>

</body>
</html>