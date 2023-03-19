base_path = "/filic_phalcon/";
if(window.location.host.localeCompare('fareastislamilife.com') == 0 ){

    base_path = "";
}

function showDistrict(select,district)
{
    if (select=="")
    {
        return;
    }
    else{
        var url = base_path + "addresses/getDistrict?ld="+select;
        //console.log(url);
        get_select_data(select,url,district);
    }
}

function showSubDistrict(select,district)
{
    if (select=="")
    {
        return;
    }
    else{
        var url = base_path + "addresses/getSubDistrict?ld="+select;
        //console.log(url);
        get_select_data(select,url,district);
    }
}

function showParent(select,parent)
{
    if (select=="")
    {
        return;
    }
    else{
        var url = base_path + "offices/getParentOffice?ld="+select;
        //console.log(url);
        get_select_data(select,url,parent);
    }
}

function get_select_data(select,url,ID)
{
    $.post(url, function(data) {
    })
        .success(function(data) {
            if(data.length>0)
            {
                build_select_list(select, data,ID);
            }else{
                empty_select_list(select,ID);
            }
        })
        .error(function() {
        })
        .complete(function() {
        });
}

function build_select_list(select, data,ID){
    var sel_id = "#" + ID;
    $(sel_id).find("option:gt(0)").remove();
    $(sel_id).find("option:first").text("Loading...");

    $(sel_id).find("option:first").text("Select");

    for (var i = 0; i < data.length; i++) {
        {
            //console.log(data[i].name);
            $("<option/>").attr("value", data[i].id).text(data[i].name).appendTo($(sel_id));
        }

    }
}

function empty_select_list(select,ID){
    var sel_id = "#" + ID;

    $(sel_id).find("option:gt(0)").remove();
    $(sel_id).find("option:first").text("...");
}




