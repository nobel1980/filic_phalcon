<?php
namespace Filic\Models;

use Phalcon\Mvc\Model;


class FinancialReports extends Model
{
    /**
     *
     * @var integer
     */
    public $id;

    /**
     *
     * @var integer
     */
    public $title;

    /**
     *
     * @var string
     */
    public $report_quarter;

    /**
     *
     * @var integer
     */
    public $report_year;

    /**
     *
     * @var integer
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
     * @var string
     */
    public $size;

    /**
     *
     * @var string
     */
    public $category;

    /**
     *
     * @var string
     */
    public $created_at;

    /**
     *
     * @var string
     */
    public $updated_at;

    public function initialize()
    {
        $this->setConnectionService('dbMysql');
    }

    public function beforeValidationOnCreate()
    {
        // Timestamp the confirmaton
        $this->created_at = time();
    }

    public function beforeValidationOnUpdate()
    {
        // Timestamp the Update
        $this->updated_at = time();
    }
}