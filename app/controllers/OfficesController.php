<?php
namespace Filic\Controllers;

use Phalcon\Tag;
use Phalcon\Mvc\View;
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Filic\Forms\OfficesForm;
use Filic\Models\Offices;
use Filic\Models\OfficeTypes;

/**
 * Display the terms and conditions page.
 */
class OfficesController extends ControllerBase
{

    /**
     * Default action. Set the private (authenticated) layout (layouts/private.volt)
     */
    public function initialize()
    {
        $this->view->setTemplateBefore('private');
    }
    /**
     * Default action. Set the public layout (layouts/public.volt)
     */
    public function indexAction()
    {
        $numberPage = ($this->request->has('page')) ? (int)$this->request->get('page') : 1;

        $office= Offices::find();
        //$this->view->incharge = $incharge;

        $paginator = new Paginator(array(
            "data" => $office,
            "limit" => 10,
            "page" => $numberPage
        ));

        $this->view->page = $paginator->getPaginate();
    }


    public function createAction()
    {

        if ($this->request->isPost()) {

            $office = new Offices();

            $office->assign(array(
                'name' => $this->request->getPost('name'),
                'parent_id' => $this->request->getPost('parent_id'),
                'office_type_id' => $this->request->getPost('officetype'),
                'business_id' => $this->request->getPost('businessId'),
                'business_type' => $this->request->getPost('business')
            ));
            if (!$office->save()) {
                $this->flash->error($office->getMessages());
            } else {
                $this->flash->success("Office was created successfully");
                return $this->dispatcher->forward(array(
                    'action' => 'index'
                ));
            }
        }
        $this->view->form = new OfficesForm(null);
    }

    public function editAction($id)
    {
        $office = Offices::findFirstById($id);
        if (!$office) {
            $office->flash->error("Offices was not found");
            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }

        if ($this->request->isPost()) {

            $office->assign(array(
                'name' => $this->request->getPost('name'),
                'parent_id' => $this->request->getPost('parent_id'),
                'office_type_id' => $this->request->getPost('officetype'),
                'business_id' => $this->request->getPost('businessId'),
                'business_type' => $this->request->getPost('business')
            ));
            if (!$office->save()) {
                $this->flash->error($office->getMessages());
            }
            else {

                $this->flash->success("Services was updated successfully");

               // Tag::resetInput();
            }
        }

        $this->view->office = $office;

        $this->view->form = new officesForm($office, array(
            'edit' => true
        ));
    }

    /**
     * Deletes a Profile
     *
     * @param int $id
     */
    public function deleteAction($id)
    {
        $office = Offices::findFirstById($id);
        if (!$office) {

            $this->flash->error("Service was not found");

            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }

        if (!$office->delete()) {
            $this->flash->error($office->getMessages());
        } else {
            $this->flash->success("Service was deleted");
        }

        return $this->dispatcher->forward(array(
            'action' => 'index'
        ));
    }

    public function getParentOfficeAction()
    {
        $this->view->disable();
        $childs = array();
        if (($this->request->isPost()) && ($this->request->isAjax() == true)) {
            $officeTypeId = $this->request->getQuery("ld", "int");
            $officeTypeId =(int)$officeTypeId;
            $ParentId = $officeTypeId - 2;
            $officeType = OfficeTypes::findFirstById($ParentId);
            $tmp = array();
            if ($ParentId) {
                $tmp = Offices::find("office_type_id=" . $ParentId);
            }

            foreach ($tmp as $t) {

                $childs[] = array('id' => $t->id, 'name' => $t->name ." " . $officeType->name);

            }
        }
        //        var_dump($childs);
        $response = new \Phalcon\Http\Response();
        $response->setContentType('application/json', 'UTF-8');
        $response->setContent(json_encode($childs));
        return $response;
    }
}