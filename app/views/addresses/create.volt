
<form method="post" autocomplete="off">

    <ul class="pager">
        <li class="previous pull-left">
            {{ link_to("addresses", "&larr; Go Back") }}
        </li>
        <li class="pull-right">
            {{ submit_button("Save", "class": "btn btn-success") }}
        </li>
    </ul>

    {{ content() }}

    <div class="center scaffold">
        <h2>Create an address</h2>

        <div class="clearfix">
            <label for="address1">address line 1</label>
            {{ form.render("address1") }}
        </div>

        <div class="clearfix">
            <label for="address2">Address line 2</label>
            {{ form.render("address2") }}
        </div>

        <div class="clearfix">
            <label for="postcode">Postcode</label>
            {{ form.render("postcode") }}
        </div>

        <div class="clearfix">
            <label for="phone">Phone:</label>
            {{ form.render("phone") }}
        </div>

        <div class="clearfix">
            <label for="div_id">Division</label>
            {{ form.render("division") }}
        </div>

        <div class="clearfix">
            <label for="district">District</label>
            {{ form.render("district") }}
        </div>

        <div class="clearfix">
            <label for="subdistrict">Upazilla</label>
            {{ form.render("subdistrict") }}
        </div>

        <div class="clearfix">
            <label for="latitude">Latitude</label>
            {{ form.render("latitude") }}
        </div>

        <div class="clearfix">
            <label for="longitude">Longitude</label>
            {{ form.render("longitude") }}
        </div>

    </div>

</form>