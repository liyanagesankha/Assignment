<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Services extends CI_Controller {
    
    public function index()
    {
        $this->LoadServicesPage();        
    }
    
    private function LoadServicesPage()
    {
        $data['pageTitle'] = 'Services - Nature Nest';
        $data['signButtonText'] = 'Sign in'; 
        $this->load->view('site/template/header', $data);
        $this->load->view('site/template/navigation', $data);
        $this->load->view('site/services');
        $this->load->view('site/template/footer');
    }
}
