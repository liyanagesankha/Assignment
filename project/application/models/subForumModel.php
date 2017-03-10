<?php 
class subForumModel extends CI_Model{
	
	function GetMainSubForums(){
            $query = $this->db->query('SELECT * FROM `subforum` WHERE parent_sf_id=1 AND sf_id!=1');
		
            if($query->num_rows() > 0){
                return $query->result();
            } else{
                return NULL;
            }
	}
}
?>
