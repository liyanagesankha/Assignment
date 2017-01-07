<?php

class UserRegisterModel extends CI_Model {

    //Get user role data from role table
    public function GetUserRoleData() {
        $query = $this->db->get('role');
        return $query->result();
    }

    //Register new user
    public function RegisterNewUser($newUserData) {
        $this->db->insert('user', $newUserData);
        return $this->db->insert_id();
    }

    //Inser new employee data
    public function InsertNewEmployeeData($newEmployeeData) {
        $this->db->insert('employee', $newEmployeeData);
        return $this->db->insert_id();        
    }

    //Inssert employee role data
    public function InsertNewEmployeeRoleData($employeeRoleData) {
        if (count($employeeRoleData) > 0) {
            $this->db->insert_batch('employeerole', $employeeRoleData);
        }
    }
}
?>