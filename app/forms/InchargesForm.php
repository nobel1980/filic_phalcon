<?php

namespace Filic\Forms;

use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\TextArea;
use Phalcon\Forms\Element\Hidden;
use Phalcon\Forms\Element\Select;
use Phalcon\Forms\Element\File;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\Email;
use Phalcon\Validation\Validator\StringLength;

use Filic\Models\Designations;


class InchargesForm extends Form
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
            'placeholder' => 'Incharge name'
        ));
        $this->add($name);

        $title = new Text('title', array(
            'placeholder' => 'e.g. qualification'
        ));
        $this->add($title);

        $designation = new Text('designation');
        $this->add($designation);


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

        $profile = new TextArea('profile', array(
            'placeholder' => 'Profile Description'
        ));

        $this->add($profile);

    }

}