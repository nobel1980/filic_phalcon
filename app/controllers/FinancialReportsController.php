<?php
namespace Filic\Controllers;

use Phalcon\Tag;
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Filic\Forms\FinancialReportsForm;
use Filic\Models\Files;



/**
 * Filic\Controllers\FinancialReportsController
 * CRUD to manage Financial Report
 */
class FinancialReportsController extends ControllerBase
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

        $user = $this->auth->getUser();
        $user = $user->toArray();
        $this->view->user = $user;



        $admin = $user['profilesId'];
         //var_dump($name);exit();


        if($admin !== '1'){
            return $this->response->redirect('error');
        } else {
            $numberPage = ($this->request->has('page')) ? (int)$this->request->get('page') : 1;
            $financialReport= Files::find(array(
                "order"=> "id DESC"));

            $paginator = new Paginator(array(
                "data" => $financialReport,
                "limit" => 10,
                "page" => $numberPage
            ));

            $this->view->page = $paginator->getPaginate();
        }

    }


    /**
     * Creates a Financial Reports
     */
    public function createAction()
    {
        $this->view->form = new FinancialReportsForm(Null);

        if ($this->request->isPost()) {

            $financialReport = new Files();
            $financialReport->assign(array(
                'title' => $this->request->getPost('title', 'striptags'),
                'report_quarter' => $this->request->getPost('report_quarter', 'int'),
                'report_year' => $this->request->getPost('report_year'),
                'report_type' => $this->request->getPost('report_type', 'int'),
                'category' => $this->request->getPost('category')
            ));

            //add image
            if ($this->request->hasFiles() == true) {
                $baseLocation = 'files/FinacialReports/';

                // Print the real file names and sizes
                foreach ($this->request->getUploadedFiles() as $file) {
                    $unique_filename = $this->get_random_filename();
                    $financialReport->size = $file->getSize();
                    $financialReport->original_name = $file->getName();
                    $financialReport->file_name = $unique_filename;
                    $financialReport->extension = $file->getExtension();

                }
                if (!$financialReport->save()) {
                    $this->flash->error($financialReport->getMessages());
                } else {
                    $file->moveTo($baseLocation . $unique_filename . "." . $file->getExtension());

                    $this->flash->success("Financial report was created successfully");
                    return $this->response->redirect("FinancialReports");
                }
            }
        }
    }

    /**
     * Saves the financial statement from the 'edit' action
     */
    public function editAction($id)
    {
        $financialReport = Files::findFirstById($id);

        if (!$financialReport) {
            $this->flash->error("Report was not found");
            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }
        if ($this->request->isPost()) {
            $financialReport->assign(array(
                'title' => $this->request->getPost('title', 'striptags'),
                'report_quarter' => $this->request->getPost('report_quarter', 'int'),
                'report_year' => $this->request->getPost('report_year'),
                'report_type' => $this->request->getPost('report_type', 'int'),
                'category' => $this->request->getPost('category')
            ));


            //add image
            if ($this->request->hasFiles(true)) {
                //var_dump($this->request->hasFiles());exit;
                $baseLocation = 'files/FinacialReports/';

                // Print the real file names and sizes
                foreach ($this->request->getUploadedFiles() as $file) {
                    $unique_filename = $this->get_random_filename();
                    $financialReport->size = $file->getSize();
                    $financialReport->original_name = $file->getName();
                    $financialReport->file_name = $unique_filename;
                    $financialReport->extension = $file->getExtension();
                }

                if (!$financialReport->save()) {
                    $this->flash->error($financialReport->getMessages());
                } else {
                    $file->moveTo($baseLocation . $unique_filename . "." . $file->getExtension());

                    $this->flash->success("Report was update successfully");
                    return $this->response->redirect("FinancialReports");
                }
            }
        }

        $this->view->FinancialReports = $financialReport;

        $this->view->form = new FinancialReportsForm($financialReport, array(
            'edit' => true
        ));
    }

    /**
     * Deletes a statement
     *
     * @param int $id
     */
    public function deleteAction($id)
    {
        $financialReport = Files::findFirstById($id);
        if (!$financialReport) {
            $this->flash->error("User was not found");
            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }

        if (!$financialReport->delete()) {
            $this->flash->error($financialReport->getMessages());
        } else {
            $this->flash->success("Finantial Report was deleted");
        }

        return $this->dispatcher->forward(array(
            'action' => 'index'
        ));
    }

    public function get_random_filename()
    {
        $length = 20;
        $key = '';
        $keys = array_merge(range(0, 9), range('a', 'z'));

        for ($i = 0; $i < $length; $i++) {
            $key .= $keys[array_rand($keys)];
        }

        return $key;
    }

}
