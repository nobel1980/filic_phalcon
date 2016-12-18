<?php
namespace Filic\Controllers;

use Phalcon\Tag;
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Filic\Forms\PagesForm;
use Filic\Models\Pages;



/**
 * Filic\Controllers\PagesController
 * CRUD to manage Pages
 */
class PagesController extends ControllerBase
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
        $page= Pages::find();

        $paginator = new Paginator(array(
            "data" => $page,
            "limit" => 10,
            "page" => $numberPage
        ));

        $this->view->page = $paginator->getPaginate();
    }


    /**
     * Creates a Page
     */
    public function createAction()
    {
        $this->view->form = new PagesForm(Null);

        if ($this->request->isPost()) {
            $page = new Pages();
            $page->assign(array(
                'title' => $this->request->getPost('title', 'striptags'),
                'description' => $this->request->getPost('description')
            ));

            if (!$page->save()) {
                $this->flash->error($page->getMessages());
            } else {
                $this->flash->success("Page was updated successfully");
                return $this->response->redirect("pages");
            }
        }
    }

    /**
     * Saves the pages from the 'edit' action
     */
    public function editAction($id)
    {
        $page = Pages::findFirstById($id);
        if (!$page) {
            $this->flash->error("Page was not found");
            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }

        if ($this->request->isPost()) {

            $page->assign(array(
                'title' => $this->request->getPost('title', 'striptags'),
                'description' => $this->request->getPost('description')
            ));

            if (!$page->save()) {
                $this->flash->error($page->getMessages());
            } else {
                $this->flash->success("Page was updated successfully");
                return $this->response->redirect("pages");
            }
        }

        $this->view->pages = $page;

        $this->view->form = new PagesForm($page, array(
            'edit' => true
        ));
    }

    /**
     * Deletes a pages
     *
     * @param int $id
     */
    public function deleteAction($id)
    {
        $page = Pages::findFirstById($id);
        if (!$page) {
            $this->flash->error("Page was not found");
            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }

        if (!$page->delete()) {
            $this->flash->error($page->getMessages());
        } else {
            $this->flash->success("Page was deleted");
        }

        return $this->dispatcher->forward(array(
            'action' => 'index'
        ));
    }
}
