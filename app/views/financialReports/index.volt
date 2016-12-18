{{ content() }}

<ul class="pager">
    <li class="previous pull-left">
        {{ link_to("financialReports/index", "&larr; Go Back") }}
    </li>
    <li class="pull-right">
        {{ link_to("financialReports/create", "Add", "class": "btn btn-primary") }}
    </li>
</ul>

{% for financialReport in page.items %}
{% if loop.first %}
<table class="table table-bordered table-striped" align="center">
    <thead>
        <tr>
            <th>Id</th>
            <th>Title</th>
            <th>Report Type</th>
            <th>Report Year</th>

        </tr>
    </thead>
{% endif %}
    <tbody>
        <tr>
            <td>{{ financialReport.id }}</td>
            <td>{{ financialReport.title }}</td>

            {% for key, name in  ['1' : 'First Quarter', '2' : 'Half Yearly', '3' : 'Third Quarter', '4' : 'Yearly'] %}
                {% if key is financialReport.report_quarter  %}
            <td> {{ name }} </td>
                {% endif %}
            {% endfor %}

            <td>{{ financialReport.report_year }}</td>


            <td width="12%">{{ link_to("financialReports/edit/" ~ financialReport.id, '<i class="icon-pencil"></i> Edit', "class": "btn") }}</td>
            <td width="12%">{{ link_to("financialReports/delete/" ~ financialReport.id, '<i class="icon-remove"></i> Delete', "class": "btn") }}</td>
        </tr>
    </tbody>
{% if loop.last %}
    <tbody>
        <tr>
            <td colspan="10" align="right">
                <div class="btn-group">
                    {{ link_to("financialReports/index", '<i class="icon-fast-backward"></i> First', "class": "btn") }}
                    {{ link_to("files/index?page=" ~ page.before, '<i class="icon-step-backward"></i> Previous', "class": "btn ") }}
                    {{ link_to("financialReports/index?page=" ~ page.next, '<i class="icon-step-forward"></i> Next', "class": "btn") }}
                    {{ link_to("financialReports/index?page=" ~ page.last, '<i class="icon-fast-forward"></i> Last', "class": "btn") }}
                    <span class="help-inline">{{ page.current }}/{{ page.total_pages }}</span>
                </div>
            </td>
        </tr>
    <tbody>
</table>
{% endif %}
{% else %}
    No Financial Report are recorded
{% endfor %}


