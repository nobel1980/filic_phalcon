<?php
namespace Filic\Controllers;

use Phalcon\Mvc\Model\Criteria;
use Filic\Models\Proposal;
use Filic\Models\users;
use Filic\Models\Robot;
/**
 * Display the default Dashboard  page.
 */
class DashboardController extends ControllerBase
{
    /**
     * Default action. Set the private (authenticated) layout (layouts/private.volt)
     */
    public function initialize()
    {
        $request = new \Phalcon\Http\Request();

        if ($request->isAjax() == true) {
            $this->view->setTemplateBefore('ajax');
            $this->view->disableLevel(View::LEVEL_MAIN_LAYOUT);
        }else{
            $this->view->setTemplateBefore('private');
        }
    }

    public function indexAction(){
        //$policy_no= '555075000300';
        $policies = Proposal::find("POLICY_NO = '555075000300'");
    /*    $policies = $this->Proposal->executeQuery("SELECT * FROM Proposal WHERE POLICY_NO = :POLICY_NO:", array(
            'POLICY_NO' => '555075000300'
        ));*/
        //$policies = Proposal::findFirstByPOLICY_NO('555075000300');
        //$policies = $this->get_policy_statement();
        $users= Users::find();
        //$users = $this->get_users();
        //echo json_encode($policies);
       var_dump($policies);
        print_r(count($policies));
        exit();
        $this->view->policies = $policies;
        $this->view->users = $users;
        $this->view->pick("dashboard/index");
    }

    private function get_policy_statement(){
        $sql = "
            SELECT POLICY_NO, PROPOSER, AGE, SEX
            FROM proposal
            WHERE POLICY_NO = '052003219' ";
        //echo $sql; exit();

        $result = Robot::findByRawSql($sql);
        //var_dump($result);
        $result = $result->toArray();

        return $result;
    }

    private function get_users(){
        $sql = "
            SELECT *
            FROM users";
        //echo $sql; exit();
    }
}
