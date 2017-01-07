<link href="<?php echo base_url('branding/css/signin.css'); ?>" rel="stylesheet" type="text/css"/>

<div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Sign into continue to Nature Nest Resort</h1>
            <div class="account-wall">
                <img class="profile-img" src="" alt="Login Image">
                <form class="form-signin">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input id="emailInputText" type="email" class="form-control" placeholder="Email" required autofocus>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input id="passwordInputText" type="password" class="form-control" placeholder="Password" required>
                    </div>
                    <button id="signInInputButton" class="btn btn-lg btn-primary btn-block" type="submit">
                        Sign in</button>
                    <label class="checkbox pull-left">
                        <input type="checkbox" value="remember-me">
                        Remember me
                    </label>
                    <a href="#" class="pull-right forgot-password">Forgot password?</a><span class="clearfix"></span>
                </form>
                <a href="<?php echo site_url('userRegister'); ?>" class="text-center user-register">Register with New Account</a>
            </div>

        </div>
    </div>
</div>