<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Download extends CI_Controller 
{

public function  __construct(){
        parent::__construct();
        $this->load->helper('url');
        $this->load->model('Web_Model','web_model');
       
 }
 function index()
 {
     
 }
 
  public function get($key, $id) {
      
 // $key = $this->uri->segment( 2 ); 
  //$product_id = $this->uri->segment( 3 );
  $key = $key;
  $product_id = $id;
  
    $purchase = $this->web_model->get_purchase_by_key( $key );      
         
  
  
  // Check purchase was fulfilled 
  if (empty($purchase ) ) { 
    $this->session->set_flashdata( 'error', 'Download key not valid.' ); 
    redirect( 'web' ); 
  } 
  if ( $purchase->active == 0 ) { 
    $this->session->set_flashdata( 'error', 'Download not active.' ); 
    redirect( 'web' ); 
  } 
  
      // Check download limit 
    $download_limit = $this->config->item( 'download_limit' ); 
    if ( $download_limit['enable'] ) { 
      $downloads = $this->web_model->get_purchase_downloads( $purchase->id, $download_limit['downloads'] ); 
      $count = 0; 
      $time_limit = date('Y-m-d H:i:s') - (86400 * $download_limit['days']);
      
      foreach ( $downloads as $download ) { 
        if ( $download->download_at >= $time_limit ) 
          $count++; // download within past x days 
        else
          break; // later than x days, so can stop foreach 
      } 
      
      // If over download limit, error 
      if ( $count >= $download_limit['downloads'] ) { // can only download x times within y days 
        $this->session->set_flashdata( 'error', 'You can only download a file ' . $download_limit['downloads'] . ' times in a ' . $download_limit['days'] . ' day period. Please try again later.' ); 
        redirect( 'items' ); 
      } 
    }
        
        
  // Get item and initiate download if exists 
  $item = $this->web_model->get_single_product( $product_id ); 
    
  $file_name = $item->product_title.'.pdf'; 
  $file_data = read_file( 'files/' . $file_name ); 
   // echo $file_name;
  if ( ! $file_data ) { // file not found on server 
    $this->session->set_flashdata( 'error', 'The requested file was not found. Please contact us to resolve this.' ); 
    redirect( 'web' ); 
  } 
      $this->web_model->log_download( $item->product_id, $purchase->id, $this->input->ip_address(), $this->input->user_agent() );
  force_download( $file_name, $file_data ); 
  }
 
}