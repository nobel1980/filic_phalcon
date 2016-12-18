<?php

namespace Filic\Forms;

use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\Hidden;
use Phalcon\Forms\Element\Select;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\Email;

use Filic\Models\offices;
use Filic\Models\OfficeTypes;


class OfficesForm extends Form
{

    public function initialize($entity = null, $options = null)
    {
        if (isset($options['edit']) && $options['edit']) {
            $id = new Hidden('id');
        } else {
            $id = new Text('id');
        }

        $this->add($id);
/*
        $this->add(new Select('business', array(
            '1' => 'Ekok',
            '2' => 'Sarbojonin'
        )));*/

        $name = new Text('name', array(
            'placeholder' => 'Offices name'
        ));
        $this->add($name);

        $this->add(new Select('officetype', OfficeTypes::find(), array(
            'using' => array('id', 'name'),
            'useEmpty' => false,
            'onchange' => "showParent(this.value,'parent')"
        )));

        $this->add(new Select('parent', offices::find(), array(
            'using' => array('id', 'name'),
            'useEmpty' => true,
            'emptyText' => '...',
            'emptyValue' => ''
        )));

        $bid = new Text('businessId');
        $this->add($bid);
    }

}