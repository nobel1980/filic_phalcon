<?php

namespace Filic\Forms;

use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\TextArea;
use Phalcon\Forms\Element\Date;
use Phalcon\Forms\Element\Hidden;
use Phalcon\Forms\Element\Check;
use Phalcon\Forms\Element\File;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\StringLength;


class NewsForm extends Form
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
            'placeholder' => 'News title'
        ));
        $this->add($title);

        $description = new TextArea('description');
        $this->add($description);

        $active = new Check('active',array('value'  => 1));
        $this->add($active);

        $home = new Check('home',array('value'  => 1));
        $this->add($home);

        $news_date = new Date('news_date', array('class' => 'form-control'));
        $this->add($news_date);
    }

}