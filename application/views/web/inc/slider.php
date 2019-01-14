<div class="menu" >
            <ul id="dc_mega-menu-orange" style="float:left" class="dc_mm-orange">
                <?php foreach($get_all_category as $single_category){?>
                <li><a href="<?php echo base_url('get/category/'.$single_category->id);?>"><?php echo $single_category->category_name?></a></li>
                <?php } ?>
            </ul>
            
</div>
<div class="header_bottom">
    <div class="header_bottom_left">
        <?php
        $popular_posts = $this->web_model->get_all_popular_posts();

        $popular_posts_chunk = array_chunk($popular_posts, 2);
        foreach ($popular_posts_chunk as $single_popular_chunk) {
            ?>
            <div class="section group">
                <?php foreach($single_popular_chunk as $single_popular){?>
                <div class="listview_1_of_2 images_1_of_2">
                    <div class="listimg listimg_2_of_1">
                        <a href="<?php echo base_url('single/'.$single_popular->product_id);?>"> <img src="<?php echo base_url() ?>uploads/<?php echo $single_popular->product_image1?>" alt="" /></a>
                    </div>
                    <div class="text list_2_of_1">
                        <h2><?php echo word_limiter($single_popular->product_title,2) ?></h2>
                        <p><?php echo word_limiter($single_popular->product_short_description, 5) ?></p>
                        <div class="button"><span><a href="<?php echo base_url('single/'.$single_popular->product_id);?>">Add To Cart</a></span></div>
                    </div>
                </div>
                <?php }?>
            </div>
        <?php } ?>
        <div class="clear"></div>
    </div>
    <div class="header_bottom_right_images">
        <!-- FlexSlider -->
        <section class="slider">
            <div class="flexslider">
                <ul class="slides">
                    <?php
                    $slider_posts = $this->web_model->get_all_slider_post();
                    foreach ($slider_posts as $slider_post) {
                        ?>
                        <li><a href="<?php echo $slider_post->slider_link ?>"><img src="<?php echo base_url() ?>uploads/<?php echo $slider_post->slider_image ?>" alt=""/></a></li>
                    <?php } ?>
                </ul>
            </div>
        </section>
        <!-- FlexSlider -->
    </div>
    <div class="clear"></div>
</div>	