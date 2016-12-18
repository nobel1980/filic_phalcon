{{ javascript_include('js/ckeditor/ckeditor.js') }}
<form method="post" autocomplete="off">

    <ul class="pager">
        <li class="previous pull-left">
            {{ link_to("pages", "&larr; Go Back") }}
        </li>
        <li class="pull-right">
            {{ submit_button("Save", "class": "btn btn-success") }}
        </li>
    </ul>
    {{ content() }}

    <div class="center scaffold">

        <h2> Edit Page</h2>
        {{ form.render("id") }}


        <div class="clearfix">
            <label for="title">Title</label>
            {{ form.render("title") }}
        </div>

        <div class="clearfix">
            <label for="description">Description: </label>
            {{ form.render("description") }}
        </div>

        <script type="text/javascript">
            CKEDITOR.replace('description');
            CKEDITOR.config.height = 350;
        </script>

    </div>
</form>