<main class="main-content">
    <div class ="container">
        <div class="margin-top row">
            <div id= "left-content" class="col-md-8">
                <h4>{{ media.title|e }}</h4>
                <hr class="colorgraph">
                {{ image("files/News/" ~ media.file_name ~ "." ~ media.extension, "class": "img-responsive img-box img-thumbnail") }}
                <br>
                <p>{{ media.description }}</p>
               {# <span>Date: {{ date('jS F Y', news.news_date) }}</span>#}
            </div><!-- End Left content -->
            <div id= "right-content" class="col-md-3 col-xs-12">
                {{ partial("layouts/partial/weAreSidebar") }}
            </div><!-- End right content -->
        </div>
    </div>
</main>