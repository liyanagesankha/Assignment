<div class="container">
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#natureNestNavigationBar">            
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<?php echo site_url('Home');?>">Nature Nest Logo</a>                
            </div><!-- /.navbar-header -->
                <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="natureNestNavigationBar">
                <ul class="nav navbar-nav">
                    <li><a href="<?php echo site_url('Home');?>">Home</a></li>  
                    <li><a href="<?php echo site_url('Hotel');?>">Gallery</a></li>
                    <li><a href="<?php echo site_url('Reservation');?>">Reservation</a></li>
                    <li><a href="<?php echo site_url('Services');?>">Services</a></li>
                    <li><a href="<?php echo site_url('DiscussionForum');?>">Discussion Forum</a></li>
                    <li><a href="<?php echo site_url('ContactUs');?>">Contact Us</a></li>                    
                </ul>
                <a href="<?php echo site_url('SignIn');?>" class="btn btn-default navbar-btn navbar-right"><?php echo $signButtonText ?></a>
            </div><!-- /.navbar-collapse -->            
        </div><!-- /.container-fluid -->
    </nav>
</div>
