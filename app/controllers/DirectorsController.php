<?php
namespace Filic\Controllers;

use Phalcon\Tag;
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Filic\Forms\DirectorsForm;
use Filic\Models\Directors;



/**
 * Filic\Controllers\DirectorsController
 * CRUD to manage Directors
 */
class DirectorsController extends ControllerBase
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
        $director= Directors::find();

        $paginator = new Paginator(array(
            "data" => $director,
            "limit" => 10,
            "page" => $numberPage
        ));

        $this->view->page = $paginator->getPaginate();
    }


    /**
     * Creates a Director
     */
    public function createAction()
    {
        $this->view->form = new DirectorsForm(Null);

        if ($this->request->isPost()) {
            $director = new Directors();
            $director->assign(array(
                'name' => $this->request->getPost('name', 'striptags'),
                'profile' => $this->request->getPost('profile'),
                'designation' => $this->request->getPost('designation'),
                'title' => $this->request->getPost('title'),
                'mobile' => $this->request->getPost('mobile'),
                'phone' => $this->request->getPost('phone'),
                'email' => $this->request->getPost('email')
            ));

            //add image
            if ($this->request->hasFiles() == true) {
                $baseLocation = 'files/Directors/';


                // Print the real file names and sizes
                foreach ($this->request->getUploadedFiles() as $file) {
                    $unique_filename = $this->get_random_filename();
                    $director->size = $file->getSize();
                    $director->original_name = $file->getName();
                    $director->file_name = $unique_filename;
                    $director->extension = $file->getExtension();
                }

                if (!$director->save()) {
                    $this->flash->error($director->getMessages());
                } else {
                    $file->moveTo($baseLocation . $unique_filename . "." . $file->getExtension());

                    $this->flash->success("Director profile was created successfully");
                    return $this->response->redirect("directors");
                }
            }
        }

        //$this->view->form = new DirectorsForm(Null);
    }

    /**
     * Saves the director from the 'edit' action
     */
    public function editAction($id)
    {
        $director = Directors::findFirstById($id);
        if (!$director) {
            $this->flash->error("Director was not found");
            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }

        if ($this->request->isPost()) {

            $director->assign(array(
                'name' => $this->request->getPost('name', 'striptags'),
                'profile' => $this->request->getPost('profile'),
                'designation' => $this->request->getPost('designation'),
                'title' => $this->request->getPost('title'),
                'mobile' => $this->request->getPost('mobile'),
                'phone' => $this->request->getPost('phone'),
                'email' => $this->request->getPost('email')

            ));

            //add image
            if ($this->request->hasFiles() == true) {
                $baseLocation = 'files/Directors/';

                // Print the real file names and sizes
                foreach ($this->request->getUploadedFiles() as $file) {
                    $unique_filename = $this->get_random_filename();
                    $director->size = $file->getSize();
                    $director->original_name = $file->getName();
                    $director->file_name = $unique_filename;
                    $director->extension = $file->getExtension();
                }

                if (!$director->save()) {
                    $this->flash->error($director->getMessages());
                } else {
                    $file->moveTo($baseLocation . $unique_filename . "." . $file->getExtension());

                    $this->flash->success("Director profile was update successfully");
                    return $this->response->redirect("directors");
                }
            }
        }

        $this->view->director = $director;

        $this->view->form = new DirectorsForm($director, array(
            'edit' => true
        ));
    }

    /**
     * Deletes a Director profile
     *
     * @param int $id
     */
    public function deleteAction($id)
    {
        $director = Directors::findFirstById($id);
        if (!$director) {
            $this->flash->error("User was not found");
            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }

        if (!$director->delete()) {
            $this->flash->error($director->getMessages());
        } else {
            $this->flash->success("Director was deleted");
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
