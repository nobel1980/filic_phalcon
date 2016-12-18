<?php
namespace Filic\Models;

use Phalcon\Mvc\Model;


class Files extends Model
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
    public $report_quarter;

    /**
     *
     * @var integer
     */
    public $report_year;

    /**
     *
     * @var string
     */
    public $report_type;

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
    public $category;

    /**
     *
     * @var date
     */
    public $created_at;

    /**
     *
     * @var date
     */
    public $updated_at;

    public function initialize()
    {
        $this->setConnectionService('dbMysql');

    }

    public function beforeValidationOnCreate()
    {
        // Timestamp the confirmation
        $this->created_at = time();
    }

    public function beforeValidationOnUpdate()
    {
        // Timestamp the confirmation
        $this->updated_at = time();
    }
}