<?php
namespace Filic\Controllers;

use Phalcon\Tag;
use Phalcon\Loader;
use Phalcon\Mvc\View;
use Phalcon\Mvc\Model\Criteria;
use Phalcon\Paginator\Adapter\Model as Paginator;
use Phalcon\Flash\Direct as FlashDirect;


// Register the flash service with custom CSS classes
$di->set('flash', function () {
    $flash = new FlashDirect(
        array(
            'error'   => 'alert alert-danger',
            'success' => 'alert alert-success',
            'notice'  => 'alert alert-info',
            'warning' => 'alert alert-warning'
        )
    );

    return $flash;
});

/**
 * Display the "contact" page.
 */
class contactsController extends ControllerBase
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
        if ($this->request->isPost()) {
            $secret = "6LctcwwUAAAAAG5oEr0BN0AOmLmRb-hNloO1O4w7";
            $ip = $_SERVER['REMOTE_ADDR'];
            $captcha = $_POST['g-recaptcha-response'];
            $rsp = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=$secret&response=$captcha&remoteip=&ip");
            //var_dump($ip);exit();
            $arr = json_decode($rsp, TRUE);
            if($arr['success']){
                if ($this->request->isPost()) {
                    $name = $this->request->getPost('name');
                    $email = $this->request->getPost('email');
                    $phone = $this->request->getPost('phone');
                    $state = $this->request->getPost('state');
                    $description = $this->request->getPost('comment');

                    if(!empty($name) && !empty($email) && !empty($phone) && !empty($description)){
                        $to = 'akand.shahidul@gmail.com';
                        $subject = $state;
                        $body = $name."\n".$email."\n".$phone."\n".$description;
                        $from = 'From: '.$email;

                        if(mail ($to, $subject, $body, $from)){
                            //var_dump($body);exit;
                            echo '<script>alert(\''.$name.' Your, email has been sent successfully.\')</script>';

                            return $this->response->redirect('contact');
                        } else {
                            error_reporting(-1);
                            ini_set('display_errors', 'On');
                            set_error_handler("var_dump");
                            echo '<script>alert(\'There was an error sending the email.\')</script>';
                        }
                    } else {
                        echo 'all field required.';
                    }
                }
            } else {
                $this->flash->error("captcha required.");
            }
        }
    }
}
