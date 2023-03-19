
<form method="post" autocomplete="off">

    <ul class="pager">
        <li class="previous pull-left">
            {{ link_to("employees", "&larr; Go Back") }}
        </li>
        <li class="pull-right">
            {{ submit_button("Save", "class": "btn btn-success") }}
        </li>
    </ul>

    {{ content() }}

    <div class="center scaffold">
        <h2>Create a Employee</h2>

        <div class="clearfix">
            <label for="name">Name</label>
            {{ form.render("name") }}
        </div>

        <div class="clearfix">
            <label for="emp_id">Employee id</label>
            {{ form.render("emp_id") }}
        </div>

        <div class="clearfix">
            <label for="designation">Designation ID</label>
            {{ form.render("designation") }}
        </div>

        <div class="clearfix">
            <label for="designation_code">Designation code</label>
            {{ form.render("designation_code") }}
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
    </div>

</form>