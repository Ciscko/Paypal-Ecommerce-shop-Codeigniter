<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Web extends CI_Controller {
    public function  __construct(){
        parent::__construct();
        $this->load->library('Paypal_lib','email');
        $this->load->model('Web_Model','web_model');
        $this->load->model('Manageorder_Model','manageorder_model');
     }

    public function index() {
        
     
        $data = array();
        $data['all_featured_products'] = $this->web_model->get_all_featured_product();
        $data['all_new_products'] = $this->web_model->get_all_new_product();
        $data['get_all_category'] = $this->web_model->get_all_category();
        $this->load->view('web/inc/header');
        $this->load->view('web/inc/slider',$data);
        $this->load->view('web/pages/home', $data);
        $this->load->view('web/inc/footer');
    }

    public function contact() {
        $data = array();
        $this->load->view('web/inc/header');
        $this->load->view('web/pages/contact');
        $this->load->view('web/inc/footer');
    }

    public function queries(){
        $this->form_validation->set_rules('name','Name','required');
        $this->form_validation->set_rules('mobile','Mobile','required');
        $this->form_validation->set_rules('email','Email','required');
        $this->form_validation->set_rules('subject','Subject','required');

        $config['upload_path'] = './uploads/';
        $config['allowed_types'] = 'gif|jpg|png';
        $config['max_size'] = 4096;
        $config['max_width'] = 2000;
        $config['max_height'] = 2000;
          if (!empty($_FILES['image1']['name'])) {
            

            $this->upload->initialize($config);

            if (!$this->upload->do_upload('image1')) {
                $error = $this->upload->display_errors();
                $this->session->set_flashdata('message', $error);
                redirect('web/contact');
            }
            else{
                $post_image1 = $this->upload->data();
                $data['image1'] = $post_image1['file_name'];
            }
        }
        if($this->form_validation->run() ==true){
            $data['name'] = $this->input->post('name');
            $data['mobile'] = $this->input->post('mobile');
            $data['email'] = $this->input->post('email');
            $data['subject'] = $this->input->post('subject');
            $result = $this->web_model->add_queries($data);

            if($result){
                $this->session->set_flashdata('success','Query sent Successfully');

                redirect('web/contact');
                $this->session->unset_flashdata();
            }
            else{
               $this->session->set_flashdata(); 
            }


        }



    }

    public function cart() {
        $data = array();
        $data['cart_contents'] = $this->cart->contents();
        $this->load->view('web/inc/header');
        $this->load->view('web/pages/cart', $data);
        $this->load->view('web/inc/footer');
    }

    public function product() {
        $data = array();
        $data['get_all_category'] = $this->web_model->get_all_category();
        $data['get_all_product'] = $this->web_model->get_all_product();
        $this->load->view('web/inc/header');
        $this->load->view('web/pages/product', $data);
        $this->load->view('web/inc/footer');
    }

    public function single($id) {
        $data = array();
        $data['get_single_product'] = $this->web_model->get_single_product($id);
        $data['get_all_category'] = $this->web_model->get_all_category();
        $this->load->view('web/inc/header');
        $this->load->view('web/pages/single', $data);
        $this->load->view('web/inc/footer');
    }

    public function error() {
        $data = array();
        $this->load->view('web/inc/header');
        $this->load->view('web/pages/error');
        $this->load->view('web/inc/footer');
    }

    public function category_post($id) {
        $data = array();
        $data['get_all_category'] = $this->web_model->get_all_category();
        $data['get_all_product'] = $this->web_model->get_all_product_by_cat($id);
        $this->load->view('web/inc/header');
        $this->load->view('web/pages/product', $data);
        $this->load->view('web/inc/footer');
    }

    public function save_cart() {
        $data = array();
        $product_id = $this->input->post('product_id');
        $results = $this->web_model->get_product_by_id($product_id);

        $data['id'] = $results->product_id;
        $data['name'] = $results->product_title;
        $data['price'] = $results->product_price;
        $data['qty'] = $this->input->post('qty');
        $data['options'] = array('product_image' => $results->product_image);

        $this->cart->insert($data);
        redirect('save/order');
    }

    public function update_cart() {
        $data = array();
        $data['qty'] = $this->input->post('qty');
        $data['rowid'] = $this->input->post('rowid');

        $this->cart->update($data);
        redirect('cart');
    }

    public function remove_cart() {

        $data = $this->input->post('rowid');
        $this->cart->remove($data);
        redirect('cart');
    }

    public function register_success() {
        $customer_name = $this->session->flashdata('customer_name');
        if (!$customer_name) {
            redirect('customer/register');
        }
        $data = array();
        $this->load->view('web/inc/header');
        $this->load->view('web/pages/register_success');
        $this->load->view('web/inc/footer');
    }

    public function user_form() {
        $data = array();
        $this->load->view('web/inc/header');
        $this->load->view('web/pages/user_form');
        $this->load->view('web/inc/footer');
    }

    public function customer_register() {
        $data = array();
        $this->load->view('web/inc/header');
        $this->load->view('web/pages/customer_register');
        $this->load->view('web/inc/footer');
    }

    public function customer_login() {
        $data = array();
        $this->load->view('web/inc/header');
        $this->load->view('web/pages/customer_login');
        $this->load->view('web/inc/footer');
    }

    public function customer_save() {
        $data = array();
        $data['customer_name'] = $this->input->post('customer_name');
        $data['customer_email'] = $this->input->post('customer_email');
        $data['customer_password'] = md5($this->input->post('customer_password'));
        $data['customer_address'] = $this->input->post('customer_address');
        $data['customer_city'] = $this->input->post('customer_city');
        $data['customer_country'] = $this->input->post('customer_country');
        $data['customer_phone'] = $this->input->post('customer_phone');
        $data['customer_zipcode'] = $this->input->post('customer_zipcode');

        $this->form_validation->set_rules('customer_name', 'Customer Name', 'trim|required');
        $this->form_validation->set_rules('customer_email', 'Customer Email', 'trim|required|valid_email|is_unique[tbl_customer.customer_email]');
        $this->form_validation->set_rules('customer_password', 'Customer Password', 'trim|required');
        $this->form_validation->set_rules('customer_address', 'Customer Address', 'trim|required');
        $this->form_validation->set_rules('customer_city', 'Customer City', 'trim|required');
        $this->form_validation->set_rules('customer_country', 'Customer Country', 'trim|required');
        $this->form_validation->set_rules('customer_phone', 'Customer Phone', 'trim|required');
        $this->form_validation->set_rules('customer_zipcode', 'Customer Zipcode', 'trim|required');

        if ($this->form_validation->run() == true) {
            $result = $this->web_model->save_customer_info($data);
            if ($result) {
                $this->session->set_flashdata('customer_name', $data['customer_name']);
                $this->session->set_flashdata('customer_email', $data['customer_email']);
                //$this->session->set_flashdata('shipping_id',);
                redirect('register/success');
            } else {
                $this->session->set_flashdata('message', 'Customer Registration Fail');
                redirect('customer/register');
            }
        } else {
            $this->session->set_flashdata('message', validation_errors());
            redirect('customer/register');
        }
    }

    public function customer_logincheck() {
        $data = array();
        $data['customer_email'] = $this->input->post('customer_email');
        $data['customer_password'] = md5($this->input->post('customer_password'));

        $this->form_validation->set_rules('customer_email', 'Customer Email', 'trim|required|valid_email');
        $this->form_validation->set_rules('customer_password', 'Customer Password', 'trim|required');

        if ($this->form_validation->run() == true) {
            $result = $this->web_model->get_customer_info($data['customer_email']);
            if ($result) {
                $this->session->set_userdata('customer_id', $result->customer_id);
                $this->session->set_userdata('customer_email', $data['customer_email']);
                $shipping = $this->web_model->get_shipping_id($data['customer_email']);
                $this->session->set_userdata('shipping_id', $shipping->shipping_id);
                redirect('/');
            } else {
                $this->session->set_flashdata('message', 'Customer Login Fail');
                redirect('customer/login');
            }
        } else {
            $this->session->set_flashdata('message', validation_errors());
            redirect('customer/login');
        }
    }

    public function customer_shipping_login() {
        $data = array();
        $data['customer_email'] = $this->input->post('customer_email');
        $data['customer_password'] = md5($this->input->post('customer_password'));

        $this->form_validation->set_rules('customer_email', 'Customer Email', 'trim|required|valid_email');
        $this->form_validation->set_rules('customer_password', 'Customer Password', 'trim|required');

        if ($this->form_validation->run() == true) {
            $result = $this->web_model->get_customer_info($data['customer_email']);
            if ($result) {
                $this->session->set_userdata('customer_id', $result->customer_id);
                $this->session->set_userdata('customer_email', $result->customer_email);
                redirect('checkout');
            } else {
                $this->session->set_flashdata('messagelogin', 'Customer Login Fail');
                redirect('user_form');
                //redirect('customer/shipping');
            }
        }
         else {
            $this->session->set_flashdata('messagelogin', validation_errors());
            redirect('user_form');
        }
    }

    public function customer_shipping_register() {
        $data = array();
        $data['customer_name'] = $this->input->post('customer_name');
        $data['customer_email'] = $this->input->post('customer_email');
        $data['customer_password'] = md5($this->input->post('customer_password'));
        $data['customer_address'] = $this->input->post('customer_address');
        $data['customer_city'] = $this->input->post('customer_city');
        $data['customer_country'] = $this->input->post('customer_country');
        $data['customer_phone'] = $this->input->post('customer_phone');
        $data['customer_zipcode'] = $this->input->post('customer_zipcode');

        $this->form_validation->set_rules('customer_name', 'Customer Name', 'trim|required');
        $this->form_validation->set_rules('customer_email', 'Customer Email', 'trim|required|valid_email|is_unique[tbl_customer.customer_email]');
        $this->form_validation->set_rules('customer_password', 'Customer Password', 'trim|required');
        $this->form_validation->set_rules('customer_address', 'Customer Address', 'trim|required');
        $this->form_validation->set_rules('customer_city', 'Customer City', 'trim|required');
        $this->form_validation->set_rules('customer_country', 'Customer Country', 'trim|required');
        $this->form_validation->set_rules('customer_phone', 'Customer Phone', 'trim|required');
        $this->form_validation->set_rules('customer_zipcode', 'Customer Zipcode', 'trim|required');

        if ($this->form_validation->run() == true) {
            $result = $this->web_model->save_customer_info($data);

            if ($result) {
                $this->session->set_userdata('customer_id', $result);
                redirect('customer/shipping');
            } else {
                $this->session->set_flashdata('message', 'Customer Shipping Fail');
                redirect('user_form');
            }
        } else {
            $this->session->set_flashdata('message', validation_errors());
            redirect('user_form');
        }
    }

    public function customer_shipping() {
        $data = array();
        $this->load->view('web/inc/header');
        $this->load->view('web/pages/customer_shipping');
        $this->load->view('web/inc/footer');
    }

    public function save_shipping_address() {
        $data = array();
        $data['shipping_name'] = $this->input->post('shipping_name');
        $data['shipping_email'] = $this->input->post('shipping_email');
        $data['shipping_address'] = $this->input->post('shipping_address');
        $data['shipping_city'] = $this->input->post('shipping_city');
        $data['shipping_country'] = $this->input->post('shipping_country');
        $data['shipping_phone'] = $this->input->post('shipping_phone');
        $data['shipping_zipcode'] = $this->input->post('shipping_zipcode');

        $this->form_validation->set_rules('shipping_name', 'Shipping Name', 'trim|required');
        $this->form_validation->set_rules('shipping_email', 'Shipping Email', 'trim|required|valid_email|is_unique[tbl_shipping.shipping_email]');
        $this->form_validation->set_rules('shipping_address', 'Shipping Address', 'trim|required');
        $this->form_validation->set_rules('shipping_city', 'Shipping City', 'trim|required');
        $this->form_validation->set_rules('shipping_country', 'Shipping Country', 'trim|required');
        $this->form_validation->set_rules('shipping_phone', 'Shipping Phone', 'trim|required');
        $this->form_validation->set_rules('shipping_zipcode', 'Shipping Zipcode', 'trim|required');

        if ($this->form_validation->run() == true) {
            $result = $this->web_model->save_shipping_address($data);
            $this->session->set_userdata('shipping_id', $result);
            if ($result) {
                redirect('checkout');
            } else {
                $this->session->set_flashdata('message', 'Customer Shipping Fail');
                redirect('customer/shipping');
            }
        } else {
            $this->session->set_flashdata('message', validation_errors());
            redirect('customer/shipping');
        }
    }

    public function checkout() {
        $data = array();
        $this->load->view('web/inc/header');
        $this->load->view('web/pages/checkout');
        $this->load->view('web/inc/footer');
    }

    public function payment() {
        $data = array();
        $this->load->view('web/inc/header');
        $this->load->view('web/pages/payment');
        $this->load->view('web/inc/footer');
    }

    public function save_order() {
         $customer_id = $this->session->userdata('customer_id');
         if (!empty($customer_id)) {

               $data['payment_type'] = 'paypal'; //$this->input->post('payment');

                $this->form_validation->set_rules('payment', 'Payment', 'trim|required');

                if ($this->form_validation->run() !== true) {
                    $payment_id = $this->web_model->save_payment_info($data);
                    $odata = array();
                    $odata['customer_id'] = $this->session->userdata('customer_id');
                    $email = $this->session->userdata('customer_email');
                    $odata['shipping_id'] = $this->session->userdata('shipping_id');
                    $odata['payment_id'] = $payment_id;
                    $tax = ($this->cart->total() * 15) / 100;
                    $odata['order_total'] = $tax + $this->cart->total();

                    $order_id = $this->web_model->save_order_info($odata);

                    $oddata = array();

                    $myoddata = $this->cart->contents();

/* so now, the information in this function is to be passed to paypal,
 we've got to keep everything clear on what to send to paypal

*/
                      $time = time();
                      $keyz = md5( $order_id . time() .  $email . rand() ); 
                      $this->web_model->setup_payment( $order_id, $email, $keyz ); 

                      $this->paypal_lib->add_field( 'return', site_url( 'paypal/success' ) ); 
                      $this->paypal_lib->add_field( 'cancel_return', site_url( 'paypal/cancel' ) ); 
                      $this->paypal_lib->add_field( 'notify_url', site_url( 'paypal/ipn' ) ); // <-- IPN url
                      
                      $this->paypal_lib->add_field( 'custom', $keyz ); 
                      
                                  $i=1;
                        foreach ($myoddata as $oddatas) {


                            $oddata['order_id'] = $order_id;
                            $oddata['product_id'] = $oddatas['id'];
                            $oddata['product_name'] = $oddatas['name'];
                            $oddata['product_price'] = $oddatas['price'];
                            $oddata['product_sales_quantity'] = $oddatas['qty'];
                            $oddata['product_image'] = $oddatas['options']['product_image'];
                            $this->web_model->save_order_details_info($oddata);

                            $product_detail =  $oddata['product_name'];

                            $this->paypal_lib->add_field( 'item_name', $product_detail  ); 
                            $this->paypal_lib->add_field( 'item_number', $oddata['product_id'] ); 
                            $this->paypal_lib->image($oddata['product_image']);
                            $this->paypal_lib->add_field('quantity',  $oddatas['qty']);
                                 
                           $i++; 
                        }
                     
                $this->paypal_lib->add_field( 'amount', $odata['order_total'] );      
               
                 $this->paypal_lib->paypal_auto_form();
           


            $this->cart->destroy();

           //redirect('payment');
        } else {
            $this->session->set_flashdata('message', validation_errors());
            redirect('checkout');
        }
    }else { 
        redirect('customer/login');
    }
   
}

    public function pdf($order_id) {
        $data = array();
        $order_info = $this->manageorder_model->order_info_by_id($order_id);
        $customer_id = $order_info->customer_id;
        $shipping_id = $order_info->shipping_id;
        $payment_id = $order_info->payment_id;


        $data['customer_info'] = $this->manageorder_model->customer_info_by_id($customer_id);
        $data['shipping_info'] = $this->manageorder_model->shipping_info_by_id($shipping_id);
        $data['payment_info'] = $this->manageorder_model->payment_info_by_id($payment_id);
        $data['order_details_info'] = $this->manageorder_model->orderdetails_info_by_id($order_id);
        $data['order_info'] = $this->manageorder_model->order_info_by_id($order_id);

        $this->load->library('pdf');
        $this->pdf->load_view('admin/pages/pdf', $data);
        $this->pdf->setPaper('A4', 'portrait');
        $this->pdf->render();
        $this->pdf->stream("order.pdf");
    }

    public function search() {

        $search = $this->input->get('search');
        
        if(!empty($search)){
            $data = array();
            $data['get_all_product'] = $this->web_model->get_all_search_product($search);
            $data['search'] = $search;

            if ($data['get_all_product']) {
                $this->load->view('web/inc/header');
                $this->load->view('web/pages/search', $data);
                $this->load->view('web/inc/footer');
            } else {
                redirect('error');
            }
        }
        else {
                redirect('error');
            }
    }
    
   


    function download( $key, $id) { // ROUTE: download/{purchase_key} 
  //$key = $this->uri->segment( 3 ); 
  //$product_id = $this->uri->segment( 2 );
  $key = $key;
  $product_id = $id;
  $purchase = $this->web_model->get_purchase_by_key( $key ); 
    
  // Check purchase was fulfilled 
  if ( ! $purchase ) { 
    $this->session->set_flashdata( 'error', 'Download key not valid.' ); 
    redirect( 'web' ); 
  } 
  if ( $purchase->active == 0 ) { 
    $this->session->set_flashdata( 'error', 'Download not active.' ); 
    redirect( 'web' ); 
  } 
    
  // Get item and initiate download if exists 
  $item = $this->web_model->get_single_product( $product_id ); 
    
  $file_name = $item->product_name.'.pdf'; 
  $file_data = read_file( 'files/' . $file_name ); 
    
  if ( ! $file_data ) { // file not found on server 
    $this->session->set_flashdata( 'error', 'The requested file was not found. Please contact us to resolve this.' ); 
    redirect( 'web' ); 
  } 
      
  force_download( $file_name, $file_data ); 
}

function recover_pswd(){
    
}
 function logout(){
        $this->session->unset_userdata('customer_id');
        $this->session->unset_userdata('customer_email');
        redirect('customer/login');
    }

}
