{{ content() }}

<ul class="pager">
    <li class="previous pull-left">
        {{ link_to("offices/index", "&larr; Go Back") }}
    </li>
    <li class="pull-right">
        {{ link_to("offices/create", "Create office", "class": "btn btn-primary") }}
    </li>
</ul>

{% for office in page.items %}
    {% if loop.first %}
        <table class="table table-bordered table-striped" align="center">
        <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Address ID</th>
        </tr>
        </thead>
    {% endif %}
    <tbody>
    <tr>
        <td>{{ office.id }}</td>
        <td>{{ office.name }}</td>

        {#{% for key, office_type in ['1' : 'Divisional Office', '2' : 'Service Center', '3' : 'Zonal Office', '4' : 'Organizational Office'] %}
            {% if key is  office.office_type_id  %}
              <td> {{ office.name }} {{ office_type }}</td>
            {% endif %}
        {% endfor %}#}

        <td>{{ office.address_id }}</td>
        <td width="12%">{{ link_to("offices/edit/" ~ office.id, '<i class="icon-pencil"></i> Edit', "class": "btn") }}</td>
        <td width="12%">{{ link_to("offices/delete/" ~ office.id, '<i class="icon-remove"></i> Delete', "class": "btn") }}</td>
    </tr>
    </tbody>
    {% if loop.last %}
        <tbody>
        <tr>
            <td colspan="10" align="right">
                <div class="btn-group">
                    {{ link_to("offices/index", '<i class="icon-fast-backward"></i> First', "class": "btn") }}
                    {{ link_to("offices/index?page=" ~ page.before, '<i class="icon-step-backward"></i> Previous', "class": "btn ") }}
                    {{ link_to("offices/index?page=" ~ page.next, '<i class="icon-step-forward"></i> Next', "class": "btn") }}
                    {{ link_to("offices/index?page=" ~ page.last, '<i class="icon-fast-forward"></i> Last', "class": "btn") }}
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
