<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class addNewTopic extends CI_Controller {
    
    public function index()
    {
        $this->LoadAddNewTopicPage();        
    }
    
    private function LoadAddNewTopicPage()
    {
        $data['pageTitle'] = 'Add New Topic - Nature Nest'; 
        $data['signButtonText'] = 'Sign in'; 
        $this->load->view('site/template/header', $data);
        $this->load->view('site/template/navigation', $data);
        $this->load->view('site/addNewTopic');
        $this->load->view('site/template/footer');
    }
}
