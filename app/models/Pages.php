<?php
namespace Filic\Models;

use Phalcon\Mvc\Model;


class Pages extends Model
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
    public $title;

    /**
     *
     * @var integer
     */
    public $description;

     /**
     *
     * @var int
     */
    public $created_at;

    /**
     *
     * @var int
     */
    public $modified_at;

    public function beforeValidationOnCreate()
    {
        // Timestamp the confirmaton
        $this->created_at = time();
    }

    public function initialize()
    {
        $this->setConnectionService('dbMysql');

    }
}