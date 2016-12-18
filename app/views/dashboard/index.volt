<!--Start Breadcrumb-->
<div class="row">
    <div id="breadcrumb" class="col-xs-12">
        <ol class="breadcrumb">
            <li class="active">Dashboard</li>
        </ol>
    </div>
</div>
<!--End Breadcrumb-->

<!--Start Dashboard Tab 2-->
<div id="dashboard-proposal" class="row" style="visibility: hidden; position: absolute;">
    <div class="row one-list-message">
        <div class="col-xs-1">ID</div>
        <div class="col-xs-2"><b> Name</b></div>
        <div class="col-xs-1">AGE</div>
        <div class="col-xs-1">SEX</div>
    </div>

    {% for policy in policies %}
        <div class="row one-list-message">
            <div class="col-xs-1">{{ policy['policy_no'] }}</div>
            <div class="col-xs-2"><b>{{ policy['name'] }}</b></div>
            <div class="col-xs-1">{{ policy['age'] }}</div>
            <div class="col-xs-1">{{ policy['sex'] }}</div>
        </div>
    {% endfor %}
</div>
<!--End Dashboard Tab 2-->

{% for user in users %}
    {% if loop.first %}
        <table class="table table-bordered table-striped" align="center">
        <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Email</th>

        </tr>
        </thead>
    {% endif %}
    <tbody>
    <tr>
        <td>{{ user.id }}</td>
        <td>{{ user.name }}</td>
        <td>{{ user.email }}</td>
    </tr>
    </tbody>
    {% if loop.last %}
        <tbody>
        <tr>
            <td colspan="10" align="right">
                <div class="btn-group">
                    {{ link_to("users/search", '<i class="icon-fast-backward"></i> First', "class": "btn") }}
                    {{ link_to("users/search?page=" ~ page.before, '<i class="icon-step-backward"></i> Previous', "class": "btn ") }}
                    {{ link_to("users/search?page=" ~ page.next, '<i class="icon-step-forward"></i> Next', "class": "btn") }}
                    {{ link_to("users/search?page=" ~ page.last, '<i class="icon-fast-forward"></i> Last', "class": "btn") }}
                    <span class="help-inline">{{ page.current }}/{{ page.total_pages }}</span>
                </div>
            </td>
        </tr>
        <tbody>
        </table>
    {% endif %}
{% else %}
    No users are recorded
{% endfor %}

