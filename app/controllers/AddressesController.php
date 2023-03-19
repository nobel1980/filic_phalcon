<?php
namespace Filic\Controllers;

use Phalcon\Tag;
use Phalcon\Mvc\View;
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Filic\Forms\AddressesForm;

use Filic\Models\Addresses;
use Filic\Models\Districts;
use Filic\Models\Subdistricts;

/**
 * Display the address CRUD page.
 */
class AddressesController extends ControllerBase
{

    /**
     * Default action. Set the private (authenticated) layout (layouts/private.volt)
     */
    public function initialize()
    {
        $this->view->setTemplateBefore('private');
    }

    public function indexAction()
    {
        $numberPage = ($this->request->has('page')) ? (int)$this->request->get('page') : 1;
        $address= Addresses::find();

        $paginator = new Paginator(array(
            "data" => $address,
            "limit" => 20,
            "page" => $numberPage
        ));


        $this->view->page = $paginator->getPaginate();
    }

    /*
     * create a address
    */

    public function createAction()
    {

        if ($this->request->isPost()) {

            $address = new Addresses();
            $address->assign(array(
                'address1' => $this->request->getPost('address1'),
                'address2' => $this->request->getPost('address2'),
                'phone' => $this->request->getPost('phone'),
                'sub_id' => $this->request->getPost('subdistrict'),
                'dis_id' => $this->request->getPost('district'),
                'div_id' => $this->request->getPost('division'),
                'postcode' => $this->request->getPost('postcode'),
                'lat' => $this->request->getPost('latitude'),
                'lng' => $this->request->getPost('longitude')
            ));
            //var_dump($address);
            if (!$address->save()) {
                $this->flash->error($address->getMessages());
            } else {
                $this->flash->success("Address was created successfully");
                return $this->response->redirect("addresses/index");
            }
        }
        $this->view->form = new AddressesForm(null);

    }
    /*
     * Edit a address
     *
     * @param int $id
    */

    public function editAction($id)
    {
        $address = Addresses::findFirstById($id);
        if (!$address) {
            $address->flash->error("Services was not found");
            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }

        if ($this->request->isPost()) {

            $address->assign(array(
                'address1' => $this->request->getPost('address1'),
                'address2' => $this->request->getPost('address2'),
                'phone' => $this->request->getPost('phone'),
                'sub_id' => $this->request->getPost('subdistrict'),
                'dis_id' => $this->request->getPost('district'),
                'div_id' => $this->request->getPost('division'),
                'postcode' => $this->request->getPost('postcode'),
                'lat' => $this->request->getPost('latitude'),
                'lng' => $this->request->getPost('longitude')
            ));

            if (!$address->save()) {
                $this->flash->error($address->getMessages());
            }
            else {

                $this->flash->success("Address was update successfully");
                return $this->response->redirect("addresses");
            }
        }

        $this->view->address = $address;

        $this->view->form = new AddressesForm($address, array(
            'edit' => true
        ));
    }

    /**
     * Deletes a address
     *
     * @param int $id
     */
    public function deleteAction($id)
    {
        $address = Addresses::findFirstById($id);
        if (!$address) {

            $this->flash->error("Office was not found");

            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }

        if (!$address->delete()) {
            $this->flash->error($address->getMessages());
        } else {
            $this->flash->success("Service was deleted");
        }

        return $this->dispatcher->forward(array(
            'action' => 'index'
        ));
    }
   /*
   * Find district
  */

    public function getDistrictAction()
    {
        $this->view->disable();
        $childs = array();
        if (($this->request->isPost()) && ($this->request->isAjax() == true)) {
            $divId = $this->request->getQuery("ld", "int");
            $tmp = array();
            if ($divId) {
                $tmp = Districts::find("div_id=" . $divId);
            }

            foreach ($tmp as $t) {

                $childs[] = array('id' => $t->id, 'name' => $t->name);

            }
        }
        //        var_dump($childs);
        $response = new \Phalcon\Http\Response();
        $response->setContentType('application/json', 'UTF-8');
        $response->setContent(json_encode($childs));
        return $response;
    }

    public function getSubDistrictAction()
    {
        $this->view->disable();
        $childs = array();
        if (($this->request->isPost()) && ($this->request->isAjax() == true)) {
            $disId = $this->request->getQuery("ld", "int");
            $tmp = array();
            if ($disId) {
                $tmp = Subdistricts::find("dis_id=" . $disId);
            }

            foreach ($tmp as $t) {

                $childs[] = array('id' => $t->id, 'name' => $t->name);

            }
        }
        //        var_dump($childs);
        $response = new \Phalcon\Http\Response();
        $response->setContentType('application/json', 'UTF-8');
        $response->setContent(json_encode($childs));
        return $response;
    }
}