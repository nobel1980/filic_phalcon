<main class="main-content">
    <div class ="container">
        <div class="margin-top row">
            <div id= "left-content" class="col-md-8">
                <h1>Management Committee</h1>
                <hr class="colorgraph">
                <div class="row margin-bottom">
                    {% for manager in managers %}
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="director-card">
                                <div class="director-thumb">
                                    {% if manager.original_name is empty %}
                                        {{ image("files/Managements/user.jpg") }}
                                    {% else %}
                                        {{ image("files/Managements/" ~ manager.file_name ~ "." ~ manager.extension ,"alt": manager.name) }}
                                    {% endif %}
                                </div>
                                <div id="manager{{ manager.id }}"><h4>{{ manager.name }}</h4></div>
                                <span>{{ manager.designation }}</span>
                            </div>
                        </div> <!-- .col-sm-6 -->
                    {% endfor  %}
                </div>  <!-- .row -->
            </div><!-- End Left content -->
            <div id= "right-content" class="col-md-3 col-xs-12">
                {{ partial("layouts/partial/weAreSidebar") }}
            </div><!-- End right content -->
        </div>
    </div>
</main>
