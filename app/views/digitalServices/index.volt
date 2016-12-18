<main class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="feature">
                </div>
            </div>
            <div class="col-md-6 policyBox">
                <div class="well">
                    <h2>Policy Statement</h2>
                    <hr class="colorgraph">
                    <div class="feature">
                        <form name ="policy" action="statement.php" method="POST" id ="policy-form">
                            <div class="radioval form-group row">
                                <div  class="col-sm-4 form-control-label">
                                    <label for="ekok" class=" form-control-label">Ekok Bima</label>
                                </div>
                                <div class="col-sm-8">
                                    <label class="radio-inline">
                                        <input type="radio" name="radio"  value="ekok" checked="checked"> EKOK
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="radio" value="fdps"> FDPS
                                    </label>
                                </div>
                            </div>  <!--End row -->
                            <div class="radioval form-group row">
                                <div  class="col-sm-4 form-control-label">
                                    <label for="sb" class=" form-control-label">Sarbojonin Bima</label>
                                </div>
                                <div class="col-sm-8">
                                    <label class="radio-inline">
                                        <input type="radio" name="radio" value="sb"> MSP/FDPS
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="radio" value="sb ekok"> SB EKOK
                                    </label>
                                </div>
                            </div>  <!--End row -->

                            <div class="form-group row">
                                <label for="id" class="col-sm-4 form-control-label">Policy Number</label>
                                <div class="col-sm-4">
                                    <input type="varchar" class="form-control" name ="id" id = "id" placeholder="Policy number">
                                </div>
                            </div> <!--End row -->
                            <div class="form-group row">
                                <label for="dob" class="col-sm-4 form-control-label">Date of birth </label>
                                <div class="col-sm-4">
                                    <input type="varchar" maxlength="10" class="form-control" name="dob" id="dob" placeholder="dd/mm/yyyy">
                                </div>
                            </div>  <!--End row -->
                            <hr class="colorgraph">
                            <div class="form-group row">
                                <label for="" class="col-sm-4 form-control-label"></label>
                                <div class="col-sm-8">
                                    <button type="submit" value="Submit" class="btn btn-primary">Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div> <!--End policy box-->
            <div class="col-md-3">
                <div class="feature">
                </div>
            </div>
        </div> <!-- .row -->

    </div> <!-- .container -->
    </div>
</main>