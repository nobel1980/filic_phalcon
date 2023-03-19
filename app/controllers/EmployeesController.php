<?php
namespace Filic\Controllers;

use Phalcon\Tag;
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Filic\Forms\EmployeesForm;
use Filic\Models\Employees;



/**
 * Filic\Controllers\EmployeesController
 * CRUD to manage Employee for Branch location
 */
class EmployeesController extends ControllerBase
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
        $employee= Employees::find();

        $paginator = new Paginator(array(
            "data" => $employee,
            "limit" => 10,
            "page" => $numberPage
        ));

        $this->view->page = $paginator->getPaginate();
    }


    /**
     * Creates a Employee
     */
    public function createAction()
    {
        if ($this->request->isPost()) {

            $employee = new Incharges();
            $employee->assign(array(
                'name' => $this->request->getPost('name', 'striptags'),
                'emp_id' => $this->request->getPost('emp_id', 'int'),
                'designation_id' => $this->request->getPost('designation'),
                'designation_code' => $this->request->getPost('designation_code', 'int'),
                'mobile' => $this->request->getPost('mobile'),
                'phone' => $this->request->getPost('phone'),
                'email' => $this->request->getPost('email')
            ));

            if (!$employee->save()) {
                $this->flash->error($employee->getMessages());
            } else {

                $this->flash->success("Employee was created successfully");
                return $this->response->redirect("employees");

                //Tag::resetInput();
            }
        }

        $this->view->form = new EmployeesForm(Null);
    }

    /**
     * Saves the incharge from the 'edit' action
     */
    public function editAction($id)
    {
        $employee = Employees::findFirstById($id);
        if (!$employee) {
            $this->flash->error("Employee was not found");
            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }

        if ($this->request->isPost()) {

            $employee->assign(array(
                'name' => $this->request->getPost('name', 'striptags'),
                'emp_id' => $this->request->getPost('emp_id', 'int'),
                'designation_id' => $this->request->getPost('designation'),
                'designation_code' => $this->request->getPost('designation_code', 'int'),
                'mobile' => $this->request->getPost('mobile'),
                'phone' => $this->request->getPost('phone'),
                'email' => $this->request->getPost('email')

            ));

            if (!$employee->save()) {
                $this->flash->error($employee->getMessages());
            } else {

                $this->flash->success("Employee was updated successfully");

                Tag::resetInput();
            }
        }

        $this->view->employee = $employee;

        $this->view->form = new EmployeesForm($employee, array(
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
        $employee = Employees::findFirstById($id);
        if (!$employee) {
            $this->flash->error("Employee was not found");
            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }

        if (!$employee->delete()) {
            $this->flash->error($employee->getMessages());
        } else {
            $this->flash->success("Employee was deleted");
        }

        return $this->dispatcher->forward(array(
            'action' => 'index'
        ));
    }
}
