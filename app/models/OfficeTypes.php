<?php
namespace Filic\Models;

use Phalcon\Mvc\Model;
use Phalcon\Mvc\Model\Validator\Uniqueness;

class OfficeTypes extends Model
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

    public function initialize()
    {
        $this->setConnectionService('dbMysql');
    }
}