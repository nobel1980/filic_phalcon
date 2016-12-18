<?php
namespace Filic\Models;

use Phalcon\Mvc\Model;


class Notices extends Model
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
     * @var integer
     */
    public $notice_date;

    /**
     *
     * @var integer
     */
    public $isHome;

    /**
     *
     * @var integer
     */
    public $isActive;

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
    public $created_date;

    public function initialize()
    {
        $this->setConnectionService('dbMysql');

    }
}