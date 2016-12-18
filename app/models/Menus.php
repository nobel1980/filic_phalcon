<?php
namespace Filic\Models;

use Phalcon\Mvc\Model;
use Phalcon\Mvc\Model\Validator\Uniqueness;


class Menus extends Model
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
     * @var int
     */
    public $parent;
    /**
     *
     * @var int
     */
    public $isMain;

    /**
     *
     * @var int
     */
    public $level;



    public function initialize()
    {
        $this->setConnectionService('dbMysql');

    }
}