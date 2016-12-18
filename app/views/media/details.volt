<main class="main-content">
    <div class ="container">
        <div class="margin-top row">
            <div id= "left-content" class="col-md-8">
                <h4>{{ news.title|e }}</h4>
                {{ image("files/News/" ~ news.file_name ~ "." ~ news.extension, "class": "img-responsive img-box img-thumbnail") }}
                <br>
                <p>{{ news.description }}</p>
               {# <span>Date: {{ date('jS F Y', news.news_date) }}</span>#}
            </div><!-- End Left content -->
            <div id= "right-content" class="col-md-3 col-xs-12">
                {{ partial("layouts/partial/weAreSidebar") }}
            </div><!-- End right content -->
        </div>
    </div>
</main>