<?php

namespace Filic\Models;

use Phalcon\Mvc\Model;



class Designations extends \Phalcon\Mvc\Model
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
    public $name;

    /**
     *
     * @var string
     */
    public $description;


    public function initialize()
    {
        $this->setConnectionService('dbMysql');

        $this->hasMany('id',  __NAMESPACE__ .'\Incharges', 'designation_id', array(
            'alias' => 'designation',
            'foreignKey' => array(
                'message' => 'Designation cannot be deleted because it\'s used on Incharges'
            )
        ));
    }
}
