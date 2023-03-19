<?php
$division = unique_value_array($office,'div_id', 'division');
//print_r($division);exit;
?>
<main class="main-content">
    <div class ="container">
        <div class="row margin-top">
            <div class="col-lg-12 col-sm-12 col-md-12">
                <div class="btn-pref btn-group btn-group-justified btn-group-lg" role="group" aria-label="...">

                   <?php
                   $i=0;
                     foreach($division as $id=>$name)
                    {
                    if($i>0)
                        {
                         echo " <div class='btn-group' role='group'>
                            <button type='button' id='stars' class='btn btn-default' href='#tab".$id."' data-toggle='tab'><span class='glyphicon glyphicon-book' aria-hidden='true'></span>
                                <div class='hidden-xs'>".$name."</div>
                            </button>
                        </div>";
                        }
                    else
                        {
                        echo " <div class='btn-group' role='group'>
                            <button type='button' id='stars' class='btn btn-filic' href='#tab".$id."' data-toggle='tab'><span class='glyphicon glyphicon-book' aria-hidden='true'></span>
                                <div class='hidden-xs'>".$name."</div>
                            </button>
                        </div>";
                        }

                    $i++;
                    }
                   ?>
                </div>

                <div class="margin-top">
                    <div class="tab-content">
                        <?php
                        $i = 0;
                        foreach($division as $id=>$name)
                        {
                        if($i>0)
                           {
                           echo "<div class='tab-pane fade in' id='tab".$id."'>";
                            }
                        else
                            {
                            echo "<div class='tab-pane fade in active' id='tab".$id."'>";
                            }
                                echo "<div class='row'>";
                                    foreach($office as $off)
                                    {
                                    if($off['div_id'] == $id)
                                        {
                                        echo "<div class='col-md-4'>
                                            <div class='panel panel-default office-info'>
                                                <div class='panel-heading'><i class='glyphicon glyphicon-home'>
                                                        <strong> " .$off['name']. "</strong>
                                                    </i></div>
                                                <div class='panel-body'>
                                                    <address>
                                                        " .$off['address1']. "<br>
                                                        " .$off['address2']. "<br>
                                                        " .$off['subdistrict']. "<br>
                                                        " .$off['district']. "<br>
                                                        ";
                                                        if (strlen($off['phone'] != 0)){
                                                        echo " <i class='glyphicon glyphicon-earphone'> 09613000123-Ext." .$off['phone']. "</i><br> ";
                                                        }else{
                                                        echo " <i class='glyphicon glyphicon-earphone'> 09613000123</i><br> ";
                                                        }

                                                        if (empty ($off['email'] == false)){
                                                        echo " <i class='glyphicon glyphicon-envelope'> ".$off['email']."</i><br> ";
                                                        }else{
                                                        echo " <i class='glyphicon glyphicon-envelope'> info@fareastislamilife.com</i><br> ";
                                                        }

                                                    echo "</address>
                                                </div>
                                            </div>
                                        </div>";
                                        }
                                    }
                                echo "   </div>
                            </div>";
                            $i++;
                            }
                            ?>
                        </div>
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