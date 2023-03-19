{{ stylesheet_link('fonts/font-awesome.min.css') }}
{{ content() }}

<main class="main-content">
<div class ="container">
<div class="margin-top row">
<div id= "left-content" class="col-md-8">
    <div class="row margin-bottom">
        <div class="col-sm-12">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="images/slider/1.jpg" alt="">
                    </div>

                    <div class="item">
                        <img src="images/slider/2.jpg" alt="">
                    </div>

                    <div class="item">
                        <img src="images/slider/3.jpg" alt="">
                    </div>
                </div>
            </div> <!-- End image slider -->
        </div> <!-- /.col-sm-12 -->
    </div>  <!-- .row -->
    <div class="CatGroup">
        <div class="row">
            <div class="col-md-6 col-xs-12">
                <div id="business-info" class="CatGroup-item">
                    <div class="media">
                        <div id="btn-buss-info" class="btn-style theme-btn">
                            <a>Business Information</a>
                        </div>
                        <div class="media-body">
                            <ul class="list-group">
                                <li class="list-group-item"><a href="{{ url('financialInformation/shareholdingComposition')  }}">{{ image("images/arrow-left.png") }} Shareholding Structure</a></li>
                                <li class="list-group-item"><a href="{{ url('financialInformation/businessSummary')  }}">{{ image("images/arrow-left.png") }} Business Summary</a></li>
                                <li class="list-group-item"><a href="{{ url('financialInformation/valueAddStatement')  }}">{{ image("images/arrow-left.png") }} Growth of Assets</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div> <!--col-md-6-->
            <div class="col-md-6 col-xs-12">
                <div id="claim" class="CatGroup-item">
                    <div class="media">
                        <div id="btn-claim" class="btn-style theme-btn">
                            <a>Claim Settlement</a>
                        </div>
                        <div class="media-body">
                            <ul class="list-group">
                                <li class="list-group-item"><a href="{{ url('claimSettlement')  }}">{{ image("images/arrow-left.png") }} How to claim</a></li>
                                <li class="list-group-item"><a href="{{ url('claimSettlement/index')  }}">{{ image("images/arrow-left.png") }} Claim online</a></li>
                                <li class="list-group-item"><a href="{{ url('claimSettlement/index')  }}">{{ image("images/arrow-left.png") }} Track Application</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div> <!--col-md-6-->
        </div><!--row-->
        <div class="row">
            <div class="col-md-6 col-xs-12">
                <div id="insurance" class="CatGroup-item">
                    <div class="media">
                        <div id="btn-insurance" class="btn-style theme-btn">
                            <a>Insurance Plans</a>
                        </div>
                        <div class="media-body">
                            <ul class="list-group">
                                <li class="list-group-item"><a href="{{ url('ProductPlan')  }}">{{ image("images/arrow-left.png") }} Child Protection</a></li>
                                <li class="list-group-item"><a href="{{ url('ProductPlan')  }}">{{ image("images/arrow-left.png") }} Fixed Deposite</a></li>
                                <li class="list-group-item"><a href="{{ url('ProductPlan')  }}">{{ image("images/arrow-left.png") }} Retirement Plan</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div> <!--col-md-6-->
            <div class="col-md-6 col-xs-12">
                <div id="finance" class="CatGroup-item">
                    <div class="media">
                        <div id="btn-finance" class="btn-style theme-btn">
                            <a>Finantial Information</a>
                        </div>
                        <div class="media-body">
                            <ul class="list-group">
                                <li class="list-group-item"><a href="{{ url('financialInformation/index')  }}">{{ image("images/arrow-left.png") }} Quarterly Statement</a></li>
                                <li class="list-group-item"><a href="{{ url('financialInformation/index')  }}">{{ image("images/arrow-left.png") }} Yearly Statement</a></li>
                                <li class="list-group-item"><a href="{{ url('financialInformation/index')  }}">{{ image("images/arrow-left.png") }} Annual Report</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div><!--col-md-6-->
        </div> <!--row-->
        <div class="row">
            <div class="col-md-6 col-xs-12">
                <div id="service" class="CatGroup-item">
                    <div class="media">
                        <div id="btn-service" class="btn-style theme-btn">
                            <a>Digital Services</a>
                        </div>
                        <div class="media-body">
                            <ul class="list-group">
                                <li class="list-group-item"><a href="http://103.254.85.142/policy"><img src="images/arrow-left.png">Find policy statement</a></li>
                                <li class="list-group-item"><a href="#"><img src="images/arrow-left.png">Download Apps for Android</a></li>
                                <li class="list-group-item"><a href="{{ url('digitalServices/epayment')  }}">{{ image("images/arrow-left.png") }} Pay premium online</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div> <!--col-md-6-->
            <div class="col-md-6 col-xs-12">
                <div id="office" class="CatGroup-item">
                    <div class="media">
                        <div id="btn-office" class="btn-style theme-btn">
                            <a>Office Information</a>
                        </div>
                        <div class="media-body">
                            <ul class="list-group">
                                <li class="list-group-item"><a href="{{ url('OfficeInformation/locationwise')  }}">{{ image("images/arrow-left.png") }} Area wise  Office </a></li>
                                <li class="list-group-item"><a href="{{ url('OfficeInformation')  }}">{{ image("images/arrow-left.png") }} Divisional Office </a></li>
                                <li class="list-group-item"><a href="{{ url('OfficeInformation')  }}">{{ image("images/arrow-left.png") }} Service Office </a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div><!--col-md-6-->
        </div> <!--row-->
    </div> <!-- end CatGroup-->


    <div class="about-us row row-padding">
        <div class="panel bg-color-pine-green">
            <div class="panel-heading">
                <h4 style="text-align: center;">About Us</h4>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12 award">
                <div class="media">
                    <a class="media-left" href="#">
                        <img class="media-object" src="images/award/fareast_tower.jpg" alt="tower">
                    </a>
                    <div class="media-body">
                        <p>Fareast Islami Life Insurance Co. Ltd. emerged as the 1st full-fledged Islami Life Insurance Company in the country in 2000 and have, by the grace of Almighty Allah, been able to bring confidence among the common people of the country.</p>
                        <p>Our Company has earned a total premium income of Tk. 851.12 crore, the highest among Bangladeshi Life Insurance Companies in the year 2015. The assets increased to Taka 205.87 crore and total assets stood at Taka 4076.32 crore from Taka 3870.45 crore which is 5.32%.
                        </p>
                        <p>Last year we had taken a holistic approach in doing business with focus on quality customer service and business growth with decentralization of operational activities. With that in view, we have already opened 986 Offices including 23 Divisional offices, 99 full-fledged Service Centers and 291 Zonal Offices (Ekok and Sarbojonin) in different places all over the country.
                        </p>
                        <p>With this, we have been pursuing this strategy consistently, reinforcing our approach with emphasis on growth within a frame work of trust, integrity, good governance and compliance with the legal and regulatory frame work of the country.</p>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End achement -->
</div><!-- End Left content -->
<div id= "right-content" class="col-md-4 col-xs-12">
    <div class="care">
        <div class="row">
            <div class="col-xs-6 col-md-6">
                <div class="thumbnail">
                    <img src="images/Directors/Khaleque.jpg" alt="...">
                </div>
            </div>
            <div class="col-xs-6 col-md-6">
                <div class="thumbnail">
                    <img src="images/Directors/Chairmain sir.jpg" alt="...">
                </div>
            </div>
            <div class="col-lg-12 col-sm-12 col-md-12">
                <div class="btn-pref btn-group btn-group-justified btn-group-lg" role="group" aria-label="...">
                    <div class="btn-group" role="group">
                        <button type="button" id="founder" class="btn btn-filic" href="#tab1" data-toggle="tab"><span>M A Khaleque</span>
                            <div class="hidden-xs">Founder</div>
                        </button>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="button" id="chairman" class="btn btn-default" href="#tab2" data-toggle="tab"><span>Md Nazrul Islam</span>
                            <div class="hidden-xs">Chairman</div>
                        </button>
                    </div>
                </div>
                <div class="well">
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="tab1">
                            <p>Mr. M. A. Khaleque, one of the noble entrepreneurs and Organizer of Bank, Insurance Company and Financial Institutions of the Country, initiated and in association with some prominent sponsors, bankers, retired Government Secretary founded Prime Islami Life Insurance Limited.</p>
                        </div>
                        <div class="tab-pane fade in" id="tab2">
                            <p>Mr. Md. Nazrul Islam, one of the fame names in Business sector across the world. After graduation he engaged in business and for the last 26 years he established a good number of Industries, Financial institutes, Bank, Insurance Company.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id = "news" class="row">
        <div class="col-sm-12 CatNewsList">
            <div class="panel panel-primary">
                <div class="panel-heading"><a href="{{ url('media/index')  }}">News and Events</a></div>
                {% for news in news %}
                    <div class="media">
                        <div class="media-left">
                            {#{{ image("files/News/" ~ news.file_name ~ "." ~ news.extension) }}#}
                        </div>
                        <div class="media-body">
                            {{ link_to("media/details/" ~ news.id,  news.title ) }}
                        </div>
                    </div>
                {% endfor %}
                <div class="media">
                    <div class="media-left">
                       {# <a href="#" class=""><img src="images/news.png" alt=""></a>#}
                    </div>
                    <div class="media-body">
                        <a href="#">16th Annual General Meeting has been held on 23 August 2016</a>
                    </div>
                </div>

                <div class="pull-right">
                    <a href="{{ url('media')  }}">{{ image("images/arrow.png", "class":"icon") }} more</a>
                   {# <a href="#" class=""><img src="images/arrow.png" class="icon">more</a>#}
                </div>
            </div>
        </div><!-- /.col-sm-4 -->
    </div><!-- End news , .row -->
    <div class="winner">
        <h3>Fareast Awards</h3>
        <hr class="colorgreen">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="carousel slide" id="fade-quote-carousel" data-ride="carousel" data-interval="3000">
                    <!-- Carousel indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#fade-quote-carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#fade-quote-carousel" data-slide-to="1"></li>
                    </ol>
                    <!-- Carousel items -->
                    <div class="carousel-inner">
                        <div class="active item">
                            <div class="profile-circle" style="background-image:url(images/award/europe.png)">
                            </div>
                            <blockquote>
                                <p>BIZZ Award 2015</p>
                            </blockquote>
                        </div>
                        <div class="item">
                            <div class="profile-circle" style="background-image:url(images/award/geneva.png)">
                            </div>
                            <blockquote>
                                <p>European Award 2014</p>
                            </blockquote>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="social-sb" class="margin-top">
        <h3>Fareast In Facebook</h3>
        <hr class="colorgreen">
{#        <div id="fb-root">
            <div class="fb-page" data-href="https://www.facebook.com/FareastIslamiLife/" data-tabs="timeline" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="false"><blockquote cite="https://www.facebook.com/FareastIslamiLife/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/FareastIslamiLife/">Fareast Islami Life Insurance Co. Ltd.</a></blockquote>
            </div>
        </div>#}
        <div class="fb-page"
             data-href="https://www.facebook.com/FareastIslamiLife/"
             data-width="380"
             data-hide-cover="false"
             data-show-facepile="false"
             data-show-posts="false">
        </div>
    </div>
    <div id="social-sb" class="margin-top">
        <h3>Fareast In Twitter</h3>
        <hr class="colorgreen">
        <a class="twitter-timeline" data-width="360" data-height="200" href="https://twitter.com/fareast_life">Tweets by fareast_life</a>
        </div>
    </div>
</div> <!-- End right content -->
</div>
</main>

<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

