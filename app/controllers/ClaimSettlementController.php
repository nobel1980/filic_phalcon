<?php
namespace Filic\Controllers;

use Filic\Models\News;

/**
 * Display the default index page.
 */
class ClaimSettlementController extends ControllerBase
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

}
