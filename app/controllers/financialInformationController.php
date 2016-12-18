<?php
namespace Filic\Controllers;
use Filic\Models\Files;
use Filic\Models\Pages;
/**
 * Display the "About" page.
 */
class financialInformationController extends ControllerBase
{

    /**
     * Default action. Set the public layout (layouts/public.volt)
     */
    public function initialize()
    {
        $this->view->setTemplateBefore('public');
    }
    public function indexAction()
    {

    }

    public function shareholdingCompositionAction()
    {
        $share= Pages::findFirst('id=3');
        $this->view->share = $share;
    }

    public function businessSummaryAction()
    {
        $business= Pages::findFirst('id=4');
        $this->view->business = $business;
    }

    public function valueAddStatementAction()
    {
        $valstat= Pages::findFirst('id=5');
        $this->view->valstat = $valstat;
    }

    public function directorReportAction()
    {
        /*$directorRptt= Pages::findFirst('id=6');
        $this->view->directorRpt = $directorRptt;*/
    }

    public function reportsAction()
    {

        $report = Files::find(array(
            "order"=> "id DESC"));

        //var_dump($report);exit;

        $this->view->report = $report;
    }

    public function reportDetailsAction($id){
        $report = files::findFirstById($id);
        $this->view->report = $report;
    }
}
