<?php
namespace Filic\Controllers;
use Filic\Models\Pages;

/**
 * Display the "About" page.
 */
class allWinnerController extends ControllerBase
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
        $winner= Pages::findFirst('id=6');
        $this->view->winner = $winner;
    }
}
