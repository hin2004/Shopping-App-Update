<?php

$conn = mysqli_connect("localhost","root","root","php_shopping app", 8889);


if(isset($_POST['register']))
{
    $u_role = $_POST['role'];

    $u_name = $_POST['name'];
    
    $u_id = $_POST['hkmuid'];

    $u_email = $_POST['email'];

    $u_password = $_POST['password'];

    $usertype = "user";


    $sql = "INSERT INTO users (role, name, hkmuid, email, password, usertype) VALUES ('$u_role','$u_name','$u_id','$u_email','$u_password','$usertype')";


    $data = mysqli_query($conn,$sql);

    if($data)
    {
        echo "Register success";
    }

}

?>





<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>

    <link rel='stylesheet' type='text/css' href='../style.css'>
</head>
<body>

    <div class="my_form">

        <h2>Register Form</h2>

        <form action="" method="POST">

            <div class="input_deg">
                <label>I am a...</label>
                <select name="role">
                    <option value="" disabled selected>Select your role</option>
                    <option value="student">Student</option>
                    <option value="staff">Staff / Faculty</option>
                    <option value="alumni">Alumni</option>
                </select>
            </div>

            <div class="input_deg">
                <label>Name :</label>
                <input type="text" name="name">
            </div>

            <div class="input_deg">
                <label>ID :</label>
                <input type="number" name="hkmuid">
            </div>

            <div class="input_deg">
                <label>Email :</label>
                <input type="email" name="email">
            </div>

            <div class="input_deg">
                <label>Password :</label>
                <input type="password" name="password">
            </div>

            <div class="input_deg">
                
                <input type="submit" name="register" value="Register">
            </div>

        </form>

    </div>
    
</body>
</html>