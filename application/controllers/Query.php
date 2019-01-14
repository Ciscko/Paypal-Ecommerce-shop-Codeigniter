<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Query extends CI_Controller {
    
    public function __construct() {
        parent::__construct();
        $this->get_user();
        $this->load->model('Query_model', 'query_model');
    }

    public function get_user(){
       
       $email = $this->session->userdata('user_email');
       $name = $this->session->userdata('user_name');
       $id = $this->session->userdata('user_id');
       
       if($email==false){
          redirect('admin'); 
       }
        
    }

    public function manage_query() {
        $data = array();
        $data['all_query']=$this->query_model->get_all_query();
        $data['maincontent'] = $this->load->view('admin/pages/manage_queries',$data, true);
        $this->load->view('admin/master', $data);
    }

      public function delete_query($id){
        $delete_image = array();
        $delete_image = $this->get_image_by_id($id);
        unlink('uploads/'.$delete_image['image1']);
        
        $result = $this->query_model->delete_query($id);
        if ($result) {
            $this->session->set_flashdata('message', 'Query Deleted Sucessfully');
            redirect('query/manage_query');
        } else {
            $this->session->set_flashdata('message', 'Query Deleted Failed');
             redirect('query/manage_query');
        }
    }

    private function get_image_by_id($id){
        $this->db->select('image1');
        $this->db->from('tbl_queries');
        $this->db->where('id', $id);
        $info = $this->db->get();
        return $info->row_array();
    }
    
}