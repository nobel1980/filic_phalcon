<main class="main-content">
    <div class ="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="right-line">জনপ্রিয় বীমাসমূহ </h2>
                <hr class="colorgraph">
            </div>
            <div class="col-md-3">
                <section>
                    <div class="panel panel-default ">
                        <div id="children" class="panel-body popular-product">
                            <div class="thumbnail">
                                {{ image("images/icons/child-green.png", "alt": "child insurance", "class" : "alignleft imageborder") }}
                            </div>
                            <a href='javascript:void(0);' onclick='product_detailbn(this);' id="8" data-toggle="modal" data-target="#productDetail"><h3 class="text-center">শিশু নিরাপত্তা </h3></a>
                            <h4 class="text-center"><small>শিশুর নিরাপদ ভবিষ্যত</small></h4>
                        </div>
                    </div>
                </section>
            </div>
            <div class="col-md-3">
                <section>
                    <div class="panel panel-default ">
                        <div id="hajj" class="panel-body  popular-product">
                            <div class="thumbnail">
                                {{ image("images/icons/kaaba-mecca-green.png", "alt": "child insurance", "class" : "alignleft imageborder") }}
                            </div>
                            <a href='javascript:void(0);' onclick='product_detailbn(this);' id="3" data-toggle="modal" data-target="#productDetail"><h3 class="section-title text-center">হজ্জ্ব বীমা</h3></a>
                            <h4 class="text-center"><small>সুনিশ্চিত হজ্জ্ব</small></h4>
                        </div>
                    </div>
                </section>
            </div>
            <div class="col-md-3">
                <section>
                    <div class="panel panel-default ">
                        <div id="pension" class="panel-body popular-product">
                            <div class="thumbnail">
                                {{ image("images/icons/retirement-green.png", "alt": "child insurance", "class" : "alignleft imageborder") }}
                            </div>
                            <a href='javascript:void(0);' onclick='product_detailbn(this);' id="2" data-toggle="modal" data-target="#productDetail"><h3 class="section-title text-center">অবসর পরিকল্পনা</h3></a>
                            <h4 class="text-center"><small>টেনশন বিহীন অবসর</small></h4>
                        </div>
                    </div>
                </section>
            </div>
            <div class="col-md-3">
                <section>
                    <div class="panel panel-default ">
                        <div id="deposite" class="panel-body popular-product">
                            <div class="thumbnail">
                                {{ image("images/icons/money-saving-green.png", "alt": "child insurance", "class" : "alignleft imageborder") }}
                            </div>
                            <a href='javascript:void(0);' onclick='product_detailbn(this);' id="11" data-toggle="modal" data-target="#productDetail"><h3 class="section-title text-center">স্থায়ী আমানত</h3></a>
                            <h4 class="text-center"><small>সুপরিকল্পিত ভবিষ্যত</small></h4>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <div class="row">
            <div class="row">
                <div class="col-md-6">
                    <table class="product">
                        <thead>
                        <tr>
                            <th> একক বীমা পরিকল্প</th>
                        </tr>
                        </thead>
                        <tbody>
                        {% for ekok in ekok %}
                            <tr>
                                <td data-label="name"><a href='javascript:void(0);' onclick='product_detailbn(this);' id="{{ ekok.id }}" data-toggle="modal" data-target="#productDetail">{{ ekok.title_bn }}</a></td>
                            </tr>
                        {% endfor %}
                        </tbody>
                    </table>
                </div> <!-- End col-md-6-->
                <div class="col-md-6">
                    <table class="product">
                        <thead>
                        <tr>
                            <th>সার্বজনীন বীমা পরিকল্প</th>
                        </tr>
                        </thead>
                        <tbody>
                        {% for sb in sb %}
                            <tr>
                                <td data-label="name"><a href='javascript:void(0);' onclick='product_detailbn(this);' id="{{ sb.id }}" data-toggle="modal" data-target="#productDetail">{{ sb.title_bn }}</a></td>
                            </tr>
                        {% endfor %}
                        </tbody>
                    </table>

                    <table class="product">
                        <thead>
                        <tr>
                            <th> গ্রুপ বিমা  পরিকল্প</th>
                        </tr>
                        </thead>
                        <tbody>
                        {% for group in group %}
                            <tr>
                                <td data-label="name"><a href='javascript:void(0);' onclick='product_detailbn(this);' id="{{ group.id }}" data-toggle="modal" data-target="#productDetail">{{ group.title_bn }}</a></td>
                            </tr>
                        {% endfor %}
                        </tbody>
                    </table>
                </div> <!-- End col-md-6-->
            </div>
        </div>
</main>

<!-- Modal all product_detail-->
<div id="productDetail" class="modal fade" role="dialog" data-keyboard="static"  aria-hidden="true" style="display: none">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header modal-header-success">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"></h4>
                <span></span>
            </div>
            <div class="modal-body director">
                <div class="thumbnail">

                </div>

                <div id="modalContent">

                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>

<style>
    h1, h2, h3, a, th, p, li  {font-family: kalpurushregular!important; }
    h1,h2, h3 {color: #009471;}
</style>