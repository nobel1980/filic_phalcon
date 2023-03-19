base_path = "/filic_phalcon/";
if(window.location.host.localeCompare('fareastislamilife.com') == 0 ){
    base_path = "";
}
$(document).ready(function(){
    $("#myCarousel").carousel();
    $('.dropdown-toggle').dropdown();
    $('.nav-collapse').toggle();

    //Tabs Box
    if($('.tabs-box').length){

        //Tabs
        $('.tabs-box .tab-buttons .tab-btn').on('click', function(e) {

            e.preventDefault();
            var target = $($(this).attr('href'));

            target.parents('.tabs-box').children('.tab-buttons').children('.tab-btn').removeClass('active-btn');
            $(this).addClass('active-btn');
            target.parents('.tabs-box').children('.tab-content').children('.tab').fadeOut(0);
            target.parents('.tabs-box').children('.tab-content').children('.tab').removeClass('active-tab');
            $(target).fadeIn(300);
            $(target).addClass('active-tab');
        });

    }
    /*block hover*/

    $("#btn-buss-info").hover(function() {
        $("#business-info").addClass("catGroup-hover-bg");
    }, function() {
        $("#business-info").removeClass("catGroup-hover-bg");
    });

    $("#btn-claim").hover(function() {
        $("#claim").addClass("catGroup-hover-bg");
    }, function() {
        $("#claim").removeClass("catGroup-hover-bg");
    });

    $("#btn-insurance").hover(function() {
        $("#insurance").addClass("catGroup-hover-bg");
    }, function() {
        $("#insurance").removeClass("catGroup-hover-bg");
    });

    $("#btn-finance").hover(function() {
        $("#finance").addClass("catGroup-hover-bg");
    }, function() {
        $("#finance").removeClass("catGroup-hover-bg");
    });

    $("#btn-service").hover(function() {
        $("#service").addClass("catGroup-hover-bg");
    }, function() {
        $("#service").removeClass("catGroup-hover-bg");
    });

    $("#btn-office").hover(function() {
        $("#office").addClass("catGroup-hover-bg");
    }, function() {
        $("#office").removeClass("catGroup-hover-bg");
    });

    /*Products*/
    $("#children").hover(function() {
        $(this).addClass("popular-product-hover-bg");
    }, function() {
        $(this).removeClass("popular-product-hover-bg");
    });

    $("#hajj").hover(function() {
        $(this).addClass("popular-product-hover-bg");
    }, function() {
        $(this).removeClass("popular-product-hover-bg");
    });

    $("#pension").hover(function() {
        $(this).addClass("popular-product-hover-bg");
    }, function() {
        $(this).removeClass("popular-product-hover-bg");
    });

    $("#deposite").hover(function() {
        $(this).addClass("popular-product-hover-bg");
    }, function() {
        $(this).removeClass("popular-product-hover-bg");
    });

});

/*facebook*/
(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.8";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

/*Main navigation*/
$(function() {
    var cnt = 0;
    $( ".nav-toggle" ).click(function() {
        cnt++;
        if(cnt % 2 == 1)
        {
            $( ".mzr-responsive" ).slideDown( "slow", function() {
                // Animation complete.
            });
        }
        else{
            $( ".mzr-responsive" ).slideUp( "slow", function() {
                // Animation complete.
            });
        }
    });

    var cnt_inner = 0;
    $(".mzr-drop a").click(function() {
        cnt_inner++;

        if(cnt_inner % 2 == 1)
        {
            if( $(this).next().length )
            {
                $(this).next().slideDown( "slow", function() {
                    // Animation complete.
                });
            }
        }
        else{
            if( $(this).next().length )
            {
                $(this).next().slideUp( "slow", function() {
                    // Animation complete.
                });
            }
        }

        //console.log($(this));
    });

});
//home page founder & director
$(document).ready(function() {
    $(".btn-pref .btn").click(function () {
        $(".btn-pref .btn").removeClass("btn-filic").addClass("btn-default");
        // $(".tab").addClass("active"); // instead of this do the below
        $(this).removeClass("btn-default").addClass("btn-filic");
    });
});

//Directors profile modal
function profile(id)
{
    var id= $(id).attr('id');
    //cosole.log(id);
    var url = base_path+"weAre/getprofile?id="+id;
    $.post(url, function(data) {
        $("#modalContent").html("");
    })
        .success(function(data) {
        })
        .error(function(data) {
        })
        .complete(function(data) {
            $('#modalDirector').show();
            $("#modalContent").html(data.responseText);
        });
}

// Product details modal
function product_detail(id)
{
    var id= $(id).attr('id');
    //cosole.log(id);
    var url = base_path+"productPlan/getdetail?id="+id;
    $.post(url, function(data) {
        $("#modalContent").html("");
    })
        .success(function(data) {
        })
        .error(function(data) {
        })
        .complete(function(data) {
            $('#productDetail').show();
            $("#modalContent").html(data.responseText);
        });
}


function product_detailbn(id)
{
    var id= $(id).attr('id');
    //cosole.log(id);
    var url = base_path+"productPlan/getdetailbn?id="+id;
    $.post(url, function(data) {
        $("#modalContent").html("");
    })
        .success(function(data) {
        })
        .error(function(data) {
        })
        .complete(function(data) {
            $('#productDetail').show();
            $("#modalContent").html(data.responseText);
        });
}


//Office Incharge information
function officeIncharge(id)
{
    var id= $(id).attr('id');
    //cosole.log(id);
    var url = base_path+"OfficeInformation/getincharge?id="+id;
    $.post(url, function(data) {
        $("#modalContent").html("");
    })
        .success(function(data) {
        })
        .error(function(data) {
        })
        .complete(function(data) {
            $('#modalIncharge').show();
            $("#modalContent").html(data.responseText);
        });
}



/****For test not complete ***/
function office(id)
{
    var id= $(id).attr('id');
    var url = base_path+"OfficeInformation/getoffice?id="+id;

    data
        .success(function(data) {
        })
        .error(function(data) {
        })
        .complete(function(data) {
            $('#modalDirector').show();
            $("#modalContent").html(data.responseText);
        });
}