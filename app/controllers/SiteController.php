<?php
namespace Filic\Controllers;

/**
 * Display all "Site" pages.
 */
class AboutController extends ControllerBase
{

    /**
     * Default action. Set the public layout (layouts/public.volt)
     */
    public function indexAction()
    {
        $this->view->setTemplateBefore('public');
    }
}
