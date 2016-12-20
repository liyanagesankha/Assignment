<link href="<?php echo base_url('branding/css/signin.css');?>" rel="stylesheet" type="text/css"/>

<div class="container"> <!-- container -->
    <form class="form-signin">
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
        <div class="checkbox">
            <label>
                <input type="checkbox" value="remember-me"> Remember me
            </label>
        </div>        
        <button class="btn btn-lg btn-primary btn-block btn-login-submit" type="submit">Sign in</button>
        <div class="register-forgot-password">
            <a href="<?php echo site_url('userRegister');?>">Register</a>
             - 
            <a href="<?php echo site_url('userRegister');?>">Forgot Password</a>
	</div>
    </form>
</div> <!-- /container -->