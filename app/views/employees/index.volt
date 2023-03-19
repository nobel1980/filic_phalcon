{{ content() }}

<ul class="pager">
    <li class="previous pull-left">
        {{ link_to("employees/index", "&larr; Go Back") }}
    </li>
    <li class="pull-right">
        {{ link_to("employees/create", "Create Incharge", "class": "btn btn-primary") }}
    </li>
</ul>

{% for employee in page.items %}
{% if loop.first %}
<table class="table table-bordered table-striped" align="center">
    <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Emp id</th>
            <th>Designation</th>

        </tr>
    </thead>
{% endif %}
    <tbody>
        <tr>
            <td>{{ employee.id }}</td>
            <td>{{ employee.name }}</td>
            <td>{{ employee.emp_id }}</td>
            <td>{{ employee.designation.name }}</td>


            <td width="12%">{{ link_to("employees/edit/" ~ employee.id, '<i class="icon-pencil"></i> Edit', "class": "btn") }}</td>
            <td width="12%">{{ link_to("employees/delete/" ~ employee.id, '<i class="icon-remove"></i> Delete', "class": "btn") }}</td>
        </tr>
    </tbody>
{% if loop.last %}
    <tbody>
        <tr>
            <td colspan="10" align="right">
                <div class="btn-group">
                    {{ link_to("employees/index", '<i class="icon-fast-backward"></i> First', "class": "btn") }}
                    {{ link_to("employees/index?page=" ~ page.before, '<i class="icon-step-backward"></i> Previous', "class": "btn ") }}
                    {{ link_to("employees/index?page=" ~ page.next, '<i class="icon-step-forward"></i> Next', "class": "btn") }}
                    {{ link_to("employees/index?page=" ~ page.last, '<i class="icon-fast-forward"></i> Last', "class": "btn") }}
                    <span class="help-inline">{{ page.current }}/{{ page.total_pages }}</span>
                </div>
            </td>
        </tr>
    <tbody>
</table>
{% endif %}
{% else %}
    No incharges are recorded
{% endfor %}


