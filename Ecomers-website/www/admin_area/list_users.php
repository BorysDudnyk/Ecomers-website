<h3 class="text-center text-success">Користувачі</h3>
<table class="table table-bordered mt-5 text-center">
    <thead class="bg-info">
        <?php
        $get_user="Select * from `user_table`";
        $result=mysqli_query($con,$get_user);
        $row_count=mysqli_num_rows($result);

        if($row_count==0){
            echo "<h2 class='text-danger text-center mt-5'>Користувачі відсутні</h2>";
        }else{
            echo "<tr>
                    <th>№</th>
                    <th>Ім'я користувача</th>
                    <th>Електронна пошта</th>
                    <th>Зображення</th>
                    <th>Адреса</th>
                    <th>Мобільний номер</th>
                    <th>Видалити</th>
                </tr>
            </thead>
            <tbody class='bg-secondary text-light'>";
            $number=0;
            while($row_data=mysqli_fetch_assoc($result)){
                $user_id=$row_data['user_id'];
                $username=$row_data['username'];
                $user_email=$row_data['user_email'];
                $user_image =$row_data['user_image'];
                $user_address=$row_data['user_address'];
                $user_mobile=$row_data['user_mobile'];
                $number++;
                echo "<tr>
                    <td>$number</td>
                    <td>$username</td>
                    <td>$user_email</td>
                    <td><img src='../user_area/user_images/$user_image' alt='$user_image' class='product_img'/></td>
                    <td>$user_address</td>
                    <td>$user_mobile</td>
                    <td><a href='' class='text-light'><i class='fa-solid fa-trash'></i></a></td>
                </tr>";
            }
        }
        ?>
    </tbody>
</table>
