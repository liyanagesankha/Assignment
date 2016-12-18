<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SignIn extends CI_Controller {
    
    public function index()
    {
        $this->LoadSignInPage();        
    }
    
    private function LoadSignInPage()
    {
        $data['pageTitle'] = 'Home - Nature Nest'; 
        $data['signButtonText'] = 'Sign in'; 
        $this->load->view('site/template/header', $data);
        $this->load->view('site/template/navigation', $data);
        $this->load->view('site/signIn');
        $this->load->view('site/template/footer');
    }
}
