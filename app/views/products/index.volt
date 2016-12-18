{{ content() }}

<ul class="pager">
    <li class="previous pull-left">
        {{ link_to("products/index", "&larr; Go Back") }}
    </li>
    <li class="pull-right">
        {{ link_to("products/create", "Create a product", "class": "btn btn-primary") }}
    </li>
</ul>

{% for product in page.items %}
{% if loop.first %}
<table class="table table-bordered table-striped" align="center">
    <thead>
        <tr>
            <th>Id</th>
            <th>Title</th>
            <th>Title in Bangla</th>
            <th>Group</th>
        </tr>
    </thead>
{% endif %}
    <tbody>
        <tr>
            <td>{{ product.id }}</td>
            <td>{{ product.title }}</td>
            <td>{{ product.title_bn }}</td>
            {% for key, product_type in ['1' : 'Ekok', '2' : 'Sarbojonin', '3' : 'Group'] %}
                {% if key is  product.parent  %}
                    <td> {{ product_type }}</td>
                {% endif %}
            {% endfor %}

            <td width="12%">{{ link_to("products/edit/" ~ product.id, '<i class="icon-pencil"></i> Edit', "class": "btn") }}</td>
            <td width="12%">{{ link_to("products/delete/" ~ product.id, '<i class="icon-remove"></i> Delete', "class": "btn") }}</td>
        </tr>
    </tbody>
{% if loop.last %}
    <tbody>
        <tr>
            <td colspan="10" align="right">
                <div class="btn-group">
                    {{ link_to("products/index", '<i class="icon-fast-backward"></i> First', "class": "btn") }}
                    {{ link_to("products/index?page=" ~ page.before, '<i class="icon-step-backward"></i> Previous', "class": "btn ") }}
                    {{ link_to("products/index?page=" ~ page.next, '<i class="icon-step-forward"></i> Next', "class": "btn") }}
                    {{ link_to("products/index?page=" ~ page.last, '<i class="icon-fast-forward"></i> Last', "class": "btn") }}
                    <span class="help-inline">{{ page.current }}/{{ page.total_pages }}</span>
                </div>
            </td>
        </tr>
    <tbody>
</table>
{% endif %}
{% else %}
    No products are recorded
{% endfor %}


