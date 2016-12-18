{{ javascript_include('js/ckeditor/ckeditor.js') }}

<form method="post" autocomplete="off" enctype= "multipart/form-data" class='form-post' accept-charset="UTF-8" role="form" action="">

    <ul class="pager">
        <li class="previous pull-left">
            {{ link_to("notices", "&larr; Go Back") }}
        </li>
        <li class="pull-right">
            {{ submit_button("Save", "class": "btn btn-success") }}
        </li>
    </ul>

    {{ content() }}

    <div class="center scaffold">
        <h2>Create a notice</h2>

        <div class="clearfix">
            <label for="title">Title</label>
            {{ form.render("title") }}
        </div>

        <div class="clearfix">
            <label for="description">Description:  </label>
            {{ form.render("description") }}
        </div>

        <div class="clearfix">
            <label for="acive">Is Active? </label>
            {{ form.render("active") }}
        </div>

        <div class="clearfix">
            <label for="home">Is Home? </label>
            {{ form.render("home") }}
        </div>

        <div class="clearfix">
            <label for="notice_date">Notice Date: </label>
            {{ form.render("notice_date") }}
        </div>

        <div class="clearfix">
            <label for="files[]">File: </label>
            <input type="file" name="files[]" multiple>
        </div>

        <script type="text/javascript">
            CKEDITOR.replace('description');
            CKEDITOR.config.height = 350;
        </script>


    </div>

</form>




