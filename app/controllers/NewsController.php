<?php
namespace Filic\Controllers;

use Phalcon\Tag;
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Filic\Forms\NewsForm;
use Filic\Models\News;



/**
 * Filic\Controllers\NewsController
 * CRUD to manage News
 */
class NewsController extends ControllerBase
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
        $news= News::find();

        $paginator = new Paginator(array(
            "data" => $news,
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
        $this->view->form = new NewsForm(Null);

        if ($this->request->isPost()) {
            $news = new News();
            $news->assign(array(
                'title' => $this->request->getPost('title', 'striptags'),
                'description' => $this->request->getPost('description'),
                'news_date' => $this->request->getPost('news_date'),
                'isHome' => $this->request->getPost('isHome'),
                'isActive' => $this->request->getPost('isActive')
            ));

            //add image
            if ($this->request->hasFiles() == true) {
                $baseLocation = 'files/News/';


                // Print the real file names and sizes
                foreach ($this->request->getUploadedFiles() as $file) {
                    $unique_filename = $this->get_random_filename();
                    $news->size = $file->getSize();
                    $news->original_name = $file->getName();
                    $news->file_name = $unique_filename;
                    $news->extension = $file->getExtension();
                }

                if (!$news->save()) {
                    $this->flash->error($news->getMessages());
                } else {
                    $file->moveTo($baseLocation . $unique_filename . "." . $file->getExtension());

                    $this->flash->success("News was created successfully");
                    return $this->response->redirect("news");
                }
            }
        }
    }

    /**
     * Saves the news from the 'edit' action
     */
    public function editAction($id)
    {
        $news = News::findFirstById($id);

        if (!$news) {
            $this->flash->error("News was not found");
            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }

        if ($this->request->isPost()) {

            $news->assign(array(
                'title' => $this->request->getPost('title', 'striptags'),
                'description' => $this->request->getPost('description'),
                'news_date' => $this->request->getPost('news_date'),
                'isHome' => $this->request->getPost('isHome'),
                'isActive' => $this->request->getPost('isActive')

            ));

            //add image
            if ($this->request->hasFiles(true)) {
                //var_dump($this->request->hasFiles());exit;
                $baseLocation = 'files/News/';

                // Print the real file names and sizes
                foreach ($this->request->getUploadedFiles() as $file) {
                    $unique_filename = $this->get_random_filename();
                    $news->size = $file->getSize();
                    $news->original_name = $file->getName();
                    $news->file_name = $unique_filename;
                    $news->extension = $file->getExtension();
                }

                if (!$news->save()) {
                    $this->flash->error($news->getMessages());
                } else {
                    $file->moveTo($baseLocation . $unique_filename . "." . $file->getExtension());

                    $this->flash->success("News  was update successfully");
                    return $this->response->redirect("news");
                }
            }
        }

        $this->view->news = $news;

        $this->view->form = new NewsForm($news, array(
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
        $news = News::findFirstById($id);
        if (!$news) {
            $this->flash->error("User was not found");
            return $this->dispatcher->forward(array(
                'action' => 'index'
            ));
        }

        if (!$news->delete()) {
            $this->flash->error($news->getMessages());
        } else {
            $this->flash->success("News was deleted");
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
