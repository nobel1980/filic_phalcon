<?php
namespace Filic\Controllers;

use Filic\Models\Offices;
use Filic\Models\Addresses;

/**
 * Display the "Office Information" page.
 */
class OfficeInformationController extends ControllerBase
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
        $office = offices::find();
        $this->view->office = $office;

        $address = addresses::find();
        $this->view->address = $address;

    }

    public function serviceCenterAction()
    {
        $office = offices::find();
        $this->view->office = $office;

        $address = addresses::find();
        $this->view->address = $address;
    }

    public function zonalAction()
    {
        $office = offices::find();
        $this->view->office = $office;

        $address = addresses::find();
        $this->view->address = $address;
    }

    public function newAction()
    {

    }
}
