<main class="main-content">
    <div class ="container">
        <div class="margin-top row">
            <div id= "left-content" class="col-md-9">
                <div class="container">
                    <div class="col-md-9">
                        <h1 id="timeline">Financial Statement</h1>
                        <hr class="colorgraph">

                            <table class="table">
                                <thead>
                                <tr>
                                    <th>Year</th>
                                </tr>
                                </thead>
                                <tbody>
                                {% for report in report %}
                                    <tr>
                                        <td>{{ link_to("financialInformation/reportDetails/" ~ report.id,  report.title ) }}</td>
                                    </tr>
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