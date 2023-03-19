{{ javascript_include('js/ckeditor/ckeditor.js') }}

<form method="post" autocomplete="off" enctype= "multipart/form-data" class='form-post' accept-charset="UTF-8" role="form" action="">

    <ul class="pager">
        <li class="previous pull-left">
            {{ link_to("Incharges", "&larr; Go Back") }}
        </li>
        <li class="pull-right">
            {{ submit_button("Save", "class": "btn btn-success") }}
        </li>
    </ul>

    {{ content() }}

    <div class="center scaffold">
        <h2>Create a Incharge Profile</h2>

        <div class="clearfix">
            <label for="name">Name</label>
            {{ form.render("name") }}
        </div>

        <div class="clearfix">
            <label for="title">Title </label>
            {{ form.render("title") }}
        </div>

        <div class="clearfix">
            <label for="designation">Designation:  </label>
            {{ form.render("designation") }}
        </div>

        <div class="clearfix">
            <label for="mobile">mobile No: </label>
            {{ form.render("mobile") }}
        </div>

        <div class="clearfix">
            <label for="phone">Phone No: </label>
            {{ form.render("phone") }}
        </div>

        <div class="clearfix">
            <label for="email">Email: </label>
            {{ form.render("email") }}
        </div>

        <div class="clearfix">
            <label for="profile">Profile: </label>
            {{ form.render("profile") }}
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




