

<div class="main">
    <div class="content">
        <div class="support">
            <div class="support_desc">
                <h3 style="color:#791111;"><?php echo get_option('contact_title');?></h3>
                <p><?php echo get_option('contact_subtitle');?></p>
                <p><?php echo get_option('contact_description');?></p>
            </div>
            <img src="<?php echo base_url()?>assets/web/images/contact.png" alt="" />
            <div class="clear"></div>
        </div>
        <div class="section group">
            <div class="col span_2_of_3">
                <div class="contact-form">
                    <?php echo $this->session->flashdata('success'); ?>

                    <h2>Contact Us</h2>
                    <form method="post" action="web/queries" enctype="multipart/form-data">
                        <div>
                            <span><label>NAME</label></span>
                            <span><input name="name" type="text" value=""></span>
                        </div>
                        <div>
                            <span><label>E-MAIL</label></span>
                            <span><input type="text" name="email" value=""></span>
                        </div>
                        <div>
                            <span><label>MOBILE.NO</label></span>
                            <span><input type="text" name="mobile" value=""></span>
                        </div>
                         <div>
                            <span><label>UPLOAD IMAGE</label></span>
                            <span><input type="file" name="image1" value=""></span>
                        </div>
                        <div>
                            <span><label>DESCRIPTION</label></span>
                            <span><textarea name="subject"> </textarea></span>
                        </div>
                        
                        <div>
                            <span><input type="submit" value="SUBMIT"></span>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col span_1_of_3">
                <div class="company_address">
                    <h2>Company Information :</h2>
                    <p><?php echo get_option('company_location');?></p>
                    <p>Phone:<?php echo get_option('company_number');?></p>
                    <p>Email:<a href="mailto:<?php echo get_option('company_email');?>"> <span><?php echo get_option('company_email');?></span></a></p>
                    <p>Follow on: <a href="<?php echo get_option('company_facebook');?>"><span>Facebook</span></a>,
                            <a href="<?php echo get_option('company_email');?>"><span>Twitter</span></a></p>
                </div>
            </div>
        </div>    	
    </div>
</div>
