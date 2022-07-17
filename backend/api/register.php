<?php
    
    include('db.php');
    header("Content-Type:application/json");
    date_default_Timezone_set('Asia/Kolkata');
    $time=date("d-m-Y H:i:s");
    
     if($_SERVER['REQUEST_METHOD'] == 'POST'){
        $name = $_POST['name'];
        $email = $_POST['email'];
        $password = $_POST['password'];

        $sql = "SELECT * FROM user WHERE email = '$email'";
        $result = mysqli_query($conn,$sql);
        if(mysqli_num_rows($result) > 0){
            echo "Email already exist";
        }
        else{
            $sql = "INSERT INTO user (name,email,password) VALUES ('$name','$email','$password')";
            if(mysqli_query($conn,$sql)){
                echo "Register successfully";
            }
            else{
                echo "error".mysqli_error($conn);
            }
        }
    }
?>