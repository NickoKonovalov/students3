<%--
  Created by IntelliJ IDEA.
  User: nickk
  Date: 11.10.2022
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student creating</title>
    <link rel="stylesheet" href="../resources/styles/style.css">

    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <script>
        $( function() {
            $( "#datepicker" ).datepicker();
        } )
            </script>
</head>
<body>
<div class="flex-head">
    <div class="header">
        <h1>Система управления студентами и их успеваемостью</h1>
    </div>
    <div class="right-log">
        <a href="">Logout</a>
    </div>
</div>
<div class="flex-link create">
    <div>
        <a href="/home">На главную</a>
    </div>
    <div>
        <a href="/student">Назад</a>
    </div>

    <div>
        <p>Для создания студента заполните все поля и нажмите кнопку "Создать"</p>
    </div>
</div>
<div class="form">
    <form action="/create-student" method="post">
        <p>Фамилия <input type="text" name="surname"></p>
        <p>Имя <input type="text" name="name"></p>
        <p>Группа <input type="text" name="group"></p>
        <p>Дата поступления <input type="text" name="date" id="datepicker"></p>
        <p>Создать<input type="submit" value="Создать"></p>
    </form>
</div>

</body>
</html>