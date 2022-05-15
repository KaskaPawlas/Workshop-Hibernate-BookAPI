<%--
  Created by IntelliJ IDEA.
  User: katarzyna
  Date: 14.05.2022
  Time: 17:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Book's details</title>
</head>
<body>
<table>
    <thead>
    <th>Title</th>
    <th>Author</th>
    <th>ISBN</th>
    <th>Publisher</th>
    <th>Genre</th>
    </thead>
    <tbody>
    <tr>
        <td><c:out value="${book.title}"/></td>
        <td><c:out value="${book.author}"/></td>
        <td><c:out value="${book.isbn}"/></td>
        <td><c:out value="${book.publishingHouse}"/></td>
        <td><c:out value="${book.genre}"/></td>
    </tr>
    </tbody>
</table>
</body>
</html>

