<?php
if(isset($_GET['delete_category'])){
    $delete_id=$_GET['delete_category'];
    //echo $delete_id;
    //delete query
    $delete_category="Delete from `categories` where category_id=$delete_id";
    $result_category=mysqli_query($con,$delete_category);
    if($result_category){
        echo "<script>alert('Жанр успішно видалено')</script>";
        echo "<script>window.open('./index.php?view_categories','_self')</script>";
    }
}
?>