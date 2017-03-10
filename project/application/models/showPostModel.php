<?php 
class showPostModel extends CI_Model{

    function GetMainPost($mainPost){
        $query = $this->db->query('SELECT * FROM `post` WHERE post_id='.$mainPost);
        
        if($query->num_rows() > 0){
            return $query->result()[0];
        } else{
            return NULL;
        }
    }
	
	function GetPosts($mainPost){
        //$result = $this->GetChildPosts($mainPost);

        $postTree = array();
        
        $objMain = (object)array(
            'parent'=>NULL,
            'value' => $this->GetMainPost($mainPost),
            'depth'=>1);
        $stack = array($objMain);

        while(count($stack) > 0){
            $current = array_pop($stack);
            array_push($postTree, $current);
            //echo "CURRENT".count($stack).":"; print_r($current);

            $children = $this->GetChildPosts($current->value->post_id);
            if(count($children) > 0){
                foreach ($children as $child){
                    if($child->post_id != $current->value->post_id) {
                        $obj = new stdClass();
                        $obj->parent = $current->value->post_id;
                        $obj->value = $child;
                        $obj->depth = $current->depth + 1;
                        
    
                        array_push($stack, $obj);
                    }
                }
            }
        }

        array_shift($postTree);
        return $postTree;
	}

    private function GetChildPosts($parentPost){
        if($parentPost == NULL)
            return NULL;

        $query = $this->db->query('SELECT * FROM `post` WHERE parent_post_id='.$parentPost);
        
        if($query->num_rows() > 0){
            return $query->result();
        } else{
            return NULL;
        }
    }
}
?>
