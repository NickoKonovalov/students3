<%--
  Created by IntelliJ IDEA.
  User: nickk
  Date: 03.10.2022
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../resources/styles/style.css">
    <script src="../resources/js/functions.js"></script>
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
    <div class="flex-buttons">
        <div>
            <a href="/home">На главную</a>
        </div>
        <div class="buutton">
            <button>Просмотреть успеваемость выбранных студентов</button>
            <button>Модифицировать выбранного студента</button>

        </div>
        <div class="buutton">
            <button> <a href="/create-student">Создать студента...</a></button>
            <button><input type="submit" onclick="deleteStudents()"
                           value="Удалить выбранных студентов"></button>

        </div>
    </div>
    <div class="students-list">
        <p>Список студентов</p>
        <table class="table-student">
            <thead>
                <tr>
                    <th scope="col"></th>
                    <th scope="col">Фамилия</th>
                    <th scope="col">Имя</th>
                    <th scope="col">Группа</th>
                    <th scope="col">Дата поступления</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${students}" var="st">
                    <tr>
                        <th scope="row"><input name="idStudent" type="checkbox" value="${st.id}"> </th>
                        <td>${st.surname}</td>
                        <td>${st.name}</td>
                        <td>${st.group}</td>
                        <td><fmt:formatDate value="${st.date}" pattern="MM/dd/yyyy"></fmt:formatDate></td>
                    </tr>
                </c:forEach>

    <%--            <tr>--%>
    <%--                <th scope="row"><input type="checkbox"> </th>--%>
    <%--                <td>Петров</td>--%>
    <%--                <td>Петр</td>--%>
    <%--                <td>КТ-21</td>--%>
    <%--                <td>1/09/2011</td>--%>
    <%--            </tr>--%>
    <%--            <tr>--%>
    <%--                <th scope="row"><input type="checkbox"> </th>--%>
    <%--                <td>Иванов</td>--%>
    <%--                <td>Иван</td>--%>
    <%--                <td>КТ-21</td>--%>
    <%--                <td>1/09/2011</td>--%>
    <%--            </tr>--%>
    <%--            <tr>--%>
    <%--                <th scope="row"><input type="checkbox"> </th>--%>
    <%--                <td>Макаревич</td>--%>
    <%--                <td>Андрей</td>--%>
    <%--                <td>КТ-21</td>--%>
    <%--                <td>1/09/2011</td>--%>
    <%--            </tr>--%>
    <%--            <tr>--%>
    <%--                <th scope="row"><input type="checkbox"> </th>--%>
    <%--                <td>Бельгиец</td>--%>
    <%--                <td>Василий</td>--%>
    <%--                <td>КТ-21</td>--%>
    <%--                <td>1/09/2011</td>--%>
    <%--            </tr>--%>
            </tbody>
        </table>
    </div>


</body>

<form id="deleteStudentForm" action="/delete-student" method="post">
    <input type="hidden" id="deleteStudentHidden" name="deleteStudentHidden">
</form>

</html>