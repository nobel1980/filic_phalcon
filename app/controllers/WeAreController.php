<?php
namespace Filic\Controllers;
use Filic\Models\Managements;
use Phalcon\Tag;
use Phalcon\Mvc\Model\Criteria;
use Filic\Models\Directors;
use Filic\Models\Pages;
use Filic\Models\News;

/**
 * Display the "About" page.
 */
class WeAreController extends ControllerBase
{

    /**
     * Default action. Set the public layout (layouts/public.volt)
     */
    public function initialize()
    {
        $this->view->setTemplateBefore('public');

        $news = news::find();
        $this->view->news = $news;
    }
    public function indexAction()
    {

    }

    public function directorsAction()
    {
        //$director= Directors::find();
        $director = Directors::find(array(
            "order" => "level ASC"
        ));
        $this->view->director = $director;
    }

    public function corporateChronicleAction()
    {

    }

    public function managementCommitteeAction()
    {
        $management = Managements::find(array(
            "order" => "level ASC"
        ));
        $this->view->managers = $management;
    }

    public function corporateInformationAction()
    {

    }

    public function allCommitteeAction()
    {

    }

    public function departmentInchargeAction()
    {

    }

    public function chairmanMessageAction()
    {
        $chairman= Pages::findFirst('id=1');
        $this->view->chairman = $chairman;
    }

    public function ceoMessageAction()
    {
        $ceomsg= Pages::findFirst('id=2');
        $this->view->ceomsg = $ceomsg;
    }

    public function getprofileAction()
    {
        $this->view->disable();
        if (($this->request->isPost()) && ($this->request->isAjax() == true)) {
             $profileid = $this->request->getQuery("id");
             $director= Directors::findFirstById($profileid);
       // $this->view->profile = $director;

        }
        $profile = $director->profile;

        $response = new \Phalcon\Http\Response();
        $response->setContentType('application/json', 'UTF-8');
        //$response->setContent(json_encode($director));
        $response->setContent($profile);
        return $response;
    }
}
