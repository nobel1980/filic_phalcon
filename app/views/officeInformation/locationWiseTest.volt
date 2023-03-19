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
                           echo "<div class='tab-pane fade in' id='tab".$id."' href='#tabdis".$id."'>";
                            echo " <ul class='nav nav-tabs' id='music_tabs'>
                                <li><a href='#music_popular' data-toggle='tab'>Popular1</a></li>
                                <li><a href='#music_unique' data-toggle='tab'>Unique2</a></li>
                            </ul>";
                            }
                        else
                            {
                            echo "<div class='tab-pane fade in active' id='tab".$id."' href='#tabdis".$id."'>";
                                echo " <ul class='nav nav-tabs' id='music_tabs'>
                                    <li><a href='#music_popular' data-toggle='tab'>Popular</a></li>
                                    <li><a href='#music_unique' data-toggle='tab'>Unique</a></li>
                                </ul>";
                            }
                                echo "<div class='row'>";
                                    echo "
                                            <ul class='nav nav-tabs'>
                                                <li class='active'><a href='#a' data-toggle='tab'><span class='glyphicon glyphicon-heart'></span></a></li>
                                                <li><a href='#b' data-toggle='tab'><span class='glyphicon glyphicon-star'></span></a></li>
                                                <li><a href='#c' data-toggle='tab'><span class='glyphicon glyphicon-headphones'></span></a></li>
                                            </ul>
                                            <div class='tab-content'>
                                                <div class='tab-pane active' id='a'>
                                                    <h3>Who do you Love?</h3>
                                                    <ul class='list-group pull-left'>
                                                        <li class='list-group-item'>
                                                            <h4>Jen &nbsp; &nbsp;<span class='badge pull-right'>100%</span></h4>
                                                        </li>
                                                        <li class='list-group-item'>
                                                            <h4>Dezi &nbsp; &nbsp;<span class='badge pull-right'>100%</span></h4>
                                                        </li>
                                                        <li class='list-group-item'>
                                                            <h4>Eli &nbsp; &nbsp;<span class='badge pull-right'>100%</span></h4>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class='tab-pane' id='b'>
                                                    <h3>Whats your Favorite?</h3>
                                                    <ul class='list-group pull-left'>
                                                        <li class='list-group-item'>
                                                            <h4>Crystals &nbsp; &nbsp;<span class='badge pull-right'>100%</span></h4>
                                                        </li>
                                                        <li class='list-group-item'>
                                                            <h4>Healing &nbsp; &nbsp;<span class='badge pull-right'>90%</span></h4>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class='tab-pane' id='c'>CCCCThirdamuno, ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra varius quam sit amet vulputate. Quisque mauris augue, molestie tincidunt condimentum vitae.</div>

                                    </div>";
                                    {#foreach($office as $off)
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
                                                        <i class='glyphicon glyphicon-earphone'> 09613000123,</i><br>
                                                        <i class='glyphicon glyphicon-envelope'>   info@fareastislamilife.com</i>
                                                    </address>
                                                </div>
                                            </div>
                                        </div>";
                                        }
                                    }#}
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