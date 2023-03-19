<main class="main-content">
    <div class ="container">
        <div class="margin-top row">
            <div id= "left-content" class="col-md-8">
                <h1>Tour Winner</h1>
                <hr class="colorgraph">
                <div class="btn-pref btn-group btn-group-justified btn-group-lg" role="group" aria-label="...">
                    <div class="btn-group" role="group">
                        <button type="button" id="stars" class="btn btn-filic" href="#tab1" data-toggle="tab"><span class="glyphicon glyphicon-book" aria-hidden="true"></span>
                            <div class="hidden-xs">Tour Winner 2016 </div>
                        </button>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="button" id="favorites" class="btn btn-default" href="#tab2" data-toggle="tab"><span class="glyphicon glyphicon-blackboard" aria-hidden="true"></span>
                            <div class="hidden-xs">Tour Winner 2015</div>
                        </button>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="button" id="following" class="btn btn-default" href="#tab3" data-toggle="tab"><span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span>
                            <div class="hidden-xs">Tour Winner 2014</div>
                        </button>
                    </div>
                </div>

                <div class="well border-none">
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="tab1">
                            <div class="row">
                                <h3>Tour Winner 2016 </h3>
                            </div>
                        </div>
                        <div class="tab-pane fade in" id="tab2">
                            <div class="row">
                              <h3>Tour Winner 2015 </h3>
                            </div><!--end row -->
                        </div>
                        <div class="tab-pane fade in" id="tab3">
                            <h3>Tour Winner 2014</h3>
                        </div>
                    </div>
                </div>
            </div><!-- End Left content -->
            <div id= "right-content" class="col-md-3 col-xs-12">
                {{ partial("layouts/partial/financialSidebar") }}
            </div><!-- End right content -->
        </div>
    </div>
</main>
