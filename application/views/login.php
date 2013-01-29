<?php include('application/views/common/header.php'); ?>
<div data-role="content">
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
         <script>
        $(document).ready(function() {
            login();
        }); 
      </script>           
        <form method="post" action="index.php" name="loginform" id="loginform">
            <div class="login">
                <input id="login_input_username" class="login_input" type="text" name="user_name" placeholder="Username" />
                <input id="login_input_password" class="login_input" type="password" name="user_password" autocomplete="off" placeholder="Password"/>                    
                <input type="submit"  name="login" value="Submit" />                 
            </div>    
        </form>
        <div>
            <!-- <a class="login_link" href="index.php?register">Create new Account</a> -->
        </div>
    </div>
</div>
<?php include('application/views/common/footer.php'); ?>