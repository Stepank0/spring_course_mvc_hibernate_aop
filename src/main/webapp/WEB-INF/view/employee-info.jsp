<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: stepa
  Date: 05.03.2023
  Time: 23:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Info about employees.</title>
  <style>
    body {
      background: #eed36d;
      color: black;
      background-attachment: fixed;
      background-repeat: repeat-x;
    }
  </style>
</head>
<body>
  <div class="employee-details">
    <div class="title">
      <h2>Employee Info</h2>
      <br>
    </div>
    <div class="form-details">



      <form:form action="saveEmployee" modelAttribute="employee">
        <form:hidden path="id"/>

        Name <form:input path="name"/>
        <br><br>
        Surname <form:input path="surname"/>
        <br><br>
        Department <form:input path="department"/>
        <br><br>
        Salary <form:input path="salary"/>
        <br><br>
        <input type="submit" value="OK">
      </form:form>
    </div>

  </div>

</body>
</html>
