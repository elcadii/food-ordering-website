<?php
session_start();
$cnt = ("mysql:host=localhost;dbname=resturent_db");
$user = "root";
$pass = "";
try {
    $pdo = new PDO($cnt, $user, $pass);
    // echo "connect done";

    $PassError = " ";
    $emailError = " ";

    if (isset($_POST['loginbtn'])) {
        $email = $_POST['loginemail'];
        $loginpass = $_POST['loginpassword'];
        $query = "SELECT user_id, email , password FROM users WHERE email = :email";
        $stmt = $pdo->prepare($query);
        $stmt->bindParam(':email', $email);
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        if ($row) {
            if (password_verify($loginpass, $row['password'])) {
                // echo "you are log in";
                $q1 = "SELECT * FROM addresses WHERE user_id = :user_id ";
                $stmt2 = $pdo->prepare($q1);
                $stmt2->execute(['user_id' => $row['user_id']]);
                $adress = $stmt2->fetch();
                //  echo "<pre>";
                // print_r($adress) ;
                // echo "</pre>";
                $_SESSION['login'] = true;
                $_SESSION['name'] = 'yahya';
                $_SESSION['user_id'] = $row['user_id'];
                $_SESSION['address_id'] = $adress['address_id'];
                // var_dump($_SESSION['address_id']);
                // die();
                $_SESSION['cart'] = [];
                header("location: http://localhost/restorant");
            } else {
                $PassError =  "wrong password";
                $_SESSION['login'] = false;
            }
        } else {
            $emailError =  "email not found";
            $_SESSION['login'] = false;
        }
    }
} catch (PDOException $e) {
    echo "not connect " . $e->GETMessage();
}
?>







<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style/login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
    <div class="container">
        <!-- <a href="http://localhost/restorant/?category=All" class="gotohom"> <i class="fa-solid fa-angles-left"></i> go to home </a> -->
        <div class="login-container">
            <h2>Login</h2>
            <form action="#" method="POST">
                <div class="input-group">
                    <label for="username">email</label>
                    <input type="text" id="loginemail" name="loginemail" required>
                    <span class="error"><?php echo $emailError; ?></span>
                </div>
                <div class="input-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="loginpassword" required>
                    <span class="error"><?php echo $PassError; ?></span>
                </div>
                <div class="rem_forget">
                    <div class="remamber">
                        <input type="checkbox" id="remember" name="remember">
                        <label for="remember">Remember me</label>
                    </div>
                    <a href="#">Forgot Password?</a>
                </div>
                <button name="loginbtn" type="submit" class="login-button">Login</button>
                <p class="haveacc">don't have account <a href="http://localhost/restorant/signup.php">sign up</a></p>
            </form>
        </div>
    </div>

</body>

</html>