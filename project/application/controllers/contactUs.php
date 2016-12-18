<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ContactUs extends CI_Controller {
    
    public function index()
    {
        $this->LoadContactUsPage();        
    }
    
    private function LoadContactUsPage()
    {
        $data['pageTitle'] = 'Contact Us - Nature Nest';        
        $this->load->view('site/template/header', $data);
        $this->load->view('site/template/navigation');
        $this->load->view('site/contactUs');
        $this->load->view('site/template/footer');
    }
}
