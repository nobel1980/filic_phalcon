<?php

namespace Filic\Forms;

use Phalcon\Forms\Form;
use Phalcon\Forms\Element\Text;
use Phalcon\Forms\Element\Hidden;
use Phalcon\Forms\Element\Select;
use Phalcon\Forms\Element\TextArea;
use Phalcon\Validation\Validator\PresenceOf;
use Phalcon\Validation\Validator\Email;

use Filic\Models\Divisions;
use Filic\Models\Districts;
use Filic\Models\Subdistricts;


class AddressesForm extends Form
{

    public function initialize($entity = null, $options = null)
    {
        if (isset($options['edit']) && $options['edit']) {
            $id = new Hidden('id');
        } else {
            $id = new Text('id');
        }

        $this->add($id);


        $address1 = new Text('address1');
        $this->add($address1);

        $address2 = new Text('address2');
        $this->add($address2);

        $postcode = new Text('postcode');
        $this->add($postcode);

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

        $lat = new Text('latitude');
        $this->add($lat);

        $lng = new Text('longitude');
        $this->add($lng);
    }

}