<?php
namespace Filic\Controllers;

use Phalcon\Tag;
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Filic\Forms\InchargesForm;
use Filic\Models\Incharges;



/**
 * Filic\Controllers\InchargesController
 * CRUD to manage Incharges
 */
class InchargesController extends ControllerBase
{

    public function initialize()
    {
        $this->view->setTemplateBefore('private');
    }

    /**
     * Default action, shows the index form
     */
    public function indexAction()
    {
        //$numberPage = 1;
        $numberPage = ($this->request->has('page')) ? (int)$this->request->get('page') : 1;
        $incharge= Incharges::find();

        $paginator = new Paginator(array(
            "data" => $incharge,
            "limit" => 10,
            "page" => $numberPage
        ));

        $this->view->page = $paginator->getPaginate();
    }


    /**
     * Creates a Incharge
     */
    public function createAction()
    {
        if ($this->request->isPost()) {

            $incharge = new Incharges();
            $incharge->assign(array(
                'name' => $this->request->getPost('name', 'striptags'),
                'emp_id' => $this->request->getPost('emp_id', 'int'),
                'designation_id' => $this->request->getPost('designation'),
                'designation_code' => $this->request->getPost('designation_code', 'int'),
                'mobile' => $this->request->getPost('mobile'),
                'phone' => $this->request->getPost('phone'),
                'email' => $this->request->getPost('email')
            ));

            if (!$incharge->save()) {
                $this->flash->error($incharge->getMessages());
            } else {

                $this->flash->success("Incharge was created successfully");
                return $this->response->redirect("incharges");

                //Tag::resetInput();
            }
        }

        $this->view->form = new InchargesForm(Null);
    }

    /**
     * Saves the incharge from the 'edit' action
     */
    public function editAction($id)
    {
        $incharge = Incharges::findFirstById($id);
        if (!$incharge) {
            $this->flash->error("Incharge was not found");
            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }

        if ($this->request->isPost()) {

            $incharge->assign(array(
                'name' => $this->request->getPost('name', 'striptags'),
                'emp_id' => $this->request->getPost('emp_id', 'int'),
                'designation_id' => $this->request->getPost('designation'),
                'designation_code' => $this->request->getPost('designation_code', 'int'),
                'mobile' => $this->request->getPost('mobile'),
                'phone' => $this->request->getPost('phone'),
                'email' => $this->request->getPost('email')

            ));

            if (!$incharge->save()) {
                $this->flash->error($incharge->getMessages());
            } else {

                $this->flash->success("Incharge was updated successfully");

                Tag::resetInput();
            }
        }

        $this->view->incharge = $incharge;

        $this->view->form = new InchargesForm($incharge, array(
            'edit' => true
        ));
    }

    /**
     * Deletes a Encharge
     *
     * @param int $id
     */
    public function deleteAction($id)
    {
        $user = Users::findFirstById($id);
        if (!$user) {
            $this->flash->error("User was not found");
            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }

        if (!$user->delete()) {
            $this->flash->error($user->getMessages());
        } else {
            $this->flash->success("User was deleted");
        }

        return $this->dispatcher->forward(array(
            'action' => 'index'
        ));
    }
}
