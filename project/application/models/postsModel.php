<?php 
class postsModel extends CI_Model{
	
	function GetMainPosts($subForum){
            $query = $this->db->query('SELECT * FROM `post` WHERE sf_id='.$subForum);
		
            if($query->num_rows() > 0){
                return $query->result();
            } else{
                return NULL;
            }
	}

}
?>
