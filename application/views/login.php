
    <div class="login_wrapper">       
        <?php

        if ($login->errors) {
            foreach ($login->errors as $error) {
                
        ?>              
        <div class="login_message error" style="color:red;">
            <?php echo $error; ?>
        </div>            
        <?php
        
            }
        }
        if ($login->messages) {
            foreach ($login->messages as $message) {
        ?>
        <div class="login_message success" style="color:green";>
            <?php echo $message; ?>
        </div>              
        <?php 
            }
        }
        ?>            
        <form method="post" action="index.php" name="loginform" id="loginform">
            <div class="login">
                <div id="login_form">
                    Welcome to Growple Meet, Please Sign In<br><br>
                <input id="login_input_username" class="login_input" type="text" name="user_name" placeholder="Username" />
                <input id="login_input_password" class="login_input" type="password" name="user_password" autocomplete="off" placeholder="Password"/>                    
                <input type="submit"  name="login" value="Login" />      
                </div>           
            </div>    
        </form>
        <div>
            <!-- <a class="login_link" href="index.php?register">Create new Account</a> -->
        </div>
    </div>
