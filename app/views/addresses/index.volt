{{ content() }}

<ul class="pager">
    <li class="previous pull-left">
        {{ link_to("addresses/index", "&larr; Go Back") }}
    </li>
    <li class="pull-right">
        {{ link_to("addresses/create", "Create address", "class": "btn btn-primary") }}
    </li>
</ul>

{% for address in page.items %}
    {% if loop.first %}
        <table class="table table-bordered table-striped" align="center">
        <thead>
        <tr>
            <th>Id</th>
            <th>address</th>
            <th>Subdistrict</th>
            <th>District</th>
        </tr>
        </thead>
    {% endif %}
    <tbody>
    <tr>
        <td>{{ address.id }}</td>
        {% if address.address2  == null  %}
            <td>{{ address.address1 }}</td>
        {% else %}
            <td>{{ address.address1 }},<br/> {{ address.address2 }}</td>
        {% endif %}
        <td>{{ address.subdistrict.name }}</td>
        <td>{{ address.district.name }}</td>

        <td width="12%">{{ link_to("addresses/edit/" ~ address.id, '<i class="icon-pencil"></i> Edit', "class": "btn") }}</td>
        <td width="12%">{{ link_to("addresses/delete/" ~ address.id, '<i class="icon-remove"></i> Delete', "class": "btn") }}</td>
    </tr>
    </tbody>
    {% if loop.last %}
        <tbody>
        <tr>
            <td colspan="10" align="right">
                <div class="btn-group">
                    {{ link_to("addresses/index", '<i class="icon-fast-backward"></i> First', "class": "btn") }}
                    {{ link_to("addresses/index?page=" ~ page.before, '<i class="icon-step-backward"></i> Previous', "class": "btn ") }}
                    {{ link_to("addresses/index?page=" ~ page.next, '<i class="icon-step-forward"></i> Next', "class": "btn") }}
                    {{ link_to("addresses/index?page=" ~ page.last, '<i class="icon-fast-forward"></i> Last', "class": "btn") }}
                    <span class="help-inline">{{ page.current }}/{{ page.total_pages }}</span>
                </div>
            </td>
        </tr>
        <tbody>
        </table>
    {% endif %}
{% else %}
    No addresses are recorded
{% endfor %}
