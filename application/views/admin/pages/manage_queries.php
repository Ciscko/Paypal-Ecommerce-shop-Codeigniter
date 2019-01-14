<!-- start: Content -->
<div id="content" class="span10">


    <ul class="breadcrumb">
        <li>
            <i class="icon-home"></i>
            <a href="<?php echo base_url('dashboard')?>">Home</a> 
            <i class="icon-angle-right"></i>
        </li>
        <li><a href="<?php echo base_url('manage/product')?>">Queries</a></li>
    </ul>

    <div class="row-fluid sortable">		
        <div class="box span12">
            <div class="box-header" data-original-title>
                <h2><i class="halflings-icon user"></i><span class="break"></span>Manage Queries</h2>
                <div class="box-icon">
                    <a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
                    <a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
                    <a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
                </div>
            </div>
            
            <style type="text/css">
                #result{color:red;padding: 5px}
                #result p{color:red}
            </style>
            <div id="result">
                <p><?php echo $this->session->flashdata('message'); ?></p>
            </div>
            
            <div class="box-content">
                <table class="table table-striped table-bordered bootstrap-datatable datatable">
                    <thead>
                        <tr>
                            <th>Sr.</th>
                            <th>Image</th>
                            <th>Customer Name</th>
                             <th>Mobile</th>
                            <th>Email</th>
                            <th>Subject</th>
                            <th>Actions</th>
                        </tr>
                    </thead>   
                    <tbody>
                        <?php 
                        $i=0;
                        foreach($all_query as $query){
                            $i++;
                        ?>
                        <tr>
                            <td><?php echo $i;?></td>
                            <td class="center"><a href="<?php echo base_url('uploads/'.$query['image1']);?>"><img src="<?php echo base_url('uploads/'.$query['image1']);?>" style="width:200px;height:75px"/></a></td>
                            <td class="center"><?php echo $query['name'];?></td>
                            <td class="center"><?php echo $query['mobile'];?> $</td>
                            <td class="center"><?php echo $query['email'];?></td>
                            <td class="center"><?php echo $query['subject'];?></td>
                           <td class="center">
                                 
                                    
                                    <a class="btn btn-danger" href="<?php echo base_url('query/delete_query/' . $query['id']); ?>">
                                        <i class="halflings-icon white trash"></i> 
                                    </a>
                          </td>
                        </tr>
                        <?php }?>
                        
                    </tbody>
                </table>            
            </div>
        </div><!--/span-->

    </div><!--/row-->



</div><!--/.fluid-container-->

<!-- end: Content -->