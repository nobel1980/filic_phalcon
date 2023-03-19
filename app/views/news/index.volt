{{ content() }}

<ul class="pager">
    <li class="pull-right">
        {{ link_to("news/create", "Create", "class": "btn btn-primary") }}
    </li>
</ul>

{% for news in page.items %}
{% if loop.first %}
<table class="table table-bordered table-striped" align="center">
    <thead>
        <tr>
            <th>Id</th>
            <th>Title</th>
            <th>Date</th>
            <th>isActive</th>
            <th>isHome</th>
        </tr>
    </thead>
{% endif %}
    <tbody>
        <tr>
            <td>{{ news.id }}</td>
            <td>{{ news.title }}</td>
            <td>{{news.news_date }}</td>
            <td>{{ news.isActive == '1' ? 'Yes' : 'No' }}</td>
            <td>{{ news.isHome == '1' ? 'Yes' : 'No' }}</td>

            <td width="12%">{{ link_to("news/edit/" ~ news.id, '<i class="icon-pencil"></i> Edit', "class": "btn") }}</td>
            <td width="12%">{{ link_to("news/delete/" ~ news.id, '<i class="icon-remove"></i> Delete', "class": "btn") }}</td>
        </tr>
    </tbody>
{% if loop.last %}
    <tbody>
        <tr>
            <td colspan="10" align="right">
                <div class="btn-group">
                    {{ link_to("news/index", '<i class="icon-fast-backward"></i> First', "class": "btn") }}
                    {{ link_to("news/index?page=" ~ page.before, '<i class="icon-step-backward"></i> Previous', "class": "btn ") }}
                    {{ link_to("news/index?page=" ~ page.next, '<i class="icon-step-forward"></i> Next', "class": "btn") }}
                    {{ link_to("news/index?page=" ~ page.last, '<i class="icon-fast-forward"></i> Last', "class": "btn") }}
                    <span class="help-inline">{{ page.current }}/{{ page.total_pages }}</span>
                </div>
            </td>
        </tr>
    <tbody>
</table>
{% endif %}
{% else %}
    No news are recorded
{% endfor %}


