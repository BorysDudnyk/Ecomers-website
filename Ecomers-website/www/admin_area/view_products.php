<h3 class="text-center text-success">Всі товари</h3>
<table class="table table-bordered mt-5">
    <thead class="bg-info">
        <tr>
            <th>№</th>
            <th>Назва товару</th>
            <th>Зображення</th>
            <th>Ціна товару</th>
            <th>Усього продано</th>
            <th>Статаус</th>
            <th>Редагувати</th>
            <th>Видалити</th>
        </tr>
    </thead>
    <tbody class="bg-secondary text-light">
        <?php
        $get_products="SELECT * FROM `products`";
        $result=mysqli_query($con,$get_products);
        $number=0;
        while($row=mysqli_fetch_assoc($result)){
            $number++;
            $product_id = $row['product_id'];
            $product_title = $row['product_title'];
            $product_image1 = $row['product_image1'];
            $product_price = $row['product_price'];
            $status = $row['status'];
        ?>
            <tr class='text-center'>
                <td><?php echo $number; ?></td>
                <td><?php echo $product_title; ?></td>
                <td><img src='./product_images/<?php echo $product_image1; ?>' class='product_img'/></td>
                <td><?php echo $product_price ;?>/грн</td>
                <td><?php
                $get_count="Select * from `orders_pending` where product_id=$product_id";
                $result_count=mysqli_query($con,$get_count);
                $rows_count=mysqli_num_rows($result_count);
                echo $rows_count;
                ?></td>
                <td><?php echo $status; ?></td>
                <td><a href='index.php?edit_products=<?php echo $product_id ?>' class='text-light'><i class='fa-solid fa-pen-to-square'></i></a></td>
                <td><a href='index.php?delete_product=<?php echo $product_id ?>' type="button" class="text-light" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class='fa-solid fa-trash'></i></a></td>
            </tr>
        <?php
        }
        ?>
    </tbody>
</table>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-body text-center">
        <h4>Ви впевнені, що хочете це видалити?</h4>
        </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"><a href="./index.php?view_products" class="text-light text-decoration-none">Ні</a></button>
        <button type="button" class="btn btn-primary"><a href='./index.php?delete_product=<?php echo $product_id; ?>' class="text-light text-decoration-none">Так</a></button>
      </div>
    </div>
  </div>
</div>
