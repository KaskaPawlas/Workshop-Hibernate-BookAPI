<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: katarzyna
  Date: 14.05.2022
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update book</title>
</head>
<body>
<c:url var="edit_url" value="/admin/books/edit"/>
<form:form modelAttribute="book" action="${edit_url}">
    <form:hidden path="id"/>
    ISBN: <form:input path="isbn"/>
    Title: <form:input path="title"/>
    Author: <form:input path="author"/>
    Publishing house: <form:input path="publishingHouse"/>
    Genre: <form:input path="genre"/>
    <input type="submit" value="Save">
</form:form>
</body>
</html>
