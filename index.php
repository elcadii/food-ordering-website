<?php
session_start();
$sdn = "mysql:host=localhost;dbname=resturent_db";
$user = "root";
$pass = "";

try {
  $pdo = new PDO($sdn, $user, $pass);

  // echo "Connected successfully";  

  $islogin = isset($_SESSION['login']) ? $_SESSION['login'] : false;



  // fetch category and dishes  

  $selectedCategory = isset($_GET['category']) ? $_GET['category'] : 'All';

  // Fetch categories from the database
  $fetchcaty = "SELECT DISTINCT category_name FROM Categories";
  $cat = $pdo->query($fetchcaty);


  if ($selectedCategory !== 'All') {
    $fetchdishes = "SELECT dishes.dish_id ,  dishes.dish_price, dishes.dish_name, dishes.image_url, Categories.category_name 
                                FROM dishes 
                                INNER JOIN Categories ON dishes.category_id = Categories.category_id
                                WHERE Categories.category_name = :category";
    $stmt = $pdo->prepare($fetchdishes);
    $stmt->execute(['category' => $selectedCategory]);
    $dishes = $stmt->fetchAll();
  } else {
    $fetchdishes = "SELECT dishes.dish_id ,  dishes.dish_price, dishes.dish_name, dishes.image_url, Categories.category_name 
                                FROM dishes 
                                INNER JOIN Categories ON dishes.category_id = Categories.category_id";
    $dishes = $pdo->query($fetchdishes)->fetchAll();
  }


  // session_start();

  if (!isset($_SESSION['cart'])) {
    $_SESSION['cart'] = [];
  }

  if (isset($_GET['idname'])) {
    $id = $_GET['idname'];
    $stmt = $pdo->prepare('SELECT * FROM dishes WHERE dish_id = :id');
    $stmt->execute(['id' => $id]);
    $dishinCart = $stmt->fetch(PDO::FETCH_ASSOC);

    if (in_array($dishinCart, $_SESSION['cart'])) {

      //echo "<script>alert('This item is already in your cart')</script>";
    } else if ($dishinCart) {
      array_push($_SESSION['cart'], $dishinCart);
    }
  };
  $items = $_SESSION['cart'];
  $cartcount = count($items);
  // var_dump($cartcount);



  if (isset($_GET["searchBtn"])) {
    $search = $_GET["search"];
    $searchQuery = "SELECT dishes.dish_id ,  dishes.dish_price, dishes.dish_name, dishes.image_url, Categories.category_name 
                                FROM dishes 
                                INNER JOIN Categories ON dishes.category_id = Categories.category_id WHERE dish_name LIKE '%$search%'";
    $searchResult = $pdo->query($searchQuery)->fetchAll();
    if (empty($searchResult)) {
      echo "No results found!";
    } else {
      $dishes = $searchResult;
    }
  }


  if (isset($_POST['remove'])) {
    $idToRemove = $_POST['remove'];
    foreach ($_SESSION['cart'] as $key => $item) {
      if ($item['dish_id'] == $idToRemove) {
        unset($_SESSION['cart'][$key]);
        $_SESSION['cart'] = array_values($_SESSION['cart']);
        header("location: http://localhost/restorant");
      }
    }
  }

  // contact








} catch (PDOException $e) {
  echo "Connection error: " . $e->getMessage();
}
?>



<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="style/style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
  <header>
    <div class="container top-nav">
      <!-- <a href=""><img src="img/logo.png" alt=""></a> -->
      <form action="" method="GET" class="search">
        <input type="search" name="search" placeholder="search for product name" />
        <button type="submit" name="searchBtn">search</button>
      </form>
      <div class="cartHeader">
        <div onclick="openCart()" class="iconCart">
          <i class="fa-solid fa-bag-shopping"></i>
          <span class="count_item">
            <?php echo $cartcount; ?>
          </span>
        </div>
        <div class="totalPrice">
          <p>my cart:</p>
          <p class="price_cart_head">0$</p>
        </div>
      </div>
    </div>

    <nav>
      <div class="links container">
        <ul>
          <li class="showcategories"><i class="fa-solid fa-layer-group" style="color: #FFD43B;"></i><a href="">categories </a></li>
          <li class="active"><a href="">home</a></li>
          <li><a href="#about">about us</a></li>
          <li><a href="#contact">contact</a></li>
        </ul>
        <div class="login_signup">
          <?php
          if (isset($_SESSION['login']) && $_SESSION['login'] == true) {
            echo '<a href="http://localhost/restorant/lognin.php">Log out <i class="fa-solid fa-right-from-bracket" style="color:rgb(0, 0, 0);"></i></a>';
            echo '<a class="account" href="http://localhost/restorant/profile.php"><i class="fa-solid fa-circle-user"></i></a>';
          } else {
            echo '<a href="http://localhost/restorant/lognin.php">login <i class="fa-solid fa-right-to-bracket"></i></a>';
            echo '<a href="http://localhost/restorant/signup.php">sign up <i class="fa-solid fa-user-plus"></i></a>';
          }
          ?>
          <!-- <a href="http://localhost/restorant/lognin.php">login <i class="fa-solid fa-right-to-bracket"></i></a>
            <a href="http://localhost/restorant/signup.php">sign up <i class="fa-solid fa-user-plus"></i></a>  -->
        </div>
      </div>
    </nav>
  </header>
  <!-- end of header -->

  <!-- Funny About Us Section -->



  <!-- start cart -->
  <div class="cart">
    <div class="top_cart">
      <h3>My cart <span>(<?php echo $cartcount ?>Item in cart)</span></h3>
      <span onclick="closeCart()" class="close_cart"><i class="fa-regular fa-circle-xmark"></i></span>
    </div>
    <div class="items_inCart">
      <!--  -->
      <?php
      if (!empty($items)) {
        foreach ($items as $item) {
          echo "<form action='' method='POST'>";
          echo '<div class="item_cart">';
          echo "<img src='images/" . $item['image_url'] . "' alt='" . $item['dish_name'] . "' />";
          echo '<div class="container">';
          echo "<h4>" . $item['dish_name'] . "</h4>";
          echo "<p class='dishcartprice' data-value='" . $item['dish_price'] . "' name='dishcartprice'>Price: " . $item['dish_price'] . "</p>";
          echo '<input class="dishcunt" type="number" name="dishquont" min="1" value="1">';
          echo '</div>';
          echo '<button type="submit" name="remove" value="' . $item['dish_id'] . '" class="delet_item">
                <i class="fa-solid fa-trash"></i>
              </button>';
          echo '</div>';
          echo "</form>";
        }
      }
      ?>






      <!-- <div class="item_cart">
          <img src="img/product/product-1.jpg" alt="" />
          <div class="container">
            <h4>Lorem ipsum dolor sit amet, sit amet</h4>
            <p class="price_cart">160$</p>
          </div>
          <button class="delet_item">
            <i class="fa-solid fa-trash"></i>
          </button>
        </div>
        <div class="item_cart">
          <img src="img/product/product-2.jpg" alt="" />
          <div class="container">
            <h4>Lorem ipsum dolor sit amet, sit amet</h4>
            <p class="price_cart">160$</p>
          </div>
          <button class="delet_item">
            <i class="fa-solid fa-trash"></i>
          </button>
        </div> -->
    </div>
    <div class="buttom">
      <div class="total">
        <p>cart subtotal</p>



        <div class="pric_cart_total"></div>
      </div>
      <div class="buttom_cart">
        <form action="paiyout.php" method="POST">
          <?php
          if (isset($_SESSION['login']) && $_SESSION['login'] == true) {
            echo ' <a name="checkout" href="http://localhost/restorant/paiyout.php" class="btn_cart">Proceed to cart</a>';
          } else {
            echo '<a href="http://localhost/restorant/lognin.php" class="btn_cart">proceed to cart</a>';
          }
          ?>
        </form>



      </div>
    </div>
  </div>
  <!-- end of cart -->
  <!-- <h1 class="title">Restorant Menu</h1> -->

  <!-- popup of dishes -->
  <div class="leftmune">
    <h2>categories</h2>
    <div class="catg">
      <!-- <li class="cat">casual</li>
                <li class="cat">dress</li>
                <li class="cat">sport</li>
                <li class="cat">luxury</li> -->

      <form action="" method="GET">
        <li class="cat">
          <a href="?category=All">All</a>
        </li>
        <?php
        // Fetch categories from database
        foreach ($cat as $catg) {
          echo '<li class="cat">
                                  <a href="?category=' . urlencode($catg['category_name']) . '">' . $catg['category_name'] . '</a>
                                </li>';
        }
        ?>
      </form>

    </div>

  </div>

  <!-- start of dishes -->

  <div class="contener">
    <div class="dishesmenu">
      <div class="products">
        <!-- <div class="product">
                    <img src="img/50bac426-6a8a-413d-a999-3876f6764ee6.jpeg"alt="">
                    <p class="productName">tacos</p>
                    <p class="dish_category">salad</p>
                    <p class="productPrice">9.99</p>
                    
              </div> -->
        <?php
        // fetch dishes in div 
        foreach ($dishes as $dish) {
          echo '<div class="product">
                    <h3 class="dish_category">' . $dish['category_name'] . '</h3>
                    <img src="images/' . $dish['image_url'] . '" alt="' . $dish['dish_name'] . '">
                    <p class="productName">' . $dish['dish_name'] . '</p>
                    <p class="productPrice">' . $dish['dish_price'] . ' MAD' . '</p>
                    <a href="?idname=' . $dish['dish_id'] . '"><button class="datToCartBtn">Add to cart <i class="fa-solid fa-cart-plus" style="color: #ffffff;"></i></button></a>
                    
                </div>';
        };
        ?>



      </div>
    </div>
  </div>
  <section class="about-section container" id="about">
    <h2>Who Are We? (Besides Hungry)</h2>
    <p>
      Welcome to <strong>Restorant</strong> — the place where your taste buds come for a wild party and never want to leave! 🎉🍔🍕
      We are a bunch of food lovers who decided that life is too short for boring meals. So, we rolled up our sleeves, grabbed some spatulas, and started cooking up magic!
    </p>
    <p>
      Whether you're craving a burger bigger than your head or a salad that makes you question your life choices (in a good way), we've got you covered.
      Our secret ingredient? A pinch of love, a dash of fun, and a whole lot of flavor. Come for the food, stay for the vibes! 🍟❤️
    </p>
    <p><em>Remember, calories don't count if you're smiling while eating. 😉</em></p>
  </section>

  <!-- Funny Contact Us Section -->
  <section class="contact-section container" id="contact">
    <h2>Let's Taco 'Bout It 🌮</h2>
    <p>Got a question, a craving, or just wanna say hi? Drop us a message! We don't bite (unless it's pizza time).</p>

    <div class="contact-info">
      <p><i class="fa-solid fa-location-dot"></i> dar tounsi tanger</p>
      <p><i class="fa-solid fa-phone"></i> +2127377373</p>
      <p><i class="fa-solid fa-envelope"></i> contact@restorant.com</p>
    </div>

    <form action="contact.php" method="POST" class="contact-form">
      <input type="text" name="name" placeholder="Your Name " required>
      <input type="email" name="email" placeholder="Your Email " required>
      <textarea name="message" placeholder="Write us something sweet, salty, or spicy..." rows="5" required></textarea>
      <button type="submit" name="submit">Send Message <i class="fa-solid fa-paper-plane" style="margin-left: 5px;"></i></button>
    </form>
  </section>


  <script src="script.js"></script>
</body>

</html>