<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class UserRegister extends CI_Controller {

    public function index() {
        $this->LoadUserRegisterPage();
    }

    //Loade register page
    private function LoadUserRegisterPage() {
        //Get role data from modal
        $this->load->model('userRegisterModel');
        $userRoleData['roles'] = $this->userRegisterModel->GetUserRoleData();

        //Set header data
        $data['pageTitle'] = 'Register - Nature Nest';
        $data['signButtonText'] = 'Sign in';

        // Load the view
        $this->load->view('site/template/header', $data);
        $this->load->view('site/template/navigation', $data);
        $this->load->view('site/userRegister', $userRoleData);
        $this->load->view('site/template/footer');
    }

    private function LoadRegisterSuccessPage() {
        $data['pageTitle'] = 'Register Success - Nature Nest';
        $data['signButtonText'] = 'Sign in';
        $this->load->view('site/template/header', $data);
        $this->load->view('site/template/navigation', $data);
        $this->load->view('site/registerSuccess');
        $this->load->view('site/template/footer');
    }

    //Register new user
    public function RegisterNewUser() {

        $this->load->library('form_validation');
        $this->form_validation->set_rules('firstNameInputText', 'First', 'trim|required|max_length[200]');
        $this->form_validation->set_rules('lastNameInputText', 'Last', 'trim|max_length[200]');
        $this->form_validation->set_rules('emailInputText', 'Email', 'trim|required|is_unique[user.UserName]|max_length[200]');
        $this->form_validation->set_rules('passwordInputText', 'Password', 'trim|required|max_length[50]|matches[confirmPasswordInputText]');
        $this->form_validation->set_rules('confirmPasswordInputText', 'Confirm Password', 'trim|required|max_length[50]|matches[passwordInputText]');

        //$isEmployee = $this->input->post("isEmployeeInputCheckbox");  
        $isEmployee = false;
        if (isset($_POST['isEmployeeInputCheckbox']) && $_POST['isEmployeeInputCheckbox'] === 'Employee') {
            $isEmployee = true;
            $this->form_validation->set_rules('mobileInputText', 'Mobile Number', 'trim|required|max_length[12]');
            $this->form_validation->set_rules('nicInputText', 'NIC Number', 'trim|required|exact_length[10]|alpha_numeric');
            $this->form_validation->set_rules('addressInputTextArea', 'Address', 'trim|required|max_length[500]');
        }

        if ($this->form_validation->run()) {
            $this->load->model('userRegisterModel');
            $newUserData = $this->GenerateUserDataArray();
            $userId = $this->userRegisterModel->RegisterNewUser($newUserData);
            $employeeId = 0;

            if ($isEmployee && $userId > 0) {
                $newEmployeeData = $this->GenerateEmployeeData($userId);
                $employeeId = $this->userRegisterModel->InsertNewEmployeeData($newEmployeeData);

                if ($employeeId > 0) {
                    $roleIds = $this->input->post("roleInputCheckbox");
                    if (count($roleIds) > 0) {
                        $this->InsertEmployeeRoleData($employeeId, $roleIds);
                    }
                }
            }
            $this->LoadRegisterSuccessPage();
        } else {
            $this->LoadUserRegisterPage();
        }
    }

    //Insert employee role data
    private function InsertEmployeeRoleData($employeeId, $roleIds) {
        $employeeRoleData = array();
        $isAdmin = false;
        foreach ($roleIds as $roleId) {
            if ($roleId == 1) {
                $isAdmin = true;
            } else {
                $tempArray = array(
                    'EmployeeId' => $employeeId,
                    'RoleId' => $roleId
                );
                array_push($employeeRoleData, $tempArray);
            }
        }

        if ($isAdmin) {     
            $employeeRoleData = array();
            $tempArray = array(
                'EmployeeId' => $employeeId,
                'RoleId' => 1
            );
            array_push($employeeRoleData, $tempArray);            
        }
        $this->userRegisterModel->InsertNewEmployeeRoleData($employeeRoleData);
    }

    //Generate employee data array
    private function GenerateUserDataArray() {
        $newUserData = array(
            'FirstName' => $this->input->post("firstNameInputText"),
            'LastName' => $this->input->post("lastNameInputText"),
            'UserName' => $this->input->post("emailInputText"),
            'password' => $this->input->post("passwordInputText")
        );
        return $newUserData;
    }

    private function GenerateEmployeeData($userId) {
        $newEmployeeData = array(
            'UserId' => $userId,
            'Phone' => $this->input->post("mobileInputText"),
            'NicNumber' => $this->input->post("nicInputText"),
            'Address' => $this->input->post("addressInputTextArea"),
            'StartDate' => date("Y/m/d"),
            'Type' => $this->input->post("typeInputRadio"),
            'Gender' => $this->input->post("genderInputRadio")
        );
        return $newEmployeeData;
    }

}
