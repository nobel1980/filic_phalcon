<?php

namespace Filic\Forms;

use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\Check;
use Phalcon\Forms\Element\Hidden;
use Phalcon\Forms\Element\Select;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\Email;

use Filic\Models\offices;
use Filic\Models\OfficeTypes;
use Filic\Models\Divisions;
use Filic\Models\Districts;
use Filic\Models\Subdistricts;


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

        $address1 = new Text('address1');
        $this->add($address1);

        $address2 = new Text('address2');
        $this->add($address2);

        $postcode = new Text('postcode');
        $this->add($postcode);

        $phone = new Text('phone');
        $this->add($phone);

        $exist = new Check('exist',array('value'  => 1));
        $this->add($exist);

        $this->add(new Select('division', Divisions::find(), array(
            'using' => array('id', 'name'),
            'useEmpty' => true,
            'emptyText' => '--Please, choose one--',
            'emptyValue' => '',
            'onchange' => "showDistrict(this.value,'district')"
        )));


        $this->add(new Select('district', Districts::find(), array(
            'using' => array('id', 'name'),
            'useEmpty' => true,
            'emptyText' => '--Please, choose one--',
            'emptyValue' => '',
            'onchange' => "showSubDistrict(this.value,'subdistrict')"
        )));

        $this->add(new Select('subdistrict', Subdistricts::find(), array(
            'using' => array('id', 'name'),
            'order' => 'dis_id',
            'useEmpty' => true,
            'emptyText' => '--Please, choose one--'
        )));

        $addressId = new Text('addressId');
        $this->add($addressId);

        $lat = new Text('latitude');
        $this->add($lat);

        $lng = new Text('longitude');
        $this->add($lng);

        $phone = new Text('phone');
        $this->add($phone);

        $email = new Text('email');
        $this->add($email);

    }

}