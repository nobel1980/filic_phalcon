<?php
namespace Filic\Models;

use Phalcon\Mvc\Model;


class Products extends Model
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
     * @var string
     */
    public $title_bn;

    /**
     *
     * @var string
     */
    public $description;

    /**
     *
     * @var string
     */
    public $description_bn;

    /**
     *
     * @var integer
     */
    public $parent;

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