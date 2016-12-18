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


class FinancialReportsForm extends Form
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
            'placeholder' => 'Financial Statenment Title'
        ));
        $this->add($title);

        $reportQuarter = new Text('report_quarter');
        $this->add($reportQuarter);

        $this->add(new Select('report_quarter', array(
            '1' => 'First Quarter',
            '2' => 'Half Yearly',
            '3' => 'Third Quarter',
            '4' => 'Yearly'
        )));

        $this->add(new Select('report_year', array(
            '2020' => '2020',
            '2019' => '2019',
            '2018' => '2018',
            '2017' => '2017',
            '2016' => '2016',
            '2015' => '2015',
            '2014' => '2014',
            '2013' => '2013',
            '2012' => '2012',
            '2011' => '2011',
            '2010' => '2010'
        )));

        $reportType = new Text('report_type');
        $this->add($reportType);

        $originalName = new Text('original_name');
        $this->add($originalName);

        $createdAt = new Text('created_at');
        $this->add($createdAt);

        $updatedAt = new Text('updated_at');
        $this->add($updatedAt);

    }

}