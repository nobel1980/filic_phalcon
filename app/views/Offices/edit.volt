<form method="post" autocomplete="off">
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
        <h2>Edit offices</h2>

        <div class="clearfix">
            <label for="officetype">Office Type</label>
            {{ form.render("officetype") }}
        </div>

        <div class="clearfix">
            <label for="parent">Parent Office</label>
            {{ form.render("parent") }}
        </div>

        <div class="clearfix">
            <label for="name">Name</label>
            {{ form.render("name") }}
        </div>

        <div class="clearfix">
            <label for="businessId">Business ID</label>
            {{ form.render("businessId") }}
        </div>
    </div>
</form>