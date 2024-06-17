<h3 class="text-danger mb-4">Видалити акаунт</h3>
<form action="" method="post" class="mt-5">
    <div class="form-outline mb-4">
        <input type="submit" class="form-control w-50 m-auto" name="delete" value="Видалити акаунт">
    </div>
    <div class="form-outline mb-4">
        <input type="submit" class="form-control w-50 m-auto" name="dont_delete" value="Не видаляти акаунт">
    </div>
</form>

<?php
session_start();

$username_session = isset($_SESSION['username']) ? $_SESSION['username'] : null;
if (isset($_POST['delete'])) {
    $delete_query = "DELETE FROM `user_table` WHERE username='$username_session';";
    if (isset($con)) {
        $result = mysqli_query($con, $delete_query);
        if ($result) {
            session_destroy();
            echo "<script>alert('Обліковий запис успішно видалено')</script>";
            echo "<script>window.open('../index.php','_self')</script>";
        } else {
            echo "<script>alert('Помилка під час видалення облікового запису')</script>";
        }
    } else {
        echo "<script>alert('Підключення до бази даних не встановлено')</script>";
    }
}

if (isset($_POST['dont_delete'])) {
    echo "<script>window.open('profile.php','_self')</script>";
}
?>
