{{ stylesheet_link('css/bootstrap.min.css') }}
    {{ stylesheet_link('css/style.css') }}
    {{ stylesheet_link('css/meganizr.css') }}
{{ stylesheet_link('css/pages.css') }}

<header class="site-header">
    <div class="top-header">
        <!-- <div class="top-header sticky fixed"> -->
        <div class="container">
            <a href="#" id="branding">
                {{ image("images/filic-logo.png", "alt": "Fareast", "class": "logo") }}
                <div class="logo-text">
                    <h1 class="site-title bangla">ফারইস্ট ইসলামী লাইফ ইন্স্যুরেন্স কোম্পানি লিমিটেড</h1>
                    <h1 class="site-title bangla">شركة الشرق الاقصى الإسلامية للتأمين على الحياة المحدودة</h1>
                    <h1 class="site-title bangla">Fareast Islami Life Insurance Company Limited</h1>
                    <small class="description">Based on Islami Shriah</small>
                </div>
            </a> <!-- #branding -->

            <div class="right-section pull-right">
                <a href="#" class="phone">{{ image("images/phone.png", "alt": "phone", "class": "icon") }}<strong>   Helpline: 09613000123</strong></a>
                <br/><br/>
                <div class="social-links pull-right">
                    <a href="https://www.facebook.com/FareastIslamiLife" class="socials">{{ image("images/facebook.png", "alt": "facebook", "class": "icon") }}</a>
                    <a href="https://www.twitter.com/fareast_life" class="socials">{{ image("images/twitter.png", "alt": "twitter", "class": "icon") }}</a>
                    <a href="#" class="socials">{{ image("images/google-plus.png", "alt": "google-plus", "class": "icon") }}</a>
                </div>
            </div>
        </div> <!-- .container -->
    </div> <!-- .top-header -->
    <div class="main-navigation mzr-class ">
        <div class="container"> <!-- Meganizr Menu HTML -->
            <div class="row mob-nav-row" style="display: none;">
                <a href="#" class="nav-toggle"><i class="fa fa-bars"></i></a>
            </div> <!-- Mobile navigation end-->
            <ul class="meganizr mzr-slide mzr-responsive">
                <!-- Home -->
                <li class="col4">{{ link_to('index', 'Home') }}</li>
                <!-- end Home -->
                <!-- DropDown -->
                <li class="mzr-drop mzr-levels col1">
                    {{ link_to('WeAre/index', 'Who We Are') }}
                    <ul>
                        <li>{{ link_to('WeAre/directors', 'Board of Directors') }}</li>
                        <li>{{ link_to('WeAre/managementCommittee', 'Management Committee') }}</li>
                        <li>{{ link_to('WeAre/corporateChronicle', 'Corporate Chronicle') }}</li>
                        <li>{{ link_to('WeAre/corporateInformation', 'Corporate information') }}</li>
                        <li>{{ link_to('WeAre/allCommittee', 'Composition of Committee') }}</li>
                        <li>{{ link_to('WeAre/departmentIncharge', 'Department Incharge') }}</li>
                        <li>{{ link_to('WeAre/chairmanMessage', 'Message from Chairman') }}</li>
                        <li>{{ link_to('WeAre/ceoMessage', 'Message from MD & CEO') }}</li>
                    </ul>
                </li>
                <!-- end DropDown -->
                <li class="mzr-drop col2">
                    {{ link_to('productPlan', 'Products Plan') }}
                    <ul>
                        <li>{{ link_to('productPlan/index', 'Products') }}</li>
                        <li>{{ link_to('productPlan/Bangla', 'জীবনবীমা') }}</li>
                    </ul>
                </li>
                <li class="mzr-drop col3">
                    {{ link_to('financialInformation', 'Financial Information') }}
                    <ul>
                        <li>{{ link_to('financialInformation/index', 'Financial Reports') }}</li>
                        <li>{{ link_to('financialInformation/shareholdingComposition', 'Shareholding Composition') }}</li>
                        <li>{{ link_to('financialInformation/businessSummary', 'Business Summary') }}</li>
                        <li>{{ link_to('financialInformation/valueAddStatement', 'Value Added Statement') }}</li>
                        <li>{{ link_to('financialInformation/directorReport', 'Director Report') }}</li>
                    </ul>
                </li>
                <li class="mzr-drop col6">
                    {{ link_to('digitalServices', 'Digital Services') }}
                    <ul>
                        <li><a href="http://182.16.156.188/filic_site/policy/">Online Statement</a></li>
                        <li>{{ link_to('digitalServices/epayment', 'E-Payment') }}</li>
                    </ul>
                </li>
                <!-- No Dropdown Link -->
                <li class="mzr-drop col7">
                    {{ link_to('media', 'Media') }}
                    <ul>
                        <li>{{ link_to('media/index', 'News & Events') }}</li>
                    </ul>
                </li>
                <li class="mzr-drop col1">
                    {{ link_to('allWinner', 'Fareast Star') }}
                </li>
                <li class="col8">{{ link_to('careers', 'Careers') }} </li>
                <li class="col5">{{ link_to('contacts', 'Contact Us') }}</li>
                <!-- end No Dropdown Link -->
            </ul>
            <!-- end Meganizr Menu HTML -->
        </div>
    </div>
</header> <!-- .site-header -->

<div class="container main-container">
    {{ content() }}
</div>

{{ partial("layouts/partial/footer") }}

{{ javascript_include("js/jquery.js") }}
{{ javascript_include("js//bootstrap.min.js") }}
{{ javascript_include("js/filic.js") }}