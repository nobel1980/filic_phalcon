<main class="main-content">
    <div class ="container">
        <div class="margin-top row">
            <div id= "left-content" class="col-md-8">
                <div class="row margin-bottom">
                    <form class="well form-horizontal" form method="post" autocomplete="off" enctype= "multipart/form-data" class='form-post' accept-charset="UTF-8" role="form" action=""  id="contact_form">
                        <fieldset>

                            <legend>Fareast Payment Getway</legend>
                            <div class="row form-group">
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input  name="name" placeholder="Name" class="form-control"  type="text">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
                                        <input name="email" placeholder="Policy Number" class="form-control"  type="text">
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                        <input name="phone" placeholder="Mobile Number" class="form-control" type="text">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-gbp"></i></span>
                                        <input name="amount" placeholder="Amount" class="form-control" type="text">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                                        <select name="state" class="form-control selectpicker" >
                                            <option value=" " >Please select payment getway</option>
                                            <option>bKash</option>
                                            <option>Rocket</option>
                                            <option >BRAC Bank</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <!-- Text area for description-->

                            <div class="form-group">
                                <div class="col-md-12 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                        <textarea class="form-control" name="comment" placeholder="Note"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                               <div class="col-md-12">
                                   <div class="g-recaptcha" data-sitekey="6LctcwwUAAAAAF2WXJWoR8oBKdUZYaycgiKJfAqp"></div>
                               </div>
                            </div>
                            <!-- Button -->
                            <div class="form-group">
                                <label class="col-md-4 control-label"></label>
                                <div class="col-md-4">
                                    <button type="submit" value="Submit" class="btn btn-warning" >Confirm <span class="glyphicon glyphicon-send"></span></button>
                                </div>
                            </div>

                            <!-- Success message -->
                            {#<div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Thanks for contacting us, we will get back to you shortly.</div>#}

                        </fieldset>
                    </form>
                </div>  <!-- .row -->
            </div><!-- End Left content -->
            <div id= "right-content" class="col-md-3 col-xs-12">

            </div><!-- End right content -->
        </div>
    </div>
</main>

<script src="https://www.google.com/recaptcha/api.js"></script>

