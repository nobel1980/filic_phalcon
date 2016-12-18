<?php
namespace Filic\Models;

use Phalcon\Mvc\Model;
use Phalcon\Mvc\Model\Validator\Uniqueness;


class Offices extends Model
{
    /**
     *
     * @var integer
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
    public $parent_id;

    /**
     *
     * @var string
     */
    public $office_type_id;

    /**
     *
     * @var string
     */
    public $business_id;

    /**
     *
     * @var string
     */
    public $business_type;

    /**
     *
     * @var string
     */
     public $address;



    public function initialize()
    {
        $this->setConnectionService('dbMysql');

        $this->belongsTo('office_type_id',  __NAMESPACE__ . '\office_types', 'id', array(
            'alias' => 'officeType',
            'reusable' => true
        ));
    }
}