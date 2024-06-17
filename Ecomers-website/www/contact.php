<?php
    include('includes/connect.php');
    include('functions/common_function.php');
    @session_start();
?>
<!DOCTYPE html>
<html lang="ua">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reading Culture книжковий інтернет-магазин - Контакти</title>
    <!-- bootstrap CSS link-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- font awesome link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- css file -->
    <link rel="stylesheet" href="./style/style.css">
    <style>
        body {
            overflow-x: hidden;
        }
        .contact-info {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
        }
        .contact-item {
            text-align: center;
            margin: 20px; /* Відступ між елементами */
            padding: 20px; /* Внутрішній відступ */
            flex: 1 1 300px;
            max-width: 300px;
            border: 1px solid #ddd; /* Рамка */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Тінь */
            border-radius: 10px; /* Закруглені кути */
            background-color: #f9f9f9; /* Фоновий колір */
        }
        .contact-icon {
            font-size: 40px;
            color: #007bff;
        }
        .contact-title {
            margin-top: 40px; /* Більший відступ від заголовка */
        }
        .contact-item a {
            color: #007bff; /* Колір посилань */
            text-decoration: none; /* Без підкреслення */
        }
        .contact-item a:hover {
            text-decoration: underline; /* Підкреслення при наведенні */
        }
    </style>
</head>
<body>
    <!-- navbar -->
    <div class="container-fluid p-0">
        <!-- first child -->
        <nav class="navbar navbar-expand-lg navbar-light bg-info">
            <div class="container-fluid">
                <img src="./images/logo/logo.png" alt="" class="logo">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="index.php">Головна</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="display_all.php">Товари</a>
                        </li>
                        <?php
                        if(isset($_SESSION['username'])){
                            echo "<li class='nav-item'>
                                <a class='nav-link' href='./user_area/profile.php'>Сторінка користувача</a>
                            </li>";
                        }else{
                            echo "<li class='nav-item'>
                                <a class='nav-link' href='./user_area/user_registration.php'>Зареєструватися</a>
                            </li>";
                        }
                        ?>
                        <li class="nav-item">
                            <a class="nav-link active" href="contact.php">Контакти</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="cart.php"><i class="fa-solid fa-cart-shopping"></i><sup><?php cart_item(); ?></sup></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Загальна вартість: <?php total_cart_price(); ?>/грн</a>
                        </li>
                    </ul>
                    <form class="d-flex" action="search_product.php" method="get">
                        <input class="form-control me-2" type="search" placeholder="Пошук" aria-label="Search" name="search_data">
                        <input type="submit" value="Пошук" class="btn btn-outline-light" name="search_data_product">
                    </form>
                </div>
            </div>
        </nav>

        <!-- second child -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
            <ul class="navbar-nav me-auto">
                <?php
                if(!isset($_SESSION['username'])){
                    echo "<li class='nav-item'>
                    <a class='nav-link' href='#'>Ласкаво просимо</a>
                </li>";
                }else{
                    echo "<li class='nav-item'>
                    <a class='nav-link' href='#'>Ласкаво просимо ".$_SESSION['username']."</a>
                </li>";
                }
                if(!isset($_SESSION['username'])){
                    echo "<li class='nav-item'>
                    <a class='nav-link' href='./user_area/user_login.php'>Увійти</a>
                    </li>";
                }else{
                    echo "<li class='nav-item'>
                    <a class='nav-link' href='./user_area/logout.php'>Вийти</a>
                    </li>";
                }
                ?>
            </ul>
        </nav>

        <!-- third child -->
        <div>
            <h3 class="text-center">Reading Culture</h3>
            <p class="text-center">Відкрий світ книг разом з нами</p>
        </div>

        <!-- Contact Information -->
        <div class="container my-5">
            <h2 class="text-center mb-4 contact-title">Контактна інформація</h2>
            <div class="contact-info">
                <div class="contact-item">
                    <i class="fas fa-map-marker-alt contact-icon"></i>
                    <h5>Адреса:</h5>
                    <p>вул. Прикладна, 123, Київ, Україна</p>
                </div>
                <div class="contact-item">
                    <i class="fas fa-phone contact-icon"></i>
                    <h5>Телефон:</h5>
                    <p>+380 12 345 67 89</p>
                </div>
                <div class="contact-item">
                    <i class="fas fa-envelope contact-icon"></i>
                    <h5>Електронна пошта:</h5>
                    <p>info@readingculture.com</p>
                </div>
                <div class="contact-item">
                    <i class="fas fa-clock contact-icon"></i>
                    <h5>Години роботи:</h5>
                    <p>Пн - Пт: 9:00 - 18:00</p>
                </div>
                <div class="contact-item">
                    <i class="fas fa-headset contact-icon"></i>
                    <h5>Служба підтримки:</h5>
                    <p>+380 12 345 67 90</p>
                </div>
                <div class="contact-item">
                    <i class="fab fa-facebook contact-icon"></i>
                    <h5>Соціальні мережі:</h5>
                    <p><a href="https://www.facebook.com/readingculture" target="_blank">Facebook</a>, <a href="https://twitter.com/readingculture" target="_blank">Twitter</a></p>
                </div>
            </div>
        </div>

        <!-- include footer -->
        <?php include("./includes/footer.php") ?>
    </div>

    <!-- bootstrap js link -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
