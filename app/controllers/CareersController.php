<?php
namespace Filic\Controllers;
use Filic\Models\Pages;
use Filic\Models\News;
/**
 * Display the "About" page.
 */
class careersController extends ControllerBase
{

    /**
     * Default action. Set the public layout (layouts/public.volt)
     */
    public function initialize()
    {
        $this->view->setTemplateBefore('public');
        $news = news::find();
        $this->view->news = $news;
    }
    public function indexAction()
    {
        $career= Pages::findFirst('id=7');
        $this->view->career = $career;
    }
}
