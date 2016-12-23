<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class DiscussionForum extends CI_Controller {
    
    public function index()
    {
        $this->LoadDiscussionForumPage();        
    }
    
    private function LoadDiscussionForumPage()
    {
        $data['pageTitle'] = 'Discussion Forum'; 
        $data['signButtonText'] = 'Sign in'; 
        $this->load->view('site/template/header', $data);
        $this->load->view('site/template/navigation', $data);
        $this->load->view('site/DiscussionForum');
        $this->load->view('site/template/footer');
    }
}
