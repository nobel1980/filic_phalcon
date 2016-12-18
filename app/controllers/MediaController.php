<?php
namespace Filic\Controllers;

use Filic\Models\News;

/**
 * Display the "About" page.
 */
class mediaController extends ControllerBase
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
        $news = news::find();
        $this->view->news = $news;
    }

    public function detailsAction($id)
    {
        $news = news::findFirstById($id);
        $this->view->news = $news;
    }

    public function newNeventAction()
    {

    }
}
