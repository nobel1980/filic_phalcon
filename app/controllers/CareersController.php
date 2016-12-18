<?php
namespace Filic\Controllers;
use Filic\Models\Pages;

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
    }
    public function indexAction()
    {
        $career= Pages::findFirst('id=7');
        $this->view->career = $career;
    }
}
