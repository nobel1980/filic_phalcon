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


class ProductsForm extends Form
{

    public function initialize($entity = null, $options = null)
    {
        if (isset($options['edit']) && $options['edit']) {
            $id = new Hidden('id');
        } else {
            $id = new Text('id');
        }

        $this->add($id);


        $title = new Text('title', array(
            'placeholder' => 'name in English'
        ));
        $this->add($title);

        $title_bd = new Text('title_bn', array(
            'placeholder' => 'Name in Bengali'
        ));
        $this->add($title_bd);

        $description = new TextArea('description', array(
            'placeholder' => 'Product detail in English'
        ));
        $this->add($description);

        $description_bd = new TextArea('description_bn', array(
            'placeholder' => 'Product detail in Bengali'
        ));
        $this->add($description_bd);

        $this->add(new Select('parent', array(
            '1' => 'Ekok',
            '2' => 'Sarbojonin',
            '3' => 'Group'
        )));

    }

}