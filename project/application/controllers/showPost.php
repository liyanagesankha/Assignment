<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class showPost extends CI_Controller
{
  public function index()
  { 
    $this->LoadShowPostPage();
  } 
  		
  public function LoadShowPostPage($mainPost)
  {
    $data['pageTitle'] = 'Show Posts - Nature Nest'; 
    $data['signButtonText'] = 'Sign in';
    $this->load->model('showPostModel');
    $data['mainPost'] = $this->showPostModel->GetMainPost($mainPost);
    $data['replyPosts'] = $this->showPostModel->GetPosts($mainPost);
    $this->load->view('site/template/header', $data);
    $this->load->view('site/template/navigation', $data);
    $this->load->view('site/showPost', $data);
    $this->load->view('site/template/footer');
  }

}
