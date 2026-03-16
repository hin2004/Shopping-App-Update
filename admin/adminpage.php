<?php

    session_start();

    if(!isset($_SESSION['user_id']))
    {
        
        header("location:../home/login.php");

    }

    else if ($_SESSION['usertype'] =="user")
    {
        header("location:../home/login.php");
    }


?>


<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <script src='main.js'></script>
</head>
<body>

    <h1>This is Admin Page</h1>
    
    <a href="../logout.php">Logout</a>
</body>
</html>