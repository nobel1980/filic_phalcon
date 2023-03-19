<main class="main-content">
    <div class ="container">
        <div class="margin-top row">
            <div id= "left-content" class="col-md-9">
                <div class="container">
                    <div class="col-md-9">
                        <h1 id="timeline">Financial Statement</h1>
                        <hr class="colorgraph">

                        <table class="table">
                            <tbody>
                            {% for report in report %}
                                {% if loop.first %}
                                    {% set year = report.report_year %}
                                    <tr><td><h4>Year {{ report.report_year }}</h4></td></tr>
                                {% endif %}
                                {% if report.report_year == year %}
                                    <tr>
                                        <td>{{ link_to("financialInformation/reportDetails/" ~ report.id,  report.title ) }}</td>
                                    </tr>
                                {% else %}
                                    <tr><td><h4>Year {{ report.report_year }}</h4></td></tr>
                                    <tr>
                                        <td>{{ link_to("financialInformation/reportDetails/" ~ report.id,  report.title ) }}</td>
                                    </tr>
                                    {% set year = year - 1 %}
                                {% endif %}
                            {% endfor %}
                            </tbody>
                        </table>
                    </div>
                </div>
            </div><!-- End Left content -->
            <div id= "right-content" class="col-md-3 col-xs-12">
                {{ partial("layouts/partial/financialSidebar") }}
            </div><!-- End right content -->
        </div>
    </div>
</main>