<?php

namespace Filic\Models;

use Phalcon\Mvc\Model;



class Districts extends \Phalcon\Mvc\Model
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
    /**
     *
     * @var integer
     */
    public $is_citycorporation;

    public function initialize()
    {
        $this->setConnectionService('dbMysql');

        $this->hasMany('id',  __NAMESPACE__ . '\Addresses', 'dis_id', array(
            'alias' => 'address',
            'foreignKey' => array(
                'message' => 'District cannot be deleted because it\'s used on address'
            )
        ));
    }
}
