<main class="main-content">
    <div class ="container">
        <div class="margin-top row">
            <div id= "left-content" class="col-md-8">
                <h1>Hajj Winner</h1>
                <hr class="colorgraph">
                <div class="btn-pref btn-group btn-group-justified btn-group-lg" role="group" aria-label="...">
                    <div class="btn-group" role="group">
                        <button type="button" id="stars" class="btn btn-filic" href="#tab1" data-toggle="tab"><span class="glyphicon glyphicon-book" aria-hidden="true"></span>
                            <div class="hidden-xs">Hajj Winner 2016 </div>
                        </button>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="button" id="favorites" class="btn btn-default" href="#tab2" data-toggle="tab"><span class="glyphicon glyphicon-blackboard" aria-hidden="true"></span>
                            <div class="hidden-xs">Hajj Winner 2015</div>
                        </button>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="button" id="following" class="btn btn-default" href="#tab3" data-toggle="tab"><span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span>
                            <div class="hidden-xs">Hajj Winner 2014</div>
                        </button>
                    </div>
                </div>

                <div class="well border-none">
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="tab1">
                            <div class="row">
                                <p>{{ image("images/winner/Hajj.jpg", "class": "img-responsive img-box img-thumbnail") }}</p>

                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Name</th>
                                        <th>Designation</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Md Abdul Rahim Buiyan</td>
                                        <td>SEVP, Incharge Service Division</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Md. Kamrul Hasan Khan</td>
                                        <td>SEVP, Incharge Finance & Account Division</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Prof. Syed Abdul Motin</td>
                                        <td>SEVP, Dhaha Division Incharge</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>Md. Abdul Mannan</td>
                                        <td>EVP, Rajshahi Division Incharge</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>Md. Hifjur Rahman</td>
                                        <td>EVP, Commilla Division Incharge</td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>Md. Motiur Rahman</td>
                                        <td>EVP, Sylhet Division Incharge</td>
                                    </tr>
                                    <tr>
                                        <td>7</td>
                                        <td>Haun or Rashid Faruqee</td>
                                        <td>SB Incharge, Western Division</td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>Kamal Hosen Hawlader</td>
                                        <td>JEVP, Internal Control And Complaince Incharge</td>
                                    </tr>
                                    <tr>
                                        <td>9</td>
                                        <td>Md Rezaul Karim</td>
                                        <td>SVP, Bogra Service Centre Incharge</td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>Abdul Mobin Khan</td>
                                        <td>SVP, Noakhali Divisional Incharge (SB)</td>
                                    </tr>
                                    <tr>
                                        <td>11</td>
                                        <td>Md. Abdul awal</td>
                                        <td>JSVP, Dhaka North Service Centre incharge</td>
                                    </tr>
                                    <tr>
                                        <td>12</td>
                                        <td>Md. Imran</td>
                                        <td>JSVP, Keranihat Service Center Incharge</td>
                                    </tr>
                                    <tr>
                                        <td>13</td>
                                        <td>Md. Mohi Uddin</td>
                                        <td>JSVP, Maesdi Service Center Incharge</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="tab-pane fade in" id="tab2">
                            <div class="row">
                                <h3>Hajj Winner 2015</h3>
                            </div><!--end row -->
                        </div>
                        <div class="tab-pane fade in" id="tab3">
                            <h3>Hajj Winner 2014</h3>
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
