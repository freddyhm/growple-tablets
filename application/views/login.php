<style>
.login
{
  width:1024px;
  height:600px;
  background-image:url('public/img/common/m1.jpg');
  background-repeat: no-repeat;
 } 

#login_form
{
width: 720px;
height: 111px;
background-color: white;
font-size: 28px;
text-align: center;
color: #0486ea;
margin: auto;
padding: 44px;
opacity: 0.95;
-webkit-box-shadow: 0 10px 6px -6px black;
-moz-box-shadow: 0 10px 6px -6px black;
box-shadow: 0 10px 6px -6px black;
}

input[type=text]
{
    background-color: #5a5a5a;
    border:solid 1px #BFBDBD;
    color: #fff;
    height: 50px;
    padding-left:10px;
    width: 230px;
}

input[type=password]
{
    background-color: #5a5a5a;
    border:solid 1px #BFBDBD;
    color: #fff;
    height: 50px;
    padding-left:10px;
    width: 230px;
}

input[type=submit]
{
    background-color: #8dc63f;
    color: #979797;
    height: 50px;
    width: 200px;
    color: #fff;
    text-transform:uppercase;
    -webkit-box-shadow: 0 5px 6px -6px black;
     -moz-box-shadow: 0 5px 6px -6px black;
          box-shadow: 0 5px 6px -6px black;
}

input[type=submit], input[type=text], input[type=password]
{
    border: 0;
    border-radius:5px;
    font-family: Sansation,Arial;
    font-size:28px;
}
</style>
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
