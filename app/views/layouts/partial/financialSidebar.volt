<div class="sidemenu-title">
    <h4>Financial Information</h4>
</div>
<div class="sidemenu-area">
    <ul>
        <li><a href="{{ url('financialInformation/index')  }}">{{ image("images/arrow-right.png") }}Financial Reports</a></li>
        <li><a href="{{ url('financialInformation/shareholdingComposition')  }}">{{ image("images/arrow-right.png") }}Shareholding Composition</a></li>
        <li><a href="{{ url('financialInformation/businessSummary')  }}">{{ image("images/arrow-right.png") }}Business Summary</a></li>
        <li><a href="{{ url('financialInformation/valueAddStatement')  }}">{{ image("images/arrow-right.png") }}Value Added Statement</a></li>
        <li><a href="{{ url('financialInformation/directorReport')  }}">{{ image("images/arrow-right.png") }}Director Report</a></li>
    </ul>
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
            <div class="pull-right">
                <a href="{{ url('media')  }}">{{ image("images/arrow.png", "class":"icon") }} more</a>
                {# <a href="#" class=""><img src="images/arrow.png" class="icon">more</a>#}
            </div>
        </div>
    </div><!-- /.col-sm-4 -->
</div><!-- End news , .row -->