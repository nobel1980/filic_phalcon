{{ content() }}

<ul class="pager">
    <li class="previous pull-left">
        {{ link_to("directors/index", "&larr; Go Back") }}
    </li>
</ul>

<ul id="sortable">
    {% for director in director %}
        <li id="level-{{ director.id }}"> {{ director.name }}</li>
    {% endfor %}
</ul>


{#Update DIRECTOR position level#}
<script type="text/javascript">
    $(document).ready(function () {
        $('ul').sortable({
            axis: 'y',
            cursor: 'move',
            smooth:         false,
            opacity:        0.7,
            tolerance:      'pointer',
            stop: function (event, ui) {
                var data = $(this).sortable('serialize');
                $.ajax({
                    data: data,
                    type: 'POST',
                    url: base_path + "Directors/sortUpdate"
                });
            }
        });
    });
</script>


