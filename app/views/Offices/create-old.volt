
<form method="post" autocomplete="off" class="form-horizontal">

    <ul class="pager">
        <li class="previous pull-left">
            {{ link_to("offices", "&larr; Go Back") }}
        </li>
        <li class="pull-right">
            {{ submit_button("Save", "class": "btn btn-success") }}
        </li>
    </ul>

    {{ content() }}

    <div class="center scaffold">
        <h2>Create a offices</h2>

        <div class="form-group">
            <label for="officetype">Office Type</label>
            {{ form.render("officetype") }}
        </div>
        <div class="form-group">
            <label for="parent">Parent Office</label>
            {{ form.render("parent") }}
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="">
                    <label for="officetype">Office Type</label>
                    {{ form.render("officetype") }}
                </div>

                <div class="form-group">
                    <label for="parent">Parent Office</label>
                    {{ form.render("parent") }}
                </div>

                <div class="">
                    <label for="name">Name</label>
                    {{ form.render("name") }}
                </div>

                <div class="">
                    <label for="businessId">Business ID</label>
                    {{ form.render("businessId") }}
                </div>
            </div>
        </div>
    </div>

</form>