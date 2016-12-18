<?php
namespace Filic\Controllers;

use Filic\Models\Products;

/**
 * Display the "About" page.
 */
class ProductPlanController extends ControllerBase
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
        $ekok = Products::find("parent=1");
        $this->view->ekok = $ekok;

        $sb = Products::find("parent=2");
        $this->view->sb = $sb;

        $group = Products::find("parent=3");
        $this->view->group = $group;
    }

    public function banglaAction()
    {
        $ekok = Products::find("parent=1");
        $this->view->ekok = $ekok;

        $sb = Products::find("parent=2");
        $this->view->sb = $sb;

        $group = Products::find("parent=3");
        $this->view->group = $group;
    }

    public function getdetailAction()
    {
        $this->view->disable();
        if (($this->request->isPost()) && ($this->request->isAjax() == true)) {
            $productid = $this->request->getQuery("id");
            $product= Products::findFirstById($productid);
        }
        $product_detail = $product->description;

        $response = new \Phalcon\Http\Response();
        $response->setContentType('application/json', 'UTF-8');
        //$response->setContent(json_encode($director));
        $response->setContent($product_detail);
        return $response;
    }

    public function getdetailbnAction()
    {
        $this->view->disable();
        if (($this->request->isPost()) && ($this->request->isAjax() == true)) {
            $productid = $this->request->getQuery("id");
            $product= Products::findFirstById($productid);
        }
        $product_detail = $product->description_bn;

        $response = new \Phalcon\Http\Response();
        $response->setContentType('application/json', 'UTF-8');
        //$response->setContent(json_encode($director));
        $response->setContent($product_detail);
        return $response;
    }
}
