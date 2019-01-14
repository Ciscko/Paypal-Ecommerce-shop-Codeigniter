

<div class="main">
    <div class="content" style="text-align: center">
        <div class="register_account" style="text-align:center;display:inline-block;float: none">
            <h3>Payment Options</h3>
            <p>Your Order Sucessfully Done.</p>
            <form method="post" action="paypal/ipn">
            	 <input type='hidden' name='notify_url' value='<?php echo base_url();?>/paypal_ipn.php'>
            </form>
          

            
        </div>  	
        <div class="clear"></div>
    </div>
</div>