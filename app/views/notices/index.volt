{{ content() }}

<ul class="pager">
    <li class="pull-right">
        {{ link_to("notices/create", "Create", "class": "btn btn-primary") }}
    </li>
</ul>

{% for notice in page.items %}
{% if loop.first %}
<table class="table table-bordered table-striped" align="center">
    <thead>
        <tr>
            <th>Id</th>
            <th>Title</th>
            <th>isActive</th>
            <th>isHome</th>
        </tr>
    </thead>
{% endif %}
    <tbody>
        <tr>
            <td>{{ notice.id }}</td>
            <td>{{ notice.title }}</td>
            <td>{{ notice.isActive }}</td>
            <td>{{ notice.isHome }}</td>

            <td width="12%">{{ link_to("notices/edit/" ~ notice.id, '<i class="icon-pencil"></i> Edit', "class": "btn") }}</td>
            <td width="12%">{{ link_to("notices/delete/" ~ notice.id, '<i class="icon-remove"></i> Delete', "class": "btn") }}</td>
        </tr>
    </tbody>
{% if loop.last %}
    <tbody>
        <tr>
            <td colspan="10" align="right">
                <div class="btn-group">
                    {{ link_to("notices/index", '<i class="icon-fast-backward"></i> First', "class": "btn") }}
                    {{ link_to("notices/index?page=" ~ page.before, '<i class="icon-step-backward"></i> Previous', "class": "btn ") }}
                    {{ link_to("notices/index?page=" ~ page.next, '<i class="icon-step-forward"></i> Next', "class": "btn") }}
                    {{ link_to("notices/index?page=" ~ page.last, '<i class="icon-fast-forward"></i> Last', "class": "btn") }}
                    <span class="help-inline">{{ page.current }}/{{ page.total_pages }}</span>
                </div>
            </td>
        </tr>
    <tbody>
</table>
{% endif %}
{% else %}
    No notices are recorded
{% endfor %}


