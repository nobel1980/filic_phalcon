<?php
namespace Filic\Models;

use Phalcon\Mvc\Model;

use Phalcon\Mvc\Model\Validator\Uniqueness;


class Addresses extends Model
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
    public $address1;

    /**
     *
     * @var string
     */

     public $address2;

    /**
     *
     * @var int
     */
    public $postcode;

     /**
     *
     * @var string
     */
    public $sub_id;

    /**
     *
     * @var string
     */
    public $dis_id;

    /**
     *
     * @var string
     */
    public $div_id;

    /**
     *
     * @var float
     */
    public $lat;

    /**
     *
     * @var float
     */
    public $lng;


    public function initialize()
    {
        $this->setConnectionService('dbMysql');

        $this->belongsTo('sub_id',  __NAMESPACE__ . '\subdistricts', 'id', array(
            'alias' => 'subdistrict',
            'reusable' => true
        ));

        $this->belongsTo('dis_id',  __NAMESPACE__ . '\districts', 'id', array(
            'alias' => 'district',
            'reusable' => true
        ));

        $this->belongsTo('div_id',  __NAMESPACE__ . '\Divisions', 'id', array(
            'alias' => 'division',
            'reusable' => true
        ));
    }
}