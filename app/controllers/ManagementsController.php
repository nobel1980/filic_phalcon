<?php
namespace Filic\Controllers;

use Phalcon\Tag;
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Filic\Forms\ManagementsForm;
use Filic\Models\Managements;



/**
 * Filic\Controllers\DirectorsController
 * CRUD to manage Directors
 */
class ManagementsController extends ControllerBase
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
        $management = Managements::find(array(
            "order" => "level ASC"
        ));

        $paginator = new Paginator(array(
            "data" => $management,
            "limit" => 10,
            "page" => $numberPage
        ));

        $this->view->page = $paginator->getPaginate();
    }


    /**
     * Creates a Manager
     */
    public function createAction()
    {
        $this->view->form = new ManagementsForm(Null);

        if ($this->request->isPost()) {
            $management = new Managements();
            $management->assign(array(
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
                $baseLocation = 'files/Managements/';


                // Print the real file names and sizes
                foreach ($this->request->getUploadedFiles() as $file) {
                    $unique_filename = $this->get_random_filename();
                    $management->size = $file->getSize();
                    $management->original_name = $file->getName();
                    $management->file_name = $unique_filename;
                    $management->extension = $file->getExtension();
                }

                if (!$management->save()) {
                    $this->flash->error($management->getMessages());
                } else {
                    $file->moveTo($baseLocation . $unique_filename . "." . $file->getExtension());

                    $this->flash->success("Manager profile was created successfully");
                    return $this->response->redirect("managements");
                }
            }
        }
    }

    /**
     * Saves the management from the 'edit' action
     */
    public function editAction($id)
    {
        $management = Managements::findFirstById($id);
        if (!$management) {
            $this->flash->error("Top manager was not found");
            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }

        if ($this->request->isPost()) {

            $management->assign(array(
                'name' => $this->request->getPost('name', 'striptags'),
                'profile' => $this->request->getPost('profile'),
                'mobile' => $this->request->getPost('mobile'),
                'phone' => $this->request->getPost('phone'),
                'email' => $this->request->getPost('email')

            ));

            if (!$management->save()) {
                $this->flash->error($management->getMessages());
            } else {

                $this->flash->success("Manager was updated successfully");
                //Tag::resetInput();
            }
        }

        $this->view->manager = $management;

        $this->view->form = new ManagementsForm($management, array(
            'edit' => true
        ));
    }

    /**
     * Deletes a Managements
     *
     * @param int $id
     */
    public function deleteAction($id)
    {
        $management = Managements::findFirstById($id);
        if (!$management) {
            $this->flash->error("Manager was not found");
            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }

        if (!$management->delete()) {
            $this->flash->error($management->getMessages());
        } else {
            $this->flash->success("Manager was deleted");
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

    public function sortAction()
    {
        $management = Managements::find(array(
            "order" => "level ASC"
        ));
        $this->view->manager = $management;
    }

    public function sortUpdateAction()
    {
        $i = 0;
        $manager = array();
        foreach ($this->request->getPost('level') as $key => $id) {
            $manager= Managements::findFirstById($id);

            $manager->level = $key;
            if (!$manager->save()) {
                $this->flash->error($manager->getMessages());
            } else {
                $this->flash->success("Manager was updated successfully");
            }
            $i++;
        }
    }
}
