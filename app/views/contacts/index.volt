<main class="main-content">
    <div class ="container">
        <div class="margin-top row">
            <div id= "left-content" class="col-md-8">
                <div class="row margin-bottom">
                    <script src='https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyB0j3sNAc3hUh5ttRJDzrneIrRJVPGCpAE'></script>
                    <div style='overflow:hidden;height:400px;width:760px;'><div id='gmap_canvas' style='height:400px;width:760px;'></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div> <a href='https://www.embed-map.net/'>Fareast google map</a> <script type='text/javascript' src='https://embedmaps.com/google-maps-authorization/script.js?id=8cbdc676862b3d380094ede74be8b7f6f9130df6'></script><script type='text/javascript'>function init_map(){var myOptions = {zoom:16,center:new google.maps.LatLng(23.730036,90.40793299999996),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(23.730036,90.40793299999996)});infowindow = new google.maps.InfoWindow({content:'<strong>Fareast Islami Life Insurance Co. Ltd</strong><br>35, Topkhana Road, Dhaka<br>1000 <br>'});google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
                    <form class="well form-horizontal" style="border: none;" form method="post" autocomplete="off" enctype= "multipart/form-data" class='form-post' accept-charset="UTF-8" role="form" action=""  id="contact_form">
                        <fieldset>

                            <h3>Contact Us</h3>
                            <hr class="colorgreen">
                            <div class="row form-group">
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input  name="name" placeholder="Name" class="form-control"  type="text">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                        <input name="email" placeholder="E-Mail Address" class="form-control"  type="text">
                                    </div>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                        <input name="phone" placeholder="01xx xxxxxxx" class="form-control" type="text">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                                        <select name="state" class="form-control selectpicker" >
                                            <option value=" " >Please select inquiry reason</option>
                                            <option>General Inquiry</option>
                                            <option>Online Statement</option>
                                            <option >Online Payment</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <!-- Text area for description-->

                            <div class="form-group">
                                <div class="col-md-12 inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                        <textarea class="form-control" name="comment" placeholder="Description"></textarea>
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
                                    <button type="submit" value="Submit" class="btn btn-warning" >Send <span class="glyphicon glyphicon-send"></span></button>
                                </div>
                            </div>

                            <!-- Success message -->
                            {#<div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Thanks for contacting us, we will get back to you shortly.</div>#}

                        </fieldset>
                    </form>
                </div>  <!-- .row -->
            </div><!-- End Left content -->
            <div id= "right-content" class="col-md-4 col-xs-12">
                <div class="contact-detail margin-top">
                    <h3>Address</h3>
                    <hr class="colorgreen">
                    <address>
                        <p>Fareast Islami Life Insurance Company Limited <br>
                            35 Topkhana Road, Fareast Tower, </br>Dhaka -1000.</p>

                        <p><i class="glyphicon glyphicon-earphone"></i>      096130000123</p>
                         <p><i class="glyphicon glyphicon-envelope"></i>      info@fareastislamilife.com</p>
                    </address>
                </div>
            </div><!-- End right content -->
        </div>
    </div>
</main>

<script src="https://www.google.com/recaptcha/api.js"></script>

