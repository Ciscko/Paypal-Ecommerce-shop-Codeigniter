<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Paypal extends CI_Controller 
{
     function  __construct(){
        parent::__construct();
        $this->load->library('paypal_lib','email');
        $this->load->model('Web_Model', 'web_model');
         $this->load->helper('url');
     }
     
     function success(){
        //get the transaction data
        $data = array();
        $paypalInfo = $this->input->get();
          if(!empty($paypalInfo)){
          	$data['item_number'] = $paypalInfo['item_number']; 
	        $data['txn_id'] = $paypalInfo["tx"];
	        $data['payment_amt'] = $paypalInfo["amt"];
	        $data['currency_code'] = $paypalInfo["cc"];
	        $data['status'] = $paypalInfo["st"];
          }

       
        
        //pass the transaction data to view
         $this->load->view('web/inc/header');
        $this->load->view('web/paypal/success', $data);
         $this->load->view('web/inc/footer');
     }
     
     function cancel(){
        $this->load->view('web/inc/header');
        $this->load->view('web/paypal/cancel');
         $this->load->view('web/inc/footer');
     }
     
     function ipn(){
        //paypal return transaction details array
        $paypalInfo    = $this->input->post();

        $data['keyz'] = $paypalInfo['custom'];
        //$data['product_id']    = $paypalInfo["item_number"];
        $data['txn_id']    = $paypalInfo["txn_id"];
        $data['payment_gross'] = $paypalInfo["mc_gross"];
        $data['currency_code'] = $paypalInfo["mc_currency"];
        $data['payer_email'] = $paypalInfo["payer_email"];
        $data['payment_status']    = $paypalInfo["payment_status"];

        $paypalURL = $this->paypal_lib->paypal_url;        
        $result    = $this->paypal_lib->curlPost($paypalURL,$paypalInfo);
        
        //check whether the payment is verified
        if(preg_match("/VERIFIED/i",$result)){
            //insert the transaction data into the database
            $this->web_model->insertTransaction($data);
            
            
            $time = time();
                 
                 $this->web_model->confirm_payment( $data['keyz'], $data['payer_email'], $data['txn_id'], $time );
         
                $purchase = $this->web_model->get_purchase_by_key( $data['keyz'] );//obtaining the order ID from the table of already paid cart/purchase items
                
                $items = array(); 
                $items = $this->web_model->get_order_info( $purchase->order_id ); //obtaining the rows of items bought in the same order or in a single purchased cart
             //From these rows we can obtain all the parameters of the items
                
             $config = Array(
                    'protocol' => 'smtp',
                    'smtp_host' => 'ssl://smtp.googlemail.com',
                    'smtp_port' => 465,
                    'smtp_user' => 'kiragufrancis97@gmail.com',
                    'smtp_pass' => 'emailyangu',
                    'mailtype'  => 'html', 
                    'charset'   => 'iso-8859-1'
                            );
                    $this->load->library('email', $config);
                    $this->email->set_newline("\r\n");
                    
                    $to   = $purchase->email; 
                    $from = 'kiragufrancis97@gmail.com'; 
                    $name = $this->config->item( 'site_name' ); 
                   
          foreach($items as $item){
                 $subject = $item->product_name . ' Download'; 
        
                $segments = array( 'item', url_title( $item->product_name, 'dash', true ), $item->product_id ); 
                $message = 'Thanks for purchasing ' . anchor( $segments, $item->product_name )  . '. Your download link is below.';
                $message .= anchor('download/get/'. $data['keyz'].'/'.$item->product_id,'Your file') ;
                 
                $this->email->from( $from, $name ); 
                $this->email->to( $to ); 
                $this->email->subject( $subject ); 
                $this->email->message( $message ); 
                $this->email->send(); 
                $this->email->clear();
        	
        	
        	
                // Send confirmation of purchase to admin 
                $message = 'New Purchase:'; 
                $message .= 'Item: ' . anchor( $segments, $item->product_name ) ; 
                $message .= 'Price: $' . $item->product_price ; 
                $message .= 'Email: '.$purchase->email ; 
                $message .= 'PayPal Email:' . $data['payer_email'] ; 
                $message .= 'PayPal TXN ID: ' . $data['txn_id'] ; 
                $this->email->from( $from, $name ); 
                $this->email->to( $this->config->item( 'admin_email' ) ); 
                $this->email->subject( 'A purchase has been made' ); 
                $this->email->message( $message ); 
                $this->email->send(); 
                $this->email->clear();
          }
        }//Verification block closure
                 
   
                
    }
}

