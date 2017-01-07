<?php 
class LogInModel extends CI_Model{
	
	function GetUserDataByUserName($userName){
            $query = $this->db->get_where('user', array('UserName'=>$userName));
		
            if($query->num_rows() > 0){
                return $query->result();
            } else{
                return NULL;
            }
	}
}
?>
