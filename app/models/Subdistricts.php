<?php

namespace Filic\Models;

use Phalcon\Mvc\Model;



class Subdistricts extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var string
     */
    public $id;

    /**
     *
     * @var string
     */
    public $div_id;

    /**
     *
     * @var string
     */
    public $name_bn;

    /**
     *
     * @var string
     */
    public $name;

    /**
     *
     * @var integer
     */
    public $visible;

    public function initialize()
    {
        $this->setConnectionService('dbMysql');

        $this->hasMany('id',  __NAMESPACE__ . '\Addresses', 'sub_id', array(
            'alias' => 'address',
            'foreignKey' => array(
                'message' => 'Subdistrict cannot be deleted because it\'s used on address'
            )
        ));
    }
}
