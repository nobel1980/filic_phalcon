{{ stylesheet_link('css/bootstrap-timepicker.min.css') }}
{{ javascript_include('js/ckeditor/ckeditor.js') }}
{{ javascript_include('js/bootstrap-timepicker.min.js') }}
<form method="post" autocomplete="off" enctype= "multipart/form-data" class='form-post' accept-charset="UTF-8" role="form" action="">

    <ul class="pager">
        <li class="previous pull-left">
            {{ link_to("news", "&larr; Go Back") }}
        </li>
        <li class="pull-right">
            {{ submit_button("Save", "class": "btn btn-success") }}
        </li>
    </ul>
    {{ content() }}

    <div class="center scaffold">

        <h2> Edit News</h2>
        {{ form.render("id") }}


        <div class="clearfix">
            <label for="title">Title</label>
            {{ form.render("title") }}
        </div>

        <div class="clearfix">
            <label for="description">Description:  </label>
            {{ form.render("description") }}
        </div>

        <div class="clearfix">
            <label for="isActive">Is Active? </label>
            {{ form.render("isActive") }}
        </div>

        <div class="clearfix">
            <label for="isHome">Is Home? </label>
            {{ form.render("isHome") }}
        </div>

        <div class="clearfix">
            <label for="news_date">News Date: </label>
            {{ form.render("news_date") }}
        </div>

        <div class="clearfix">
            <label for="files[]">Photo: </label>
            <input type="file" name="files[]" multiple>
        </div>

        <script type="text/javascript">
            CKEDITOR.replace('description');
            CKEDITOR.config.height = 350;

            $(document).ready(function() {
                $('#news_date').datetimepicker();
            });
        </script>
    </div>
</form>