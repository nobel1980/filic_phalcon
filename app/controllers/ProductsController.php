<?php
namespace Filic\Controllers;

use Phalcon\Tag;
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Filic\Forms\ProductsForm;
use Filic\Models\Products;



/**
 * Filic\Controllers\ProductsController
 * CRUD to manage Products
 */
class ProductsController extends ControllerBase
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
        $page= Products::find();

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
        $this->view->form = new ProductsForm(Null);

        if ($this->request->isPost()) {
            $product = new Products();
            $product->assign(array(
                'title' => $this->request->getPost('title', 'striptags'),
                'title_bn' => $this->request->getPost('title_bn', 'striptags'),
                'description' => $this->request->getPost('description'),
                'description_bn' => $this->request->getPost('description_bn'),
                'parent' => $this->request->getPost('group')
            ));

            if (!$product->save()) {
                $this->flash->error($product->getMessages());
            } else {
                $this->flash->success("Product was updated successfully");
                return $this->response->redirect("products");
            }
        }
    }

    /**
     * Saves the products from the 'edit' action
     */
    public function editAction($id)
    {
        $product = Products::findFirstById($id);
        if (!$product) {
            $this->flash->error("Page was not found");
            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }

        if ($this->request->isPost()) {

            $product->assign(array(
                'title' => $this->request->getPost('title', 'striptags'),
                'title_bn' => $this->request->getPost('title_bn', 'striptags'),
                'description' => $this->request->getPost('description'),
                'description_bn' => $this->request->getPost('description_bn'),
                'parent' => $this->request->getPost('parent')
            ));

            if (!$product->save()) {
                $this->flash->error($product->getMessages());
            } else {
                //var_dump($product);exit();
                $this->flash->success("Product was updated successfully");
                return $this->response->redirect("products");
            }
        }

        $this->view->pages = $product;

        $this->view->form = new ProductsForm($product, array(
            'edit' => true
        ));
    }

    /**
     * Deletes a products
     *
     * @param int $id
     */
    public function deleteAction($id)
    {
        $product = Products::findFirstById($id);
        if (!$product) {
            $this->flash->error("Page was not found");
            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }

        if (!$product->delete()) {
            $this->flash->error($product->getMessages());
        } else {
            $this->flash->success("Page was deleted");
        }

        return $this->dispatcher->forward(array(
            'action' => 'index'
        ));
    }
}
