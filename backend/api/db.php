<?php

    //localhost Database Connection
    $dBServername = "localhost";
    $dBUsername = "";
    $dBPassword = "";
    $dBName = "printapp";
    

    $conn = mysqli_connect($dBServername, $dBUsername, $dBPassword, $dBName);
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    /*else {
        echo("Connected");
    }*/
?>