<?php
namespace Filic\Models;

use Phalcon\Mvc\Model;

class Incharges extends Model
{
    /**
     *
     * @var integer
     */
    public $id;

    /**
     *
     * @var integer
     */
    public $emp_id;

    /**
     *
     * @var string
     */
    public $name;

    /**
     *
     * @var integer
     */
    public $designation_id;

    /**
     *
     * @var integer
     */
    public $designation_code;

    /**
     *
     * @var varchar
     */
    public $mobile;

    /**
     *
     * @var varchar
     */
    public $phone;

    /**
     *
     * @var varchar
     */
    public $email;

    public function validation()
    {

    }

    public function initialize()
    {
        $this->setConnectionService('dbMysql');

        $this->belongsTo('designation_id',  __NAMESPACE__ . '\Designations', 'id', array(
            'alias' => 'designation',
            'reusable' => true
        ));
    }
}