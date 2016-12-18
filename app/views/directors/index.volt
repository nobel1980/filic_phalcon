{{ content() }}

<ul class="pager">
    <li class="previous pull-left">
        {{ link_to("directors/index", "&larr; Go Back") }}
    </li>
    <li class="pull-right">
        {{ link_to("directors/create", "Create director profile", "class": "btn btn-primary") }}
    </li>
</ul>

{% for director in page.items %}
{% if loop.first %}
<table class="table table-bordered table-striped" align="center">
    <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Designation</th>
            <th>Photo</th>
        </tr>
    </thead>
{% endif %}
    <tbody>
        <tr>
            <td>{{ director.id }}</td>
            <td>{{ director.name }}</td>
            <td>{{ director.designation }}</td>
            <td>{{ image("files/Directors/" ~ director.file_name ~ "." ~ director.extension) }}</td>

            <td width="12%">{{ link_to("directors/edit/" ~ director.id, '<i class="icon-pencil"></i> Edit', "class": "btn") }}</td>
            <td width="12%">{{ link_to("directors/delete/" ~ director.id, '<i class="icon-remove"></i> Delete', "class": "btn") }}</td>
        </tr>
    </tbody>
{% if loop.last %}
    <tbody>
        <tr>
            <td colspan="10" align="right">
                <div class="btn-group">
                    {{ link_to("directors/index", '<i class="icon-fast-backward"></i> First', "class": "btn") }}
                    {{ link_to("directors/index?page=" ~ page.before, '<i class="icon-step-backward"></i> Previous', "class": "btn ") }}
                    {{ link_to("directors/index?page=" ~ page.next, '<i class="icon-step-forward"></i> Next', "class": "btn") }}
                    {{ link_to("directors/index?page=" ~ page.last, '<i class="icon-fast-forward"></i> Last', "class": "btn") }}
                    <span class="help-inline">{{ page.current }}/{{ page.total_pages }}</span>
                </div>
            </td>
        </tr>
    <tbody>
</table>
{% endif %}
{% else %}
    No directors are recorded
{% endfor %}


