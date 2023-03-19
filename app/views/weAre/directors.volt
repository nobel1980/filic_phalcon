<main class="main-content">
    <div class ="container">
        <div class="margin-top row">
            <div id= "left-content" class="col-md-8">
                <h1>Board of Directors</h1>
                <hr class="colorgraph">
                <div class="row margin-bottom">
                    {% for director in director %}
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="director-card">
                            <div class="director-thumb">
                                {% if director.original_name is empty %}
                                    {{ image("files/Directors/user.jpg") }}
                                    {% else %}
                                        {{ image("files/Directors/" ~ director.file_name ~ "." ~ director.extension) }}
                                {% endif %}
                            </div>
                            <a href='javascript:void(0);' data-id='director{{ director.id }}' onclick='profile(this);' id ="{{ director.id }}" data-toggle="modal" data-target="#modalDirector"> <h4>{{ director.name }}</h4> </a>
                            <span>{{ director.designation }}</span>
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

<!-- Modal all profile-->
<div id="modalDirector" class="modal fade" role="dialog" data-keyboard="static"  aria-hidden="true" style="display: none">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header modal-header-success">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"></h4>
                <span></span>
            </div>
            <div class="modal-body director">
                <div class="thumbnail">

                </div>

                <div id="modalContent">

                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>