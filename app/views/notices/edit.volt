{{ javascript_include('js/ckeditor/ckeditor.js') }}
<form method="post" autocomplete="off" enctype= "multipart/form-data" class='form-post' accept-charset="UTF-8" role="form" action="">

    <ul class="pager">
        <li class="previous pull-left">
            {{ link_to("directors", "&larr; Go Back") }}
        </li>
        <li class="pull-right">
            {{ submit_button("Save", "class": "btn btn-success") }}
        </li>
    </ul>
    {{ content() }}

    <div class="center scaffold">

        <h2> Edit notice</h2>
        {{ form.render("id") }}


        <div class="clearfix">
            <label for="name">title</label>
            {{ form.render("name") }}
        </div>

        <div class="clearfix">
            <label for="description">Description</label>
            {{ form.render("description") }}
        </div>

        <div class="clearfix">
            <label for="isActive">isActive: </label>
            {{ form.render("isActive") }}
        </div>

        <div class="clearfix">
            <label for="files[]">Photo: </label>
            <input type="file" name="files[]" multiple>
        </div>

        <script type="text/javascript">
            CKEDITOR.replace('profile');
            CKEDITOR.config.height = 350;
        </script>

    </div>
</form>