<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
    
    public function index()
    {
        $this->LoadHomePage();        
    }
    
    private function LoadHomePage()
    {
        $data['pageTitle'] = 'Home - Nature Nest';        
        $this->load->view('site/template/header', $data);
        $this->load->view('site/template/navigation');
        $this->load->view('site/home');
        $this->load->view('site/template/footer');
    }
}
