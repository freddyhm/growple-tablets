<div class="login_wrapper">
    <?php

    if ($login->errors) {
        foreach ($login->errors as $error) {
            
    ?>              
    <div class="login_message error">
        <?php echo $error; ?>
    </div>
    <?php
    
        }
    }
    
    if ($login->messages) {
        foreach ($login->messages as $message) {
    ?>
    <div class="login_message success">
        <?php echo $message; ?>
    </div>              
    <?php
    
        }
    }

    ?>    
    
    <?php if (!$login->registration_successful) { ?>
    
    <form method="post" action="index.php?register" name="registerform" id="registerform">
    <div class="login" style="height:250px;">
        <div style="width: 250px; height: 125px; float:left; margin:0;">
            <div style="width: 250px; height: 62px; float:left; margin:0; border-bottom: 1px solid #e6e6e6;">
                <input id="login_input_username" class="login_input" type="text" name="user_name" placeholder="username" />
            </div>
              
                <input id="login_input_password_new" class="login_input" type="password" name="user_password_new" autocomplete="off" placeholder="password" />
            
            
              
                <input id="login_input_password_repeat" class="login_input" type="password" name="user_password_repeat" autocomplete="off" placeholder="re-enter password"/>
                <input id="login_input_type_id" class="login_input" type="text" name="usertype_id" autocomplete="off" placeholder="user type"/>
                <input id="login_input_venue" class="login_input" type="text" name="venue_id" autocomplete="off" placeholder="user venue" value=""/>
            
        </div>
        <div style="width: 124px; height: 250px; float:left; margin:0; border-left: 1px solid #e6e6e6;">
            <div class="login_submit_register">
                <input type="submit"  name="register" style="width:124px; height:250px; padding-top: 60px;  text-align: center; font-size:11px; font-family: 'Droid Sans', sans-serif; color:#666666; border:0; background: transparent; cursor: pointer;" value="Register" />            
            </div>        
        </div>
    </div>    
    <div style="width:500px; height: 40px; line-height: 40px; text-align: right; color:#ccc; font-size:11px; font-family: 'Droid Sans', sans-serif; ">
        <a class="login_link" href="index.php">Back to Login Page</a>
    </div>
    </form>
    
    <?php } ?>
    
</div>

<!-- this is the Simple sexy PHP Login Script. You can find it on http://www.php-login.net ! It's free and open source. -->
