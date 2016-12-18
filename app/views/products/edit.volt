{{ javascript_include('js/ckeditor/ckeditor.js') }}
<form method="post" autocomplete="off">

    <ul class="pager">
        <li class="previous pull-left">
            {{ link_to("products", "&larr; Go Back") }}
        </li>
        <li class="pull-right">
            {{ submit_button("Save", "class": "btn btn-success") }}
        </li>
    </ul>
    {{ content() }}

    <div class="center scaffold">

        <h2> Edit product details</h2>
        {{ form.render("id") }}


        <div class="clearfix">
            <label for="title">Title</label>
            {{ form.render("title") }}
        </div>

        <div class="clearfix">
            <label for="title_bn">Title in Bangla</label>
            {{ form.render("title_bn") }}
        </div>

        <div class="clearfix">
            <label for="description">Product detail</label>
            {{ form.render("description") }}
        </div>

        <div class="clearfix">
            <label for="description_bn">Product detail in Bangla</label>
            {{ form.render("description_bn") }}
        </div>
        <div class="clearfix">
            <label for="group">Product Group </label>
            {{ form.render("parent") }}
        </div>

        <script type="text/javascript">
            CKEDITOR.replace('description');
            CKEDITOR.add;
            CKEDITOR.config.height = 350;

            CKEDITOR.replace('description_bn');
             CKEDITOR.add;
            CKEDITOR.config.height = 350;
        </script>

    </div>
</form>