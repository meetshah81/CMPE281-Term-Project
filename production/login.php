<!DOCTYPE html>
<?php
   /*include("config.php");
   session_start();

   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form

      $myusername = mysqli_real_escape_string($db,$_POST['username']);
      $mypassword = mysqli_real_escape_string($db,$_POST['password']);

      $sql = "SELECT id FROM admin WHERE username = '$myusername' and passcode = '$mypassword'";
      $result = mysqli_query($db,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      $active = $row['active'];

      $count = mysqli_num_rows($result);

      // If result matched $myusername and $mypassword, table row must be 1 row

      if($count == 1) {
         session_register("myusername");
         $_SESSION['login_user'] = $myusername;

         header("location: welcome.php");
      }else {
         $error = "Your Login Name or Password is invalid";
      }
   }*/
?>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Crowd Source </title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="../vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form action="#" method="post">
              <h1>Login Form</h1>
              <div>
                <input type="text" value=""<?php if(isset($_POST['Username'])) { echo $_POST['Username']; } ?>"" name="Username" class="form-control" placeholder="Username" required="" />
              </div>
              <div>
                <input type="password" value=""<?php if(isset($_POST['password'])) { echo $_POST['password']; } ?>"" name="password" class="form-control" placeholder="Password" required="" />
              </div>
              <div>
                <input type="submit" name="submit" value="Login">
                <a class="reset_pass" href="#">Lost your password?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">New to site?
                  <a href="register.php" class="to_register"> Create Account </a>
                </p>

                <div class="clearfix"></div>
                <br />

               
              </div>
            </form>
          </section>
        </div>

        

        
      </div>

<?php
require_once "database.php";

//echo "<pre>"; print_r($_POST); exit;


        if(isset($_POST['submit']))
        {   

              $username=$_POST['Username'];
              $pass=$_POST['password'];

              $sql = "select * from tbl_user where username='$username' AND password='$pass'";
              $query=mysqli_query($con,$sql);
                
                if(mysqli_num_rows($query)==1)
                {
                  $row=mysqli_fetch_array($query);
                  
                
                  if($username == $row['username'] && $pass == $row['password'])
                  {
                    session_start();
                    $_SESSION['email']= $email;
                    $_SESSION['usernm']= $row['firstname']." ".$row['lastname'];
                    echo "<script>window.location.href='/dashboard/production/project.php';</script>";
                    }
                    else
                    {
                      echo "Error in log insertion";
                    }
                  }
                  else
                  {
                    echo "<h4><b><center>Invalid Username or Password.</center></b></h4>";
                  }
        }         
        
                        

?>

    </div>
  </body>
</html>
