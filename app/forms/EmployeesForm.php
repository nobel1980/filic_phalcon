<?php

namespace Filic\Forms;

use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\Hidden;
use Phalcon\Forms\Element\Select;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\Email;
use Phalcon\Validation\Validator\StringLength;

use Filic\Models\Designations;


class EmployeesForm extends Form
{

    public function initialize($entity = null, $options = null)
    {
        if (isset($options['edit']) && $options['edit']) {
            $id = new Hidden('id');
        } else {
            $id = new Text('id');
        }

        $this->add($id);


        $name = new Text('name', array(
            'placeholder' => 'Employee name'
        ));
        $this->add($name);

        $emp_id = new Text('emp_id');
        $this->add($emp_id);

        $this->add(new Select('designation', Designations::find(), array(
            'using' => array('id', 'name'),
            'order' => 'id ASC',
            'useEmpty' => true,
            'emptyText' => '...',
            'emptyValue' => ''
        )));

        $designation_code = new Text('designation_code');

        $designation_code->addValidators(array(
            new PresenceOf(array(
                'message' => 'The designation code is required'
            ))
        ));

        $this->add($designation_code);

        $mobile = new Text('mobile');

        $mobile->addValidators(array(
         new StringLength(array(
             'max' => 12,
             'min' => 11,
             'messageMaximum' => 'Mobile number is too long, should be 12 digit',
             'messageMinimum' => 'Mobile number is too short, should be 11 digit'
         ))
        ));

        $this->add($mobile);

        $phone = new Text('phone');
        $this->add($phone);

        $email = new Text('email');
        $this->add($email);

    }

}