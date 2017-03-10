<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Posts extends CI_Controller
{
  public function index()
  { 
    $this->LoadPostsPage();
  } 
  		
  public function LoadPostsPage($subForum)
  {
    $data['pageTitle'] = 'Posts - Nature Nest'; 
    $data['signButtonText'] = 'Sign in';
    $this->load->model('postsModel');
    $data['post'] = $this->postsModel->GetMainPosts($subForum);
    $this->load->view('site/template/header', $data);
    $this->load->view('site/template/navigation', $data);
    $this->load->view('site/posts', $data);
    $this->load->view('site/template/footer');
  }

}
