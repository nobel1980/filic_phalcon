<main class="main-content">
    <div class ="container">
        <div class="margin-top row">
            <div id= "left-content" class="col-md-12">
                {% for news in news %}
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-xs-12 col-sm-4 col-md-4">
                                <a href="#">
                                    {{ image("files/News/" ~ news.file_name ~ "." ~ news.extension, "class": "img-responsive img-box img-thumbnail") }}
                                </a>
                            </div>
                            <div class="col-xs-12 col-sm-8 col-md-8">
                                <span>Date: {{ news.news_date }}</span>
                                <h4> {{ link_to("media/details/" ~ news.id,  news.title ) }}</h4>
                            </div>
                        </div>
                        <hr>
                    </div>
                {% endfor %}

                {#<div class="col-md-6">
                    <div class="row">
                        <div class="col-xs-12 col-sm-4 col-md-4">
                            <a href="#">
                                {{ image("images/news/auditorium-innaguration.jpg", "alt": "auditorium", "class": "img-responsive img-box img-thumbnail") }}
                            </a>
                        </div>
                        <div class="col-xs-12 col-sm-8 col-md-8">
                            <h4><a href="#">'Rajanigandha Auditorium' innagurate </a></h4>
                            <p>Fareast Life Insurance Company Innagurate 'Rajanighada Auditorium at fareast tower 20th floor'.</p>
                        </div>
                    </div>
                    <hr>
                </div>#}
            </div><!-- End Left content -->
        </div>
    </div>
</main>