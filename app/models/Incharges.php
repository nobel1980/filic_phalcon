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
     * @var string
     */
    public $name;

    /**
     *
     * @var integer
     */
    public $designation;

    /**
     *
     * @var integer
     */
    public $title;

    /**
     *
     * @var string
     */
    public $profile;

    /**
     *
     * @var string
     */
    public $email;

    /**
     *
     * @var string
     */
    public $original_name;

    /**
     *
     * @var string
     */
    public $file_name;

    /**
     *
     * @var string
     */
    public $extension;

    /**
     *
     * @var int
     */
    public $size;

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