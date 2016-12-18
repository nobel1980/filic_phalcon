<?php
namespace Filic\Controllers;

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
    }
    public function indexAction()
    {

    }

    public function epaymentAction()
    {

    }
}
