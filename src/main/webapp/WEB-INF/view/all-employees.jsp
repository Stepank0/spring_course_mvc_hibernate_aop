<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: stepa
  Date: 05.03.2023
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>List all our employees.</title>
    <style>
        body {
            background: aquamarine;
            color: black;
            background-attachment: fixed;
            background-repeat: repeat-x;
        }
        h2 {
            /*text-align:  center;*/
        }
        table {
            width: 500px; /* Ширина таблицы */
            border: 1px solid green; /* Рамка вокруг таблицы */
            /*margin: auto; !* Выравниваем таблицу по центру окна  *!*/
        }
        td {
            text-align: center; /* Выравниваем текст по центру ячейки */
        }
        header-table{
            width: 1000px;
            border: 1px black;
            margin: auto;
        }
        add-button{
            margin: auto;
        }
    </style>
</head>
<body>

<div class="header-table">
    <div class="title">
        <h2 > All Employees </h2>
        <br>
    </div>
    <div class="table-header">
        <table>
            <tr>
                <th>Name</th>
                <th>Surname</th>
                <th>Department</th>
                <th>Salary</th>
                <th>Operations</th>
            </tr>
            <c:forEach var="emp" items="${allEmps}">
                <c:url var="updateButton" value="//updateInfo">
                    <c:param name="empId" value="${emp.id}"/>
                </c:url>
                <c:url var="deleteButton" value="//deleteEmployee">
                    <c:param name="empId" value="${emp.id}"/>
                </c:url>


                <tr>
                    <td>${emp.name}</td>
                    <td>${emp.surname}</td>
                    <td>${emp.department}</td>
                    <td>${emp.salary}</td>
                    <td>
                        <input type="button" value="update"
                        onclick="window.location.href= '${updateButton}'"/>
                        <input type="button" value="delete"
                               onclick="window.location.href= '${deleteButton}'"/>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <br>
    </div>
    <div class="add-button">
        <input type="button" value="Add" onclick="window.location.href = 'addNewEmployee'">
    </div>
</div>

</body>
</html>
