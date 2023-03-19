<main class="main-content">
    <div class ="container">
        <div class="margin-top row">
            <div id= "left-content" class="col-md-8">
                <h4>{{ winner.title|e }}</h4>
                {{ winner.description }}
            </div><!-- End Left content -->
            <div id= "right-content" class="col-md-3 col-xs-12">
                {{ partial("layouts/partial/financialSidebar") }}
            </div><!-- End right content -->
        </div>
    </div>
</main>