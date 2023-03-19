<?php
namespace Filic\Controllers;

use Filic\Models\Subdistricts;
use Filic\Models\Districts;
use Filic\Models\Divisions;
use Filic\Models\Offices;
use Filic\Models\OfficeTypes;
use Filic\Models\Addresses;
use Filic\Models\Robot;
use Filic\Models\Employees;

/**
 * Display the "Office Information" page.
 */
class OfficeInformationController extends ControllerBase
{

    /**
     * Default action. Set the public layout (layouts/public.volt)
     */
    public function initialize()
    {
        $this->view->setTemplateBefore('public');
    }
    public function indexAction()
    {
        $this->persistent->conditions = null;

        foreach(OfficeTypes::find() as $ot)
        {
            $type[$ot->id]['id'] = $ot->id;
            $type[$ot->id]['name'] = $ot->name;
        }

        foreach(Subdistricts::find() as $sub)
        {
            $subDistrict[$sub->id]['id'] = $sub->id;
            $subDistrict[$sub->id]['name'] = $sub->name;
        }

        foreach(Districts::find() as $dis)
        {
            $district[$dis->id]['id'] = $dis->id;
            $district[$dis->id]['name'] = $dis->name;
        }

        foreach(Divisions::find() as $div)
        {
            $division[$div->id]['id'] = $div->id;
            $division[$div->id]['name'] = $div->name;
        }


        foreach(Addresses::find() as $add)
        {
            $address[$add->id]['id'] = $add->id;
            $address[$add->id]['address1'] = $add->address1;
            $address[$add->id]['address2'] = $add->address2;
            $address[$add->id]['sub_id'] = $add->sub_id;
            $address[$add->id]['dis_id'] = $add->dis_id;
            $address[$add->id]['div_id'] = $add->div_id;

            $address[$add->id]['subdistrict_name'] = $subDistrict[$add->sub_id]['name'];
            $address[$add->id]['district_name'] = $district[$add->dis_id]['name'];
            $address[$add->id]['division_name'] = $division[$add->div_id]['name'];
        }

        foreach(offices::find() as $off)
        {
            $office[$off->id]['id'] = $off->id;
            $office[$off->id]['name'] = $off->name;
            $office[$off->id]['offTypeId'] = $off->office_type_id;
            $office[$off->id]['phone'] = $off->phone;
            $office[$off->id]['email'] = $off->email;
            $office[$off->id]['officeType'] = $type[$off->office_type_id]['name'];
            $office[$off->id]['address1'] = $address[$off->address_id]['address1'];
            $office[$off->id]['address2'] = $address[$off->address_id]['address2'];
            $office[$off->id]['subdistrict'] = $address[$off->address_id]['subdistrict_name'];
            $office[$off->id]['district'] = $address[$off->address_id]['district_name'];
            $office[$off->id]['division'] = $address[$off->address_id]['division_name'];
            $office[$off->id]['countType'] = $this->countType($off->office_type_id);
        }
        //echo "<pre>"; print_r($office);exit;

        //$office = offices::find();
        $this->view->office = $office;
        $this->view->type = $type;
        $address = addresses::find();
        $this->view->address = $address;
    }

    public function countType($otid)
    {
        $tmp = array();
        if ($otid) {
            $tmp = Offices::find("office_type_id=" . $otid);
        }
        return count($tmp);
    }

    public function newAction()
    {
        $this->persistent->conditions = null;

        foreach(OfficeTypes::find() as $ot)
        {
            $type[$ot->id]['id'] = $ot->id;
            $type[$ot->id]['name'] = $ot->name;
        }

        foreach(Subdistricts::find() as $sub)
        {
            $subDistrict[$sub->id]['id'] = $sub->id;
            $subDistrict[$sub->id]['name'] = $sub->name;
        }

        foreach(Districts::find() as $dis)
        {
            $district[$dis->id]['id'] = $dis->id;
            $district[$dis->id]['name'] = $dis->name;
        }

        foreach(Divisions::find() as $div)
        {
            $division[$div->id]['id'] = $div->id;
            $division[$div->id]['name'] = $div->name;
        }


        foreach(Addresses::find() as $add)
        {
            $address[$add->id]['id'] = $add->id;
            $address[$add->id]['address1'] = $add->address1;
            $address[$add->id]['address2'] = $add->address2;
            $address[$add->id]['sub_id'] = $add->sub_id;
            $address[$add->id]['dis_id'] = $add->dis_id;
            $address[$add->id]['div_id'] = $add->div_id;

            $address[$add->id]['subdistrict_name'] = $subDistrict[$add->sub_id]['name'];
            $address[$add->id]['district_name'] = $district[$add->dis_id]['name'];
            $address[$add->id]['division_name'] = $division[$add->div_id]['name'];
        }

        foreach(offices::find() as $off)
        {
            $office[$off->id]['id'] = $off->id;
            $office[$off->id]['name'] = $off->name;
            $office[$off->id]['offTypeId'] = $off->office_type_id;
            $office[$off->id]['phone'] = $off->phone;
            $office[$off->id]['email'] = $off->email;
            $office[$off->id]['officeType'] = $type[$off->office_type_id]['name'];
            $office[$off->id]['address1'] = $address[$off->address_id]['address1'];
            $office[$off->id]['address2'] = $address[$off->address_id]['address2'];
            $office[$off->id]['subdistrict'] = $address[$off->address_id]['subdistrict_name'];
            $office[$off->id]['district'] = $address[$off->address_id]['district_name'];
            $office[$off->id]['division'] = $address[$off->address_id]['division_name'];
            $office[$off->id]['countType'] = $this->countType($off->office_type_id);
        }
        //echo "<pre>"; print_r($office);exit;

        //$office = offices::find();
        $this->view->office = $office;
        $this->view->type = $type;
        $address = addresses::find();
        $this->view->address = $address;
    }

    public function locationWiseAction()
    {
        $this->persistent->conditions = null;

        foreach(OfficeTypes::find() as $ot)
        {
            $type[$ot->id]['id'] = $ot->id;
            $type[$ot->id]['name'] = $ot->name;
        }

        foreach(Subdistricts::find() as $sub)
        {
            $subDistrict[$sub->id]['id'] = $sub->id;
            $subDistrict[$sub->id]['name'] = $sub->name;
        }

        foreach(Districts::find() as $dis)
        {
            $district[$dis->id]['id'] = $dis->id;
            $district[$dis->id]['name'] = $dis->name;
        }

        foreach(Divisions::find() as $div)
        {
            $division[$div->id]['id'] = $div->id;
            $division[$div->id]['name'] = $div->name;
        }


        foreach(Addresses::find() as $add)
        {
            $address[$add->id]['id'] = $add->id;
            $address[$add->id]['address1'] = $add->address1;
            $address[$add->id]['address2'] = $add->address2;
            $address[$add->id]['sub_id'] = $add->sub_id;
            $address[$add->id]['dis_id'] = $add->dis_id;
            $address[$add->id]['div_id'] = $add->div_id;

            $address[$add->id]['subdistrict_name'] = $subDistrict[$add->sub_id]['name'];
            $address[$add->id]['district_name'] = $district[$add->dis_id]['name'];
            $address[$add->id]['division_name'] = $division[$add->div_id]['name'];
        }

        foreach(offices::find() as $off)
        {
            $office[$off->id]['id'] = $off->id;
            $office[$off->id]['name'] = $off->name;
            $office[$off->id]['offTypeId'] = $off->office_type_id;
            $office[$off->id]['phone'] = $off->phone;
            $office[$off->id]['email'] = $off->email;
            $office[$off->id]['officeType'] = $type[$off->office_type_id]['name'];
            $office[$off->id]['address1'] = $address[$off->address_id]['address1'];
            $office[$off->id]['address2'] = $address[$off->address_id]['address2'];

            $office[$off->id]['sub_id'] = $address[$off->address_id]['sub_id'];
            $office[$off->id]['dis_id'] = $address[$off->address_id]['dis_id'];
            $office[$off->id]['div_id'] = $address[$off->address_id]['div_id'];

            $office[$off->id]['subdistrict'] = $address[$off->address_id]['subdistrict_name'];
            $office[$off->id]['district'] = $address[$off->address_id]['district_name'];
            $office[$off->id]['division'] = $address[$off->address_id]['division_name'];
            $office[$off->id]['countType'] = $this->countType($off->office_type_id);
        }
       // echo "<pre>"; print_r($office);exit;

        //$office = offices::find();
        $this->view->office = $office;
        $this->view->type = $type;

        $this->view->division = $division;
        $this->view->district = $district;
        $this->view->subdis = $subDistrict;

        $address = addresses::find();
        $this->view->address = $address;
    }

    public function areaWiseAction()
    {
        $this->persistent->conditions = null;

        foreach(OfficeTypes::find() as $ot)
        {
            $type[$ot->id]['id'] = $ot->id;
            $type[$ot->id]['name'] = $ot->name;
        }

        foreach(Subdistricts::find() as $sub)
        {
            $subDistrict[$sub->id]['id'] = $sub->id;
            $subDistrict[$sub->id]['name'] = $sub->name;
        }

        foreach(Districts::find() as $dis)
        {
            $district[$dis->id]['id'] = $dis->id;
            $district[$dis->id]['name'] = $dis->name;
        }

        foreach(Divisions::find() as $div)
        {
            $division[$div->id]['id'] = $div->id;
            $division[$div->id]['name'] = $div->name;
        }


        foreach(Addresses::find() as $add)
        {
            $address[$add->id]['id'] = $add->id;
            $address[$add->id]['address1'] = $add->address1;
            $address[$add->id]['address2'] = $add->address2;
            $address[$add->id]['sub_id'] = $add->sub_id;
            $address[$add->id]['dis_id'] = $add->dis_id;
            $address[$add->id]['div_id'] = $add->div_id;

            $address[$add->id]['subdistrict_name'] = $subDistrict[$add->sub_id]['name'];
            $address[$add->id]['district_name'] = $district[$add->dis_id]['name'];
            $address[$add->id]['division_name'] = $division[$add->div_id]['name'];
        }

        //echo "<pre>"; print_r($address);exit;

        foreach(offices::find() as $off)
        {
            $office[$off->id]['id'] = $off->id;
            $office[$off->id]['name'] = $off->name;
            $office[$off->id]['offTypeId'] = $off->office_type_id;
            $office[$off->id]['phone'] = $off->phone;
            $office[$off->id]['email'] = $off->email;
            $office[$off->id]['officeType'] = $type[$off->office_type_id]['name'];
            $office[$off->id]['address1'] = $address[$off->address_id]['address1'];
            $office[$off->id]['address2'] = $address[$off->address_id]['address2'];

            $office[$off->id]['sub_id'] = $address[$off->address_id]['sub_id'];
            $office[$off->id]['dis_id'] = $address[$off->address_id]['dis_id'];
            $office[$off->id]['div_id'] = $address[$off->address_id]['div_id'];

            $office[$off->id]['subdistrict'] = $address[$off->address_id]['subdistrict_name'];
            $office[$off->id]['district'] = $address[$off->address_id]['district_name'];
            $office[$off->id]['division'] = $address[$off->address_id]['division_name'];
            $office[$off->id]['countType'] = $this->countType($off->office_type_id);
        }
        //echo "<pre>"; print_r($address);exit;

        $div = array();
        $dis = array();
        foreach ($address as $add){

            $div[$add['div_id']][] =$add;
        }

        $i = 0;
        $j = 0;
        $div = array();
        foreach($address as $add){
           $i != $add['div_id'];
            {
                $j != $add['dis_id'];
            }
            $i = $add['dis_id'];
        }



        echo "<pre>"; print_r($div);exit;


        /*function categoriesToTree(&$address) {

            $map = array(
                0 => array('division' => array())
            );

            foreach ($address as &$address) {
                $address['division'] = array();
                $map[$address['id']] = &$address;
            }

            foreach ($address as &$address) {
                $map[$address[div_id]]['division'][] = &$address;
            }

            return $map[0]['division'];

        }

        echo "=== BEFORE ===\n";
       // echo "<pre>"; print_r($address);exit;

        $tree = categoriesToTree($address);

        echo "=== AFTER ===\n";
        echo "<pre>"; print_r($address);exit;

        echo "=== TREE ===\n";
        echo "<pre>"; print_r($tree);exit;*/



        $divId = 20;
        $office = $this->get_office_information($divId);

        //echo "<pre>"; print_r($office);exit;
        $district = $this->get_district_information($divId);

        $this->view->districts = $district;
        $this->view->offices = $office;
        $this->view->divisions = $division;
    }

    public function getofficeAction()
    {
        $this->view->disable();

        if (($this->request->isPost()) && ($this->request->isAjax() == true)) {
            $divId = $this->request->getQuery("id", "string");

            if ($divId) {
                $office = $this->get_office_information($divId);
            }
        }

        $response = new \Phalcon\Http\Response();
        $response->setContentType('application/json', 'UTF-8');
        $response->setContent(json_encode($office));
        return $response;
    }

    private function get_office_information($divId){
        $sql= "SELECT off.id, off.name, off.parent_id
               ,ads.address1, ads.address2, ads.sub_id, ads.dis_id, ads.div_id
               ,ds.name AS dis_name
               ,dv.name AS div_name
               ,sb.`name` AS sub_name
            FROM offices off
            INNER JOIN  addresses ads
                      ON off.address_id = ads.id
            INNER JOIN Subdistricts sb
                      ON ads.sub_id = sb.id
            INNER JOIN Districts ds
                      ON ads.dis_id = ds.id
            INNER JOIN Divisions dv
                      ON ads.div_id = dv.id
            WHERE dv.id = '$divId'";


        $result = Robot::findByRawSql($sql);
        $result = $result->toArray();

        return $result;
    }

    /* Get Incharge information*/
    public function getinchargeAction()
    {
        $this->view->disable();
        if (($this->request->isPost()) && ($this->request->isAjax() == true)) {
            //$empid = $this->request->getQuery("id");
            $empid = $this->request->getQuery("id", "string");

            var_dump($empid);exit;
            $tmp = array();
            if ($empid) {
                $tmp = Employees::find("office_id=" . $empid );
                //$tmp = Employees::findByAddressId( $empid );
            }
            var_dump($tmp);
            foreach ($tmp as $t) {

                $childs[] = array('id' => $t->id, 'name' => $t->name, 'mobile' => $t->mobile);

            }

        }
        var_dump($childs);

        $response = new \Phalcon\Http\Response();
        $response->setContentType('application/json', 'UTF-8');
        //$response->setContent(json_encode($director));
        $response->setContent($childs);
        return $response;
    }

    private function get_district_information($divId){
        $sql= "SELECT DISTINCT ads.`dis_id`
               ,ds.name AS dis_name
            FROM offices off
            INNER JOIN  addresses ads
                      ON off.`address_id` = ads.`id`
            INNER JOIN Districts ds
                      ON ads.`dis_id` = ds.`id`
            WHERE ads.`div_id` = '$divId'";


        $result = Robot::findByRawSql($sql);
        $result = $result->toArray();

        return $result;
    }
}
