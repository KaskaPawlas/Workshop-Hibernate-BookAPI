<%--
  Created by IntelliJ IDEA.
  User: katarzyna
  Date: 14.05.2022
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add book</title>
</head>
<body>
<form:form modelAttribute="book">
    ISBN: <form:input path="isbn"/>
    Title: <form:input path="title"/>
    Author: <form:input path="author"/>
    Publishing house: <form:input path="publishingHouse"/>
    Genre: <form:input path="genre"/>
    <input type="submit" value="Save">
</form:form>
</body>
</html>
