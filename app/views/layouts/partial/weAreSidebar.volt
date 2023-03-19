<div class="sidemenu-title">
    <h4>Who We are</h4>
</div>
<div class="sidemenu-area">
    <ul>
        <li><a href="{{ url('WeAre/directors')  }}">{{ image("images/arrow-right.png") }}Board of Directors</a></li>
        <li><a href="{{ url('WeAre/managementCommittee')  }}">{{ image("images/arrow-right.png") }}Management Committee</a></li>
        <li><a href="{{ url('WeAre/corporateChronicle')  }}">{{ image("images/arrow-right.png") }}Corporate Chronicle</a></li>
        <li><a href="{{ url('WeAre/corporateInformation')  }}">{{ image("images/arrow-right.png") }}Corporate Information</a></li>
        <li><a href="{{ url('WeAre/allCommittee')  }}">{{ image("images/arrow-right.png") }}Composition of Committee</a></li>
        <li><a href="{{ url('WeAre/departmentIncharge')  }}">{{ image("images/arrow-right.png") }}Department Incharge</a></li>
        <li><a href="{{ url('WeAre/chairmanMessage')  }}">{{ image("images/arrow-right.png") }}Message from Chairman</a></li>
        <li><a href="{{ url('WeAre/ceoMessage')  }}">{{ image("images/arrow-right.png") }}Message from CEO</a></li>
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