<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Gallery extends CI_Controller {
    
    public function index()
    {
        $this->LoadGalleryPage();        
    }
    
    private function LoadGalleryPage()
    {
        $data['pageTitle'] = 'Gallery - Nature Nest';
        $data['signButtonText'] = 'Sign in'; 
        $this->load->view('site/template/header', $data);
        $this->load->view('site/template/navigation', $data);
        $this->load->view('site/gallery');
        $this->load->view('site/template/footer');
    }
}
