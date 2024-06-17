<h3 class="text-center text-success">Всі замовлення</h3>
<table class="table table-bordered mt-5">
    <thead class="bg-info text-center">
        <?php
        $get_orders = "Select * from `user_orders`";
        $result = mysqli_query($con, $get_orders);
        $row_count = mysqli_num_rows($result);
        
        if ($row_count == 0) {
            echo "<h2 class='text-danger text-center mt-5'>Ще немає замовлень</h2>";
        } else {
            echo "<tr>
                <th>№</th>
                <th>Сума до сплати</th>
                <th>Номер рахунку</th>
                <th>Загальна кількість товарів</th>
                <th>Дата замовлення</th>
                <th>Статус</th>
                <th>Видалити</th>
            </tr>
        </thead>
        <tbody class='bg-secondary text-light text-center'>";
            $number = 0;
            while ($row_data = mysqli_fetch_assoc($result)) {
                $order_id = $row_data['order_id'];
                $user_id = $row_data['user_id'];
                $amount_due = $row_data['amount_due'];
                $invoice_number = $row_data['invoice_number'];
                $total_products = $row_data['total_products'];
                $order_date = $row_data['order_date'];
                $order_status = $row_data['order_status'];
                $number++;
                echo "<tr>
                    <td>$number</td>
                    <td>$amount_due</td>
                    <td>$invoice_number</td>
                    <td>$total_products</td>
                    <td>$order_date</td>
                    <td>$order_status</td>
                    <td><a href='' class='text-light'><i class='fa-solid fa-trash'></i></a></td>
                </tr>";
            }
        }
        ?>
    </tbody>
</table>
