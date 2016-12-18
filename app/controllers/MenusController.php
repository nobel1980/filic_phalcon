<?php
namespace Filic\Controllers;

use Phalcon\Tag;
use Phalcon\Mvc\View;
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Filic\Forms\MenusForm;
use Filic\Models\Menus;

/**
 * Display the terms and conditions page.
 */
class MenusController extends ControllerBase
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

        $menu= Menus::find();
        //$this->view->incharge = $incharge;

        $paginator = new Paginator(array(
            "data" => $menu,
            "limit" => 10,
            "page" => $numberPage
        ));

        $this->view->page = $paginator->getPaginate();
    }


    public function createAction()
    {

        if ($this->request->isPost()) {

            $menu = new Menus();

            $menu->assign(array(
                'name' => $this->request->getPost('name'),
                'parent' => $this->request->getPost('parent'),
                'isMain' => $this->request->getPost('isMain'),
                'parent' => $this->request->getPost('level')
            ));
            if (!$menu->save()) {
                $this->flash->error($menu->getMessages());
            } else {
                $this->flash->success("Navigation menu was created successfully");
                return $this->dispatcher->forward(array(
                    'action' => 'index'
                ));
            }
        }
        $this->view->form = new MenusForm(null);
    }

    public function editAction($id)
    {
        $menu = Menus::findFirstById($id);
        if (!$menu) {
            $menu->flash->error("Menu was not found");
            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }

        if ($this->request->isPost()) {

            $menu->assign(array(
                'name' => $this->request->getPost('name'),
                'parent' => $this->request->getPost('parent'),
                'isMain' => $this->request->getPost('isMain'),
                'parent' => $this->request->getPost('level')
            ));
            if (!$menu->save()) {
                $this->flash->error($menu->getMessages());
            }
            else {

                $this->flash->success("Menu was updated successfully");

               // Tag::resetInput();
            }
        }

        $this->view->menu = $menu;

        $this->view->form = new ServicesForm($menu, array(
            'edit' => true
        ));
    }

    /**
     * Deletes a menu
     *
     * @param int $id
     */
    public function deleteAction($id)
    {
        $menu = Menus::findFirstById($id);
        if (!$menu) {

            $this->flash->error("Service was not found");

            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }

        if (!$menu->delete()) {
            $this->flash->error($menu->getMessages());
        } else {
            $this->flash->success("Service was deleted");
        }

        return $this->dispatcher->forward(array(
            'action' => 'index'
        ));
    }

    public function getParentMenueAction()
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