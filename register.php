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

    <title>Gentelella Alela! | </title>

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
              <h1>Create Account</h1>
              <div>
                <input type="text" value=""<?php if(isset($_POST['Username'])) { echo $_POST['Username']; } ?>"" name = "Username" class="form-control" placeholder="Username" required="" />
              </div>
              <div>
                <input type="text" value=""<?php if(isset($_POST['firstname'])) { echo $_POST['firstname']; } ?>"" name="firstname" class="form-control" placeholder="First Name" required="" />
              </div>
              <div>
                <input type="text" value=""<?php if(isset($_POST['lastname'])) { echo $_POST['lastname']; } ?>"" name="lastname" class="form-control" placeholder="Last Name" required="" />
              </div>
              <div>
                <input type="email" value=""<?php if(isset($_POST['Email'])) { echo $_POST['Email']; } ?>"" name="Email" class="form-control" placeholder="Email" required="" />
              </div>
              <div>
                <input type="password" name="password"   value=""<?php if(isset($_POST['password'])) { echo $_POST['password']; } ?>"" class="form-control" placeholder="Password" required="" />
              </div>
              <div>
                <input type="submit" name="submit" value="submit" class="btn btn-info">
              </div>

              <?php
require_once "database.php";
include("config.php");


extract($_POST);



if(isset($_POST['submit']))
{
    $username=$_POST['Username'];
  $email=$_POST['Email'];
  $firstname=$_POST['firstname'];
  $lastname=$_POST['lastname'];
  $password=$_POST['password'];

  $sql = "insert into tbl_user (user_id, username, firstname, lastname, email, password) VALUES (NULL, '$username', '$firstname', '$lastname', '$email', '$password')";
      $query=mysqli_query($con,$sql);


      if ($query)
      {
        echo "User registered successfully";
      }
      else
      {
        echo "User not registerd";
      }
}
?>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Already a member ?
                  <a href="login.php" class="to_register"> Log in </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-paw"></i> Gentelella Alela!</h1>
                  <p>©2016 All Rights Reserved. Gentelella Alela! is a Bootstrap 3 template. Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>

        <div id="register" class="animate form registration_form">
          <section class="login_content">
            
          </section>
        </div>
      </div>
    </div>
  </body>
</html>
