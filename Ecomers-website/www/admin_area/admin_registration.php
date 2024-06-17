<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Реєстрація адміністратора</title>

    <!-- botstrap css link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
    <!-- font awesome link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        body{
            overflow:hidden;
        }
        .custom-img {
            width: 90%;
            height: auto;
        }
    </style>
</head>
<body>
    <div class="container-fluid m-3">
        <h2 class="text-center mb-5">Реєстрація адміністратора</h2>
        <div class="row d-flex justify-content-center">
            <div class="col-lg-6 col-xl-5">
                <img src="../images/admin_reg.jpg" alt="Admin Registration" class="img-fluid custom-img">
            </div>
            <div class="col-lg-6 col-xl-4">
                <form action="" method="post">
                    <div class="form-outline mb-4">
                        <label for="username" class="form-label">Ім'я користувача</label>
                        <input type="text" id="username" name="username" placeholder="Введіть своє ім'я користувача" required="required" class="form-control">
                    </div>
                    <div class="form-outline mb-4">
                        <label for="email" class="form-label">Електронна пошта</label>
                        <input type="email" id="email" name="email" placeholder="Введіть свою електронну пошту" required="required" class="form-control">
                    </div>
                    <div class="form-outline mb-4">
                        <label for="password" class="form-label">Пароль</label>
                        <input type="password" id="password" name="password" placeholder="Введіть свій пароль" required="required" class="form-control">
                    </div>
                    <div class="form-outline mb-4">
                        <label for="confirm_password" class="form-label">Підтвердіть пароль</label>
                        <input type="password" id="confirm_password" name="confirm_password" placeholder="Введіть ваш пароль ще раз для підтвердження" required="required" class="form-control">
                    </div>
                    <div>
                        <input type="submit" class="bg-info py-2 px-3 border-0" name="admin_registration" value="Зареєструватися">
                        <p class="small fw-bold mt-2 pt-1">Ви ще не маєте облікового запису? <a href="admin_login.php" class="link-danger">Увійти</a></p>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>