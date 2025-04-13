<?php
session_start();

$sdn = "mysql:host=localhost;dbname=resturent_db";
$user = "root";
$pass = "";

try {
    $pdo = new PDO($sdn, $user, $pass);
    $user_id = $_SESSION['user_id'];

    // 1. Add a new address
    if (isset($_POST['add_address'])) {
        $street = $_POST['street'];
        $city = $_POST['city'];
        $postal_code = $_POST['postal_code'];

        if (!empty($street) && !empty($city) && !empty($postal_code)) {
            $insertAddress = "INSERT INTO addresses (street, city, postal_code, user_id) 
                              VALUES (:street, :city, :postal_code, :user_id)";
            $stmt = $pdo->prepare($insertAddress);
            $stmt->execute([
                'street' => $street,
                'city' => $city,
                'postal_code' => $postal_code,
                'user_id' => $user_id
            ]);

            echo "<script>alert('Address added successfully!'); window.location.href='paiyout.php';</script>";
            exit();
        } else {
            echo "<script>alert('Please fill all address fields.');</script>";
        }
    }

    // 2. Update selected address
    if (isset($_POST['update_address'])) {
        $selected_address_id = $_POST['address_id'];

        // Check address ownership
        $checkAddress = "SELECT * FROM addresses WHERE address_id = :address_id AND user_id = :user_id";
        $stmtCheck = $pdo->prepare($checkAddress);
        $stmtCheck->execute([
            'address_id' => $selected_address_id,
            'user_id' => $user_id
        ]);
        
        if ($stmtCheck->rowCount() > 0) {
            $_SESSION['address_id'] = $selected_address_id;
            echo "<script>alert('Address selected successfully!'); window.location.href='paiyout.php';</script>";
            exit();
        } else {
            echo "<script>alert('Invalid address selection.');</script>";
        }
    }

    // 3. Confirm the order
    if (isset($_POST['place_order'])) {
        $cartItems = $_SESSION['cart'];
        $address_id = $_SESSION['address_id'];
        $status = "Pending";
        $quantity = 2;

        if (!empty($cartItems) && isset($address_id)) {
            $insertOrder = "INSERT INTO orders (user_id, address_id, order_date, status)
                            VALUES (:user_id, :address_id, NOW(), :status)";
            $stmtOrder = $pdo->prepare($insertOrder);
            $stmtOrder->execute([
                'user_id' => $user_id,
                'address_id' => $address_id,
                'status' => $status
            ]);

            $order_id = $pdo->lastInsertId();

            $insertDetail = "INSERT INTO order_details (order_id, dish_id, quantity)
                             VALUES (:order_id, :dish_id, :quantity)";
            $stmtDetail = $pdo->prepare($insertDetail);

            foreach ($cartItems as $item) {
                $stmtDetail->execute([
                    'order_id' => $order_id,
                    'dish_id' => $item['dish_id'],
                    'quantity' => $quantity
                ]);
            }

            $_SESSION['cart'] = [];
            echo "<script>alert('Order Placed Successfully!'); window.location.href='index.php';</script>";
            exit();
        } else {
            echo "<script>alert('Please select an address and ensure your cart is not empty.');</script>";
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
    <title>Payment Form</title>
    <link rel="stylesheet" href="style/paiout.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
</head>

<body>
    <a class="gohome" href="http://localhost/restorant/"><i class="fa-solid fa-reply"></i> Go to home</a>

    <div class="parentcontainer">
        <div class="ordercontainer">
            <div class="order-summary">
                <h3>Order Summary</h3>
                <div class="item-list">
                    <?php
                    if (isset($_SESSION['cart']) && !empty($_SESSION['cart'])) {
                        $quantity = 2;
                        foreach ($_SESSION['cart'] as $item) {
                            echo '<div class="item">';
                            echo '<div class="item-image"><img src="images/' . $item['image_url'] . '" alt=""></div>';
                            echo '<div class="item-name">' . $item['dish_name'] . '</div>';
                            echo '<div class="item-price">' . $item['dish_price'] . " MAD</div>";
                            echo '<div class="item-quantity">x' . $quantity . '</div>';
                            echo '</div>';
                        }
                    } else {
                        echo "Your cart is empty!";
                    }
                    ?>
                </div>
                <form method="POST" action="">
                    <button type="submit" name="place_order" class="pay-button">Confirm Order</button>
                </form>
            </div>
        </div>

        <div class="payment-container">
            <!-- Select Address -->
            <form method="POST" action="">
                <label for="address_select">Choose Address:</label>
                <select name="address_id" id="address_select" required>
                    <?php
                    $addressQuery = "SELECT * FROM addresses WHERE user_id = :user_id";
                    $stmt = $pdo->prepare($addressQuery);
                    $stmt->execute(['user_id' => $user_id]);
                    $addresses = $stmt->fetchAll(PDO::FETCH_ASSOC);
                    foreach ($addresses as $address) {
                        $selected = (isset($_SESSION['address_id']) && $address['address_id'] == $_SESSION['address_id']) ? 'selected' : '';
                        echo '<option value="' . $address['address_id'] . '" ' . $selected . '>' .
                            $address['street'] . ', ' . $address['city'] . ', ' . $address['postal_code'] .
                            '</option>';
                    }
                    ?>
                </select>
                <button type="submit" name="update_address" class="pay-button">Confirm Address</button>
            </form>

            <!-- Add New Address -->
            <form method="POST" action="">
                <h3>Add New Address</h3>
                <div class="form-adress">
                    <div class="adresscontent">
                        <label for="street">Street</label>
                        <input type="text" name="street" placeholder="Enter your address" required>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-section half">
                        <label for="city">City</label>
                        <input type="text" name="city" placeholder="Marrakech" required>
                    </div>
                    <div class="form-section half">
                        <label for="postal_code">Postal Code</label>
                        <input type="number" name="postal_code" placeholder="40000" required>
                    </div>
                </div>
                <button type="submit" name="add_address" class="pay-button">Add Address</button>
            </form>
        </div>
    </div>
</body>

</html>