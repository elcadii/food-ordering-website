<?php
session_start();

$sdn = "mysql:host=localhost;dbname=resturent_db";
$user = "root";
$pass = "";

try {
    $pdo = new PDO($sdn, $user, $pass);
    $user_id = $_SESSION['user_id'];

    // Récupérer les commandes de l'utilisateur
    $orderQuery = "SELECT orders.order_id, orders.order_date, orders.status, dishes.dish_name
                   FROM orders
                   JOIN order_details ON orders.order_id = order_details.order_id
                   JOIN dishes ON order_details.dish_id = dishes.dish_id
                   WHERE orders.user_id = :user_id
                   ORDER BY orders.order_date DESC";
    $stmt = $pdo->prepare($orderQuery);
    $stmt->execute(['user_id' => $user_id]);
    $orders = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // Récupérer les informations de l'utilisateur
    $userQuery = "SELECT first_name, last_name, email, phone_number FROM users WHERE user_id = :user_id";
    $stmt = $pdo->prepare($userQuery);
    $stmt->execute(['user_id' => $user_id]);
    $user_info = $stmt->fetch(PDO::FETCH_ASSOC);

    //  la mise à jour du mot de passe
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
        $email = $_POST['email'];
        $current_password = $_POST['password'];
        $new_password = $_POST['new_password'];
        $confirm_password = $_POST['confirm_password'];

        if ($new_password != $confirm_password) {
            echo "New password and confirm password do not match.";
        } else {
            $query = "SELECT * FROM users WHERE email = :email";
            $stmt = $pdo->prepare($query);
            $stmt->bindParam(':email', $email);
            $stmt->execute();
            $user_data = $stmt->fetch(PDO::FETCH_ASSOC);

            if ($user_data) {
                if (password_verify($current_password, $user_data['password'])) {
                    $new_password_hashed = password_hash($new_password, PASSWORD_DEFAULT);

                    $update_query = "UPDATE users SET password = :new_password WHERE email = :email";
                    $update_stmt = $pdo->prepare($update_query);
                    $update_stmt->bindParam(':new_password', $new_password_hashed);
                    $update_stmt->bindParam(':email', $email);
                    $update_stmt->execute();

                    echo "Password updated successfully.";
                } else {
                    echo "Current password is incorrect.";
                }
            } else {
                echo "Email not found.";
            }
        }
    }
} catch (PDOException $e) {
    echo "Connection error: " . $e->getMessage();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <link rel="stylesheet" href="style/profile.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
</head>
<body>
<a class="gohome" href="http://localhost/restorant/"><i class="fa-solid fa-reply"></i> Go to home</a>

<div class="container">

    <!-- User Information Section -->
    <div class="userinfo">
        <h2>Your Information</h2>
        <table border="1">
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Phone Number</th>
            </tr>
            <tr>
                <td><?php echo htmlspecialchars($user_info['first_name']); ?></td>
                <td><?php echo htmlspecialchars($user_info['last_name']); ?></td>
                <td><?php echo htmlspecialchars($user_info['email']); ?></td>
                <td><?php echo htmlspecialchars($user_info['phone_number']); ?></td>
            </tr>
        </table>
    </div>

    <div class="hestory">
        <h2>Your Order History</h2>
        <table border="1">
            <tr>
                <th>Order Date</th>
                <th>Status</th>
                <th>Dishes</th>
            </tr>
            <?php
            if (!empty($orders)) {
                $current_order = null;
                foreach ($orders as $order) {
                    if ($current_order !== $order['order_id']) {
                        if ($current_order !== null) {
                            echo "</td></tr>";
                        }
                        echo "<tr>";
                        echo "<td>" . $order['order_date'] . "</td>";
                        echo "<td>" . $order['status'] . "</td>";
                        echo "<td>" . $order['dish_name'];
                        $current_order = $order['order_id'];
                    } else {
                        echo ", " . $order['dish_name'];
                    }
                }
                echo "</td></tr>";
            } else {
                echo "<tr><td colspan='3'>No orders found</td></tr>";
            }
            ?>
        </table>
    </div>

    <div class="updatpass">
        <h1>Update Password</h1>
        <form method="POST">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>
            <label for="password">Your Password</label>
            <input type="password" id="password" name="password" required>
            <label for="new_password">New Password</label>
            <input type="password" id="new_password" name="new_password" required>
            <label for="confirm_password">Confirm New Password</label>
            <input type="password" id="confirm_password" name="confirm_password" required>
            <input type="submit" name="submit" value="Update Password">
        </form>
    </div>

</div>
</body>
</html>
