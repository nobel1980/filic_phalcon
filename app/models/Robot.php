<?php
namespace Filic\Models;

use Phalcon\Mvc\Model;

use Phalcon\Mvc\Model\Resultset\Simple as Resultset;

class Robot extends Model
{
    public function initialize(){
        $this->setConnectionService('dbMysql');
    }
    public static function findByRawSql($sql, $params=null)
    {
    // Base model
    $robot = new Robot();

    // Execute the query
    return new Resultset(null, $robot, $robot->getReadConnection()->query($sql, $params));
    }
}