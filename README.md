# Ecomers-website

# Інструкція з установки та запуску веб-додатку

 Веб-додаток "Магазин книжок" призначений для забезпечення користувачам можливості переглядати, шукати та купувати книги через Інтернет.
 Додаток містить каталог книг, інформацію про кожну книгу, а також функціональність кошика для покупок та оформлення замовлень. 
 Для адміністраторів передбачені інструменти для управління каталогом книг та замовленнями.
 Denwer (Developer's Web Server) є простим у використанні локальним веб-сервером, який включає Apache, MySQL і PHP. Нижче наведено покрокову інструкцію з установки Denwer.
 
# Перейдіть на офіційний сайт Denwer і завантажте інсталятор. 

## Запустіть завантажений файл для початку процесу установки.
## Дотримуйтесь інструкцій установки. 

Виберіть директорію для встановлення (рекомендується вибрати диск D: або інший, окрім системного диска C:). 
Під час установки Denwer створить віртуальний диск, наприклад Z:, де буде розміщено всі файли веб-сервера.
Після завершення установки відкрийте папку з Denwer та запустіть файл Run.exe. 
Під час першого запуску Denwer створить необхідні файли та налаштування.
Переконайтесь що на порту роботи денвера не працює інша програма.
phpMyAdmin використовується для зручного управління базами даних MySQL через веб-інтерфейс.
Відкрийте браузер та введіть адресу http://localhost/Tools/phpMyAdmin/. 
Введіть логін та пароль адміністратора MySQL (за замовчуванням логін root, пароль порожній).
У phpMyAdmin натисніть на вкладку "Базы данных". 
Введіть назву нової бази даних, наприклад bookstore, і натисніть "Створити".
Перейдіть до вкладки "Импорт" у створеній базі даних. 
Виберіть файл з SQL-скриптом, що містить структуру таблиць та початкові дані, і натисніть "ОК".
Скопіюйте файли вашого веб-додатку до директорії Denwer, наприклад, у папку ```Z:\home\localhost\www\bookstore.```
Відредагуйте файл конфігурації додатку connect.php, вказавши параметри підключення до бази даних:

```$con=mysqli_connect('localhost', 'root', '', 'mystore');```

Відкрийте браузер і введіть адресу http://localhost/bookstore. 
Додаток повинен відображатися у браузері, і ви можете почати роботу з ним.
Дотримуючись цієї інструкції, ви зможете встановити та налаштувати Denwer, створити та налаштувати базу даних у phpMyAdmin, а також запустити веб-додаток "Магазин книжок" у браузері. 
Програма забезпечить зручний інтерфейс для користувачів, дозволяючи переглядати каталог книг, здійснювати покупки та керувати замовленнями. 
Для адміністраторів додаток надає можливості управління контентом та обробки замовлень, що робить його ефективним інструментом для онлайн-торгівлі книгами.
