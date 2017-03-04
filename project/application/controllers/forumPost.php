<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class forumPost extends CI_Controller {
    
    public function index()
    {
        $this->LoadForumPostPage();        
    }
    
    private function LoadForumPostPage()
    {
        $data['pageTitle'] = 'Forum Post - Nature Nest'; 
        $data['signButtonText'] = 'Sign in'; 
        $this->load->view('site/template/header', $data);
        $this->load->view('site/template/navigation', $data);
        $this->load->view('site/forumPost');
        $this->load->view('site/template/footer');
    }
}
