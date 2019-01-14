

<div class="main">
    <div class="content">
        <div class="cartoption">		
            <div class="cartpage">
                <h2>Your Cart</h2>
                <?php if ($this->cart->total_items()) { ?>
                    <table class="tblone">
                        <tr>
                            <th width="5%">Sr.</th>
                            <th width="20%">Plan Name</th>
                            <th width="10%">Image</th>
                            <th width="15%">Price</th>
                            <th width="20%">Qty</th>
                            <th width="15%">Total Price</th>
                            <th width="5%">Remove</th>
                        </tr>
                        <?php
                        $i = 0;
                        foreach ($cart_contents as $cart_items) {
                            $i++;
                            ?>
                            <tr>
                                <td><?php echo $i; ?></td>
                                <td><?php echo $cart_items['name'] ?></td>
                                <td><img src="<?php echo base_url('uploads/' . $cart_items['options']['product_image']) ?>" alt=""/></td>
                                <td>$. <?php echo $this->cart->format_number($cart_items['price']) ?></td>
                                <td>
                                
                                    <form action="<?php echo base_url('update/cart'); ?>" method="post">
                                        <input type="number" name="qty" value="<?php echo $cart_items['qty'] ?>"/>
                                        <input type="hidden" name="rowid" value="<?php echo $cart_items['rowid'] ?>"/>
                                        <input type="submit" name="submit" value="Update"/>
                                    </form>
                                </td>
                                <td>$. <?php echo $this->cart->format_number($cart_items['subtotal']) ?></td>
                                <td>
                                    <form action="<?php echo base_url('remove/cart'); ?>" method="post">
                                        <input type="hidden" name="rowid" value="<?php echo $cart_items['rowid'] ?>"/>
                                        <input type="submit" name="submit" value="X"/>
                                    </form>
                                </td>
                            </tr>
                        <?php } ?>


                    </table>
                    <table style="float:centre;text-align:left;" width="50%">
                        <tr>
                            <th>Sub Total : </th>
                            <td>$. <?php echo $this->cart->format_number($this->cart->total()) ?></td>
                        </tr>
                        <tr>
                            <th>VAT : </th>
                            <td>$. 
                                <?php
                                $total = $this->cart->total();
                                $tax = ($total * 15) / 100;
                                echo $this->cart->format_number($tax);
                                ?>
                            </td>
                        </tr>
                        <tr>
                            <th>Grand Total :</th>
                            <td>$. <?php echo $this->cart->format_number($tax + $this->cart->total()); ?> </td>
                        </tr>
                    </table>
                    <?php
                } else {
                    echo "<h1>Your Cart Empty</h1>";
                }
                ?>
            </div>
            <div class="shopping">
                <div class="search">
                    <a class="grey" href="<?php echo base_url('product') ?>">BACK TO SHOP</a>
                </div>
                <?php if ($this->cart->total_items()) { ?>
                <div class="shopright">
                    <?php
                    $customer_id = $this->session->userdata('customer_id');
                    if (!empty($customer_id)) {
                        ?>
                         <form method="post" action="<?php echo base_url('save/order');?>" style="text-align: left">
                                
                                <span><input type="hidden" name="payment" value="paypal"/></span><br/><br/>
                
                                <div class="search"><div><button class="grey">PAY BY PAYPAL</button></div></div>
                            </form>
                          
                        <?php
                    } elseif (empty($customer_id)){ 
                        ?>
                        <a href = "<?php echo base_url('customer/shipping') ?>"> <img src = "<?php echo base_url(); ?>assets/web/images/check.png" alt = "" /></a>
                        <?php
                    }
                    ?>
                </div>
                <?php } ?>
            </div>
        </div>  	
        <div class="clear"></div>
    </div>
</div>
