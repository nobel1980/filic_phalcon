<?php
namespace Filic\Controllers;

use Phalcon\Tag;
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Filic\Forms\NoticesForm;
use Filic\Models\Notices;


/**
 * Filic\Controllers\NewsController
 * CRUD to manage News
 */
class NoticesController extends ControllerBase
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
        $notice= Notices::find();

        $paginator = new Paginator(array(
            "data" => $notice,
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
        $this->view->form = new NoticesForm(Null);

        if ($this->request->isPost()) {
            $notice = new Notices();
            $notice->assign(array(
                'title' => $this->request->getPost('title', 'striptags'),
                'description' => $this->request->getPost('description'),
                'notice_date' => $this->request->getPost('notice_date'),
                'isHome' => $this->request->getPost('isHome'),
                'isActive' => $this->request->getPost('isActive')
            ));

            //add image
            if ($this->request->hasFiles() == true) {
                $baseLocation = 'files/Notices/';


                // Print the real file names and sizes
                foreach ($this->request->getUploadedFiles() as $file) {
                    $unique_filename = $this->get_random_filename();
                    $news->size = $file->getSize();
                    $news->original_name = $file->getName();
                    $news->file_name = $unique_filename;
                    $news->extension = $file->getExtension();
                }

                if (!$notice->save()) {
                    $this->flash->error($news->getMessages());
                } else {
                    $file->moveTo($baseLocation . $unique_filename . "." . $file->getExtension());

                    $this->flash->success("News was created successfully");
                    return $this->response->redirect("notices");
                }
            }
        }
    }

    /**
     * Saves the news from the 'edit' action
     */
    public function editAction($id)
    {
        $notice = Notices::findFirstById($id);
        if (!$notice) {
            $this->flash->error("Notice was not found");
            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }

        if ($this->request->isPost()) {

            $notice->assign(array(
                'title' => $this->request->getPost('title', 'striptags'),
                'description' => $this->request->getPost('description'),
                'notice_date' => $this->request->getPost('notice_date'),
                'isHome' => $this->request->getPost('isHome'),
                'isActive' => $this->request->getPost('isActive')
            ));

            //add image
            if ($this->request->hasFiles() == true) {
                $baseLocation = 'files/Notices/';

                // Print the real file names and sizes
                foreach ($this->request->getUploadedFiles() as $file) {
                    $unique_filename = $this->get_random_filename();
                    $notice->size = $file->getSize();
                    $notice->original_name = $file->getName();
                    $notice->file_name = $unique_filename;
                    $notice->extension = $file->getExtension();
                }

                if (!$notice->save()) {
                    $this->flash->error($director->getMessages());
                } else {
                    $file->moveTo($baseLocation . $unique_filename . "." . $file->getExtension());

                    $this->flash->success("Director profile was update successfully");
                    return $this->response->redirect("notices");
                }
            }
        }

        $this->view->notice = $notice;

        $this->view->form = new NoticesForm($notice, array(
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
        $notice = Notices::findFirstById($id);
        if (!$notice) {
            $this->flash->error("User was not found");
            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }

        if (!$notice->delete()) {
            $this->flash->error($notice->getMessages());
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
