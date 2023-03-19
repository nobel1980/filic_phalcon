<?php
namespace Filic\Controllers;
use Filic\Models\Pages;
use Filic\Models\News;

/**
 * Display the "About" page.
 */
class WinnerController extends ControllerBase
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
        $winner= Pages::findFirst('id=6');
        $this->view->winner = $winner;
    }

    public function HajjAction()
    {
    }

    public function TourAction()
    {
    }
}
