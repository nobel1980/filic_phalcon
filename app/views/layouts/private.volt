<link href="//netdna.bootstrapcdn.com/bootswatch/2.3.1/united/bootstrap.min.css" rel="stylesheet">
{{ stylesheet_link('css/style_vokuro.css') }}
{#{{ javascript_include('js/jquery.js') }}#}
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/js/bootstrap.min.js"></script>

<script
        src="http://code.jquery.com/ui/1.12.1/jquery-ui.min.js"
        integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU="
        crossorigin="anonymous"></script>

<div class="navbar navbar-inverse">
    <div class="navbar-inner">
        <div class="container" style="width: auto;">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            {{ link_to(null, 'class': 'brand', ' FILIC')}}
            <div class="nav-collapse">

                <ul class="nav">

                    {%- set menus = [
                    'Dashboard': 'dashboard'
                    ] -%}

                    {%- for key, value in menus %}
                        {% if value == dispatcher.getControllerName() %}
                            <li class="active">{{ link_to(value, key) }}</li>
                        {% else %}
                            <li>{{ link_to(value, key) }}</li>
                        {% endif %}
                    {%- endfor -%}

                    <li class="dropdown">
                        {{ link_to('', 'Settings <span class="caret"></span>', 'class': 'dropdown-toggle page-scroll', 'data-toggle':'dropdown') }}
                        <ul class="dropdown-menu multi-level">
                            <li class="dropdown">
                                {{ link_to('directors', 'Directors', 'class': 'page-scroll') }}
                            </li>
                            <li class="dropdown">
                                {{ link_to('managements', 'Managements', 'class': 'page-scroll') }}
                            </li>
                            <li class="dropdown">
                                {{ link_to('incharges', 'Incharges', 'class': 'page-scroll') }}
                            </li>
                            <li class="dropdown">
                                {{ link_to('employees', 'Employees', 'class': 'page-scroll') }}
                            </li>
                            <li class="dropdown">
                                {{ link_to('offices', 'Offices', 'class': 'page-scroll') }}
                            </li>
                            <li class="dropdown">
                                {{ link_to('addresses', 'Address', 'class': 'page-scroll') }}
                            </li>
                            <li class="dropdown">
                                {{ link_to('financialReports', 'Financial Reports', 'class': 'page-scroll') }}
                            </li>
                            <li class="dropdown">
                                {{ link_to('pages', 'Pages', 'class': 'page-scroll') }}
                            </li>
                            <li class="dropdown">
                                {{ link_to('products', 'Products', 'class': 'page-scroll') }}
                            </li>
                            <li class="dropdown">
                                {{ link_to('news', 'News', 'class': 'page-scroll') }}
                            </li>
                            <li class="dropdown">
                                {{ link_to('notices', 'Notices', 'class': 'page-scroll') }}
                            </li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        {{ link_to('', 'Config <span class="caret"></span>', 'class': 'dropdown-toggle page-scroll', 'data-toggle':'dropdown') }}
                        <ul class="dropdown-menu multi-level">
                            <li class="dropdown">
                                {{ link_to('users', 'Users', 'class': 'page-scroll') }}
                            </li>
                            <li class="dropdown">
                                {{ link_to('profiles', 'Profiles', 'class': 'page-scroll') }}
                            </li>
                            <li class="dropdown">
                                {{ link_to('permissions', 'Permissions', 'class': 'page-scroll') }}
                            </li>
                        </ul>
                    </li>

                </ul>

                <ul class="nav pull-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">{{ auth.getName() }} <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>{{ link_to('users/changePassword', 'Change Password') }}</li>
                        </ul>
                    </li>
                    <li>{{ link_to('session/logout', 'Logout') }}</li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="container">
    {{ content() }}
</div>
{{ javascript_include("js/custom.js") }}