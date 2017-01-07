<script src="<?php echo base_url('branding/js/userRegister.js'); ?>" type="text/javascript"></script>
<div class="container">
    <form method="POST" action="<?php echo site_url('userRegister/RegisterNewUser'); ?>" class="form-horizontal">
        <fieldset>
            <div class="form-group">
                <label class="col-md-3 control-label" for="firstNameInputText">First Name</label>  
                <div class="col-md-4">
                    <input id="firstNameInputText" maxlength="200" name="firstNameInputText" value="<?php echo set_value('firstNameInputText'); ?>" type="text" placeholder="Enter your first name." class="form-control input-md" required="">
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-3 control-label" for="lastNameInputText">Last Name</label>  
                <div class="col-md-4">
                    <input id="lastNameInputText" maxlength="200" name="lastNameInputText" value="<?php echo set_value('lastNameInputText'); ?>" type="text" placeholder="Enter your last name." class="form-control input-md">
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-3 control-label" for="emailInputText">Email</label>  
                <div class="col-md-4">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input id="emailInputText" maxlength="200" name="emailInputText" value="<?php echo set_value('emailInputText'); ?>" type="email" placeholder="Enter your email id." class="form-control input-md" required="">
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-3 control-label" for="passwordInputText">Password</label>  
                <div class="col-md-4">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input id="passwordInputText" name="passwordInputText" type="password" maxlength="50" placeholder="Enter your password." class="form-control input-md" required="">
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-3 control-label" for="confirmPasswordInputText">Confirm Password</label>  
                <div class="col-md-4">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input id="confirmPasswordInputText" name="confirmPasswordInputText" type="password" maxlength="50" placeholder="Confirm your password." class="form-control input-md" required="">
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-3 control-label" for="isEmployeeInputCheckbox">Is Employee</label>
                <div class="col-md-4">
                    <div class="checkbox">
                        <label data-toggle="collapse" data-target="#isEmployeeDiv">
                            <input id="isEmployeeInputCheckbox" name="isEmployeeInputCheckbox" name="isEmployeeInputCheckbox" value="Employee" type="checkbox">
                        </label>
                    </div>
                </div>
            </div>

            <div id="isEmployeeDiv" class="collapse"> <!-- IsEmployee Div Start-->

                <div class="form-group">
                    <label class="col-md-3 control-label" for="mobileInputText">Mobile</label>  
                    <div class="col-md-4">
                        <input id="mobileInputText" maxlength="12" name="mobileInputText" value="<?php echo set_value('mobileInputText'); ?>" type="text" placeholder="Enter your mobile number." class="form-control input-md">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-3 control-label" for="nicInputText">NIC Number</label>  
                    <div class="col-md-4">
                        <input id="nicInputText" maxlength="10" name="nicInputText" value="<?php echo set_value('nicInputText'); ?>" type="text" placeholder="Enter your NIC number." class="form-control input-md">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-3 control-label" for="addressInputTextArea">Address</label>  
                    <div class="col-md-4">
                        <textarea class="form-control input-md" maxlength="500" rows="3" id="addressInputTextArea" name="addressInputTextArea" value="<?php echo set_value('addressInputTextArea'); ?>" placeholder="Enter your address."></textarea>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-3 control-label" for="typeInputRadioDiv">Type</label>
                    <div id="typeInputRadioDiv" class="col-md-4">
                        <label class="radio-inline" for="typePermanentInputRadio">
                            <input type="radio" name="typeInputRadio" id="typePermanentInputRadio" value="Permanent" checked="checked">
                            Permanent
                        </label> 
                        <label class="radio-inline" for="typeContractInputRadio">
                            <input type="radio" name="typeInputRadio" id="typeContractInputRadio" value="Contract">
                            Contract
                        </label>
                        <label class="radio-inline" for="typeTemporaryInputRadio">
                            <input type="radio" name="typeInputRadio" id="typeTemporaryInputRadio" value="Temporary">
                            Temporary
                        </label>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-3 control-label" for="genderInputRadioDiv">Gender</label>
                    <div id="genderInputRadioDiv" class="col-md-4">
                        <label class="radio-inline" for="genderMaleInputRadio">
                            <input type="radio" name="genderInputRadio" id="genderMaleInputRadio" value="Male" checked="checked">
                            Male
                        </label> 
                        <label class="radio-inline" for="genderFemaleInputRadio">
                            <input type="radio" name="genderInputRadio" id="genderFemaleInputRadio" value="Female">
                            Female
                        </label>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-3 control-label" for="rolesInputCheckboxDiv">Roles</label>
                    <div id="rolesInputCheckboxDiv" class="col-md-4">

                        <?php foreach ($roles as $role) { ?>
                            <div class="checkbox">
                                <label data-toggle="tooltip" data-placement="left" title="<?php echo $role->description; ?>">
                                    <input class="user-role-input-checkbox" onchange="changeUserRoleCheckbox(this);" name="roleInputCheckbox[]" type="checkbox" value="<?php echo $role->id; ?>"><?php echo $role->name; ?></label>
                            </div>
                        <?php } ?>
                    </div>
                </div>

            </div> <!-- IsEmployee Div End-->

            <!-- Register button -->
            <div class="form-group">
                <label class="col-md-3 control-label" for="registerInputButton"></label>
                <div class="col-md-4">
                    <button id="registerInputButton" name="registerInputButton" type="Submit" class="btn btn-primary pull-right">Submit</button>
                </div>
            </div>

        </fieldset>    
    </form>
    <?php echo validation_errors('<div class="alert alert-danger"><strong>Error:</strong><br/>', '</div>') ?>
</div>
