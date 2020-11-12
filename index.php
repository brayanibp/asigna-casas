<?php namespace App;
include './views/home.php';
include './views/login.php';
include './views/registerHouse.php';
include './views/registerUser.php';
include './components/Navbar.php';
use App\Views\Home;
use \App\Views\RegisterHouse;
use \App\Views\Login;
use \App\Views\RegisterUser;
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mision Hogar</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet"> 
    <link rel="stylesheet" href="style/style.css">
</head>
<body>
    <?php 
    $home = new Home;
    echo $home->print();
    ?>
</body>
</html>