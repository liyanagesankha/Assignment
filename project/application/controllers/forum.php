<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Forum extends CI_Controller
{
  public function index()
  { 
    $this->LoadForumPage();
  } 
  		
  private function LoadForumPage()
  {
    $data['pageTitle'] = 'Forum - Nature Nest'; 
    $data['signButtonText'] = 'Sign in';
    $this->load->view('site/template/header', $data);
    $this->load->view('site/template/navigation', $data);
    $this->load->view('site/forum');
    $this->load->view('site/template/footer');
  }

}
