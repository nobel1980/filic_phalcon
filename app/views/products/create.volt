{{ javascript_include('js/ckeditor/ckeditor.js') }}

<form method="post" autocomplete="off" enctype= "multipart/form-data" class='form-post' accept-charset="UTF-8" role="form" action="">

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
        <h2>Create a product</h2>

        <div class="clearfix">
            <label for="title">Title</label>
            {{ form.render("title") }}
        </div>

        <div class="clearfix">
            <label for="title_bn">Title in Bangla</label>
            {{ form.render("title_bn") }}
        </div>

        <div class="clearfix">
            <label for="description">Product Detail:  </label>
            {{ form.render("description") }}
        </div>

        <div class="clearfix">
            <label for="description_bn">Product Detail in Bangla:  </label>
            {{ form.render("description_bn") }}
        </div>

        <div class="clearfix">
            <label for="parent">Insurance Group </label>
            {{ form.render("parent") }}
        </div>

        <script type="text/javascript">
            CKEDITOR.replace('description');
            CKEDITOR.config.height = 350;
            CKEDITOR.replace('description_bn');
            CKEDITOR.config.height = 350;
        </script>


    </div>

</form>




