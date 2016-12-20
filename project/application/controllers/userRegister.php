<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class UserRegister extends CI_Controller {
    
    public function index()
    {
        $this->LoadUserRegisterPage();        
    }
    
    private function LoadUserRegisterPage()
    {
        $data['pageTitle'] = 'Register - Nature Nest'; 
        $data['signButtonText'] = 'Sign in'; 
        $this->load->view('site/template/header', $data);
        $this->load->view('site/template/navigation', $data);
        $this->load->view('site/userRegister');
        $this->load->view('site/template/footer');
    }
}
