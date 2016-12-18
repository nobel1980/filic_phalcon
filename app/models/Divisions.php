<?php

namespace Filic\Models;

use Phalcon\Mvc\Model;



class Divisions extends \Phalcon\Mvc\Model
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
    public $name_bn;

    /**
     *
     * @var string
     */
    public $name;

    public function initialize()
    {
        $this->setConnectionService('dbMysql');

        $this->hasMany('id',  __NAMESPACE__ . '\Addresses', 'div_id', array(
            'alias' => 'address',
            'foreignKey' => array(
                'message' => 'Division cannot be deleted because it\'s used on address'
            )
        ));
    }
}
