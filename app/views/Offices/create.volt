
<form method="post" autocomplete="off" class="form">

    <ul class="pager">
        <li class="previous pull-left">
            {{ link_to("offices", "&larr; Go Back") }}
        </li>
    </ul>

    {{ content() }}

    <div class="center scaffold">
        <h2>Create a offices</h2>
        <div class="well">
            <div class="row">
                <div class="span6">
                    <div class="clearfix">
                        <label for="officetype">Office Type</label>
                        {{ form.render("officetype") }}
                    </div>
                </div>
                <div class="span5">
                    <div class="clearfix">
                        <label for="parent">Parent Office</label>
                        {{ form.render("parent") }}
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="span6">
                    <div class="clearfix">
                        <label for="name">Name</label>
                        {{ form.render("name") }}
                    </div>
                </div>
                <div class="span5">
                    <div class="clearfix">
                        <label for="businessId">Business ID</label>
                        {{ form.render("businessId") }}
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="span6">
                    <div class="clearfix">
                        <label for="phone">Phone:</label>
                        {{ form.render("phone") }}
                    </div>
                </div>
                <div class="span5">
                    <div class="clearfix">
                        <label for="email">Email:</label>
                        {{ form.render("email") }}
                    </div>
                </div>
            </div>
        </div>
        <div class="well">
            <div class="row">
                <div  class="span6">
                    <div class="clearfix">
                        <label for="exist">Already Exist </label>
                        {{ form.render("exist") }}
                    </div>
                </div>
                <div  class="span5">
                    <div class="clearfix">
                        <div id="send_to_yes">
                            <b>Number</b> <br><input type="text" name="number"><br><br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="add-info">
            <div class="well">
                <div class="row">
                    <div  class="span6">
                        <div class="clearfix">
                            <label for="address1">address line 1</label>
                            {{ form.render("address1") }}
                        </div>
                    </div>
                    <div class="span5">
                        <div class="clearfix">
                            <label for="div_id">Division</label>
                            {{ form.render("division") }}
                        </div>
                    </div>

                    <div class="span6">
                        <div class="clearfix">
                            <label for="address2">Address line 2</label>
                            {{ form.render("address2") }}
                        </div>
                    </div>
                    <div class="span5">
                        <div class="clearfix">
                            <label for="district">District</label>
                            {{ form.render("district") }}
                        </div>
                    </div>
                    <div class="span6">
                        <div class="clearfix">
                            <label for="postcode">Postcode</label>
                            {{ form.render("postcode") }}
                        </div>
                    </div>
                    <div class="span5">
                        <div class="clearfix">
                            <label for="subdistrict">Upazilla</label>
                            {{ form.render("subdistrict") }}
                        </div>
                    </div>
                </div>
            </div>
            <div class="well">
                <div class="row">
                    <div class="span6">
                        <div class="clearfix">
                            <label for="latitude">Latitude</label>
                            {{ form.render("latitude") }}
                        </div>
                    </div>
                    <div class="span5">
                        <div class="clearfix">
                            <label for="longitude">Longitude</label>
                            {{ form.render("longitude") }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix" style="margin-top: 10px;">
            {{ submit_button("Save", "class": "btn btn-primary") }}
        </div>
     </div>
</form>


<script>
    $(document).ready(function() {
        $("#send_to_yes").hide();
        $("input:checkbox[name=\'exist\']").change(function() {
            if(this.value == '1' && this.checked){
                $("#send_to_yes").show();
                $("#add-info").hide();
            }
            else {
                $("#send_to_yes").hide();
                $("#add-info").show();
            }
        });
    });
</script>

