<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Reservation extends CI_Controller {
    
    public function index()
    {
        $this->LoadReservationPage();        
    }
    
    private function LoadReservationPage()
    {
        $data['pageTitle'] = 'Reservation - Nature Nest';  
        $data['signButtonText'] = 'Sign in'; 
        $this->load->view('site/template/header', $data);
        $this->load->view('site/template/navigation', $data);
        $this->load->view('site/reservation');
        $this->load->view('site/template/footer');
    }
}
