<?php
namespace Filic\Controllers;

use Filic\Models\News;

/**
 * Display the "About" page.
 */
class digitalServicesController extends ControllerBase
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
    }

    public function epaymentAction()
    {
    }

    public function smsAction()
    {
    }
}
