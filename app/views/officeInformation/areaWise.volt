<?php

//$district = unique_value_array($office,'dis_id', 'district');
//print_r($division);exit;
?>
<main class="main-content">
    <div class ="container">
        <div class="row margin-top">
            <div class="col-lg-12 col-sm-12 col-md-12">
                <div id="group" class="btn-pref btn-group btn-group-justified btn-group-lg" role="group" aria-label="...">
                    {% for  division in divisions %}
                     {% if loop.first %}
                         <div class='btn-group' role='group'>
                             <button type='button' id =division.id class='btn btn-filic' href={{ '#tab'~ division.id }} data-toggle='tab' onclick='office(this);'><span class='glyphicon glyphicon-book' aria-hidden='true'></span>
                                 <div class='hidden-xs'>{{ division.name }}</div>
                             </button>
                         </div>
                         {% else %}
                             <div class='btn-group' role='group'>
                                 <button type='button' id ={{ division.id }} class='btn btn-default' href={{ '#tab'~ division.id }} data-toggle='tab' onclick='office(this);'><span class='glyphicon glyphicon-book' aria-hidden='true'></span>
                                 <div class='hidden-xs'>{{ division.name }}</div>
                                 </button>
                             </div>
                      {% endif  %}
                    {% endfor %}
                </div>
                <div class="margin-top">
                    <div class="tab-content">
                        {% for  division in divisions %}
                            {% if loop.first %}
                                <div class='tab-pane fade in active' id={{ 'tab'~ division.id }}>
                                    <div class='row'>
                                        <div class='col-md-2'>
                                            {{ division.name }}

                                        </div>
                                        <div class='col-md-10'></div>
                                    </div>
                                </div>
                            {% else %}
                                <div class='tab-pane fade in' id={{ 'tab'~ division.id }}>
                                    {{ division.name }}
                                </div>
                            {% endif  %}
                        {% endfor %}
                        {% for  district in districts %}
                            <span>{{ district.dis_name }}</span>
                        {% endfor %}
                    </div>
            </div>
        </div>
    </div>
</main>

<?php
function unique_value_array($arr,$key_str,$val_str)
{
    $new_arr;
    $i=0;
    foreach($arr as $key => $val) {
        $new_arr[$val[$key_str]] = $val[$val_str];
        $i++;
        }
        return $uniq_arr = array_unique($new_arr);
        }
?>


<script>
    $(document).ready(function() {
        var answer= '';
        $('#Group .btn-filic').each(function(){
            answer= $(this).attr('id');
            console.log('answer');
        });
    });
</script>