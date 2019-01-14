<?php

class Query_Model extends CI_Model{
    
    
    public function get_all_query(){
        $this->db->select('*');
        $this->db->from('tbl_queries');
        $this->db->order_by('tbl_queries.id', 'DESC');
        $info = $this->db->get();
        return $info->result_array();
    }

     public function edit_query($id){
        $this->db->select('*');
        $this->db->from('tbl_queries');
        $this->db->where('tbl_queries.id', $id);
        $info = $this->db->get();
        return $info->row_array();
    }
     public function delete_query($id){
        $this->db->where('id', $id);
        return $this->db->delete('tbl_queries');
    }
     public function update_product_info($data,$id){
        $this->db->where('id', $id);
        return $this->db->update('tbl_queries', $data);
    }
}