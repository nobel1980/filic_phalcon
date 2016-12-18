<form method="post" autocomplete="off" enctype= "multipart/form-data" class='form-post' accept-charset="UTF-8" role="form" action="">

    <ul class="pager">
        <li class="previous pull-left">
            {{ link_to("financialReports", "&larr; Go Back") }}
        </li>
        <li class="pull-right">
            {{ submit_button("Save", "class": "btn btn-success") }}
        </li>
    </ul>

    {{ content() }}

    <div class="center scaffold">
        <h2>Add a Financial Report File</h2>

        <div class="clearfix">
            <label for="title">Title</label>
            {{ form.render("title") }}
        </div>

        <div class="clearfix">
            <label for="report_quarter"> Report on month</label>
            {{ form.render("report_quarter") }}
        </div>

        <div class="clearfix">
            <label for="report_year">Year of report</label>
            {{ form.render("report_year") }}
        </div>
        <div class="clearfix">
            <input type="file" name="files[]" multiple>
        </div>
    </div>

</form>




