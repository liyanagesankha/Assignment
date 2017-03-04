<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class addNewSubForum extends CI_Controller {
    
    public function index()
    {
        $this->LoadAddNewSubForumPage();        
    }
    
    private function LoadAddNewSubForumPage()
    {
        $data['pageTitle'] = 'Add New Sub Forum - Nature Nest'; 
        $data['signButtonText'] = 'Sign in'; 
        $this->load->view('site/template/header', $data);
        $this->load->view('site/template/navigation', $data);
        $this->load->view('site/addNewSubForum');
        $this->load->view('site/template/footer');
    }
}
