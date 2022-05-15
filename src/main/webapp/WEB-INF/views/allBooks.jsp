<%--
  Created by IntelliJ IDEA.
  User: katarzyna
  Date: 14.05.2022
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Book list</title>
</head>
<body>
<a href="<c:url value="/admin/books/add"/>">Add book</a>
<table>
    <thead>
    <th>Title</th>
    <th>Author</th>
    <th>ISBN</th>
    <th>Publisher</th>
    <th>Genre</th>
    <th>Action</th>
    </thead>
    <tbody>
    <c:forEach items="${books}" var="book">
        <tr>
            <td><c:out value="${book.title}"/></td>
            <td><c:out value="${book.author}"/></td>
            <td><c:out value="${book.isbn}"/></td>
            <td><c:out value="${book.publishingHouse}"/></td>
            <td><c:out value="${book.genre}"/></td>
            <td>
                <a href="<c:url value="/admin/books/delete/${book.id}"/>">Delete</a>
                <a href="<c:url value="/admin/books/edit/${book.id}"/>">Update</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
