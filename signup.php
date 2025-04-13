<?php
session_start();
$cnt = ("mysql:host=localhost;dbname=resturent_db");
$user = "root";
$pass= "";
try{
    $pdo = new PDO($cnt , $user , $pass);
    // echo "connect done";


        $exist="";
        $mutchPassword = "";
    if(isset($_POST['sign_up'])){
        $first_name = $_POST['first_name'];
        $last_name = $_POST['last_name'];
        $email = $_POST['email'];
        $phone = $_POST['phone_number'];
        $password = $_POST['password'];
        $confirm_password = $_POST['confirm_password'];
        $city = $_POST['city'];
        $street = $_POST['street'];
        $postal_code = $_POST['postal_code'];

        
        
        
        
        if($password == $confirm_password && !empty($password) && !empty($email) && !empty($phone) && !empty($first_name) && !empty($last_name) && FILter_var($email, FILTER_VALIDATE_EMAIL ) && strlen($password >= 6)){
            $stmt=$pdo-> prepare("SELECT email FROM users WHERE email =? ");
            $stmt->execute([$email]) ;
            $st = $stmt->fetch(PDO::FETCH_ASSOC);
           if($st){
             $exist =  "Email already exist";
           }else{
            $sql = "INSERT INTO users(first_name, last_name, email, phone_number , password ) VALUES(:first_name, :last_name, :email, :phone, :password)";
                    $stmt = $pdo->prepare($sql);
                    $stmt->execute(['first_name' => $first_name, 'last_name' => $last_name, 'email' => $email, 'phone' => $phone, 'password' => password_hash($password, PASSWORD_DEFAULT)]);
                    // echo "Registration successful";

                    $stmt1 = $pdo->prepare("SELECT * FROM users WHERE email =? ");
                    $stmt1->execute([$email]) ;
                    $row = $stmt1->fetch(PDO::FETCH_ASSOC);
                    // $_SESSION['name'] = 'yahya';
                    $_SESSION['user_id'] = $row['user_id'];
                    // $_SESSION['first_name'] = $row['first_name'];
                    // $_SESSION['last_name'] = $row['last_name'];
                    // $_SESSION['email'] = $row['email'];
                    // $_SESSION['phone_number'] = $row['phone_number'];

                    

                   // echo "Registration successful";

            $sql1 = "INSERT INTO addresses (street , city , postal_code , user_id) VALUES (:street, :city, :postal_code , :user_id  )";
            $stmt1 = $pdo->prepare($sql1);
            $stmt1->execute(['street' => $street, 'city' => $city, 'postal_code' => $postal_code, 'user_id' => $_SESSION['user_id']]);
            // $_SESSION['user_id'] = $pdo->lastInsertId();
            // $_SESSION['address_id'] = $pdo->lastInsertId(); 


                    // echo $_SESSION['name'];
                    // echo $_SESSION['user_id']; 
                    // echo $_SESSION['first_name'];
                    // echo $_SESSION['last_name'] ;
                    // echo $_SESSION['email'] ;
                    // echo $_SESSION['phone_number']; 

                    header("location: http://localhost/restorant/lognin.php");

                
                    
           }
        }else{
            $mutchPassword = "Password not match or not strong ";
        };
    }


}catch(PDOException $e){
    echo "not connect " . $e->GETMessage();
}
?>





<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style/sinstyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<div class="container">
<!-- <a href="http://localhost/restorant/?category=All" class="gotohom"> <i class="fa-solid fa-angles-left"></i> go to home </a> -->

    <div class="signupdiv">
       
        <div class="signup-container">
        <h1>Create an Account</h1>
        <form action="signup.php" method="POST" class="signup-form">
           <div class="allinputs">
                <div class="count">
                        <div class="firs_last_name">
                           <div class="firstname">
                           <label for="name">First name</label>
                           <input type="text" id="first_name" name="first_name" required placeholder="Enter your first name">
                           </div>

                            <div class="lastname">
                            <label for="last_name">last name</label>
                            <input type="text" id="last_name" name="last_name" required placeholder="Enter your last name">
                            </div>
                        </div>

                        <label for="street">street</label>
                        <input type="text" id="street" name="street" required placeholder="Enter your street">

                        <div class="city_postal">
                            <div class="city">
                                <label for="city">city</label>
                                <input type="text" id="city" name="city" required placeholder="Enter your city">
                            </div>
                            <div class="postal">
                                <label for="postal_code">postal code</label>
                                <input type="number" id="postal_code" name="postal_code" required placeholder="Enter your postal code">
                            </div>
                        </div>

                        

                </div>
                    <div class="cont2">
                        <label for="email">Email Address</label>
                        <input type="email" id="email" name="email" required placeholder="Enter your email address">
                        <span class="error"><?php echo $exist;?></span>

                        <label for="email">phone number</label>
                        <input type="number" id="phone_number" name="phone_number" required placeholder="Enter your phone number">

                        <div class="vpass">
                            <div class="firPass">
                                <label for="password">Password</label>
                                <input type="password" id="password" name="password" required placeholder="Enter your password">
                                <span class="error"><?php echo $mutchPassword;?></span>
                            </div>

                            <div class="secPass">
                                <label for="confirm_password">Confirm Password</label>
                                <input type="password" id="confirm_password" name="confirm_password" required placeholder="Confirm your password">
                                <span class="error"><?php echo $mutchPassword;?></span>
                            </div>
                        </div>
                    </div>
           </div>

            <button type="submit" name="sign_up" class="signup_btn">Sign Up</button>

            <p class="signin-link">Already have an account? <a href="http://localhost/restorant/lognin.php">log In</a></p>
        </form>
    </div>
</div>

</body>
</html>