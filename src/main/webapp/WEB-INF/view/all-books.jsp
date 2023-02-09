<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

<h2>All Books</h2>
<br>

<table>
    <tr>
        <th>Title</th>
        <th>Description</th>
        <th>Author</th>
        <th>Isbn</th>
        <th>Publication</th>
        <th>Location</th>
    </tr>

    <c:forEach var="book" items="${allBook}">

        <c:url var="updateButton" value="/updateInfo">
            <c:param name="bookId" value="${book.id}"/>

        </c:url>

        <c:url var="deleteButton" value="/deleteBook">
            <c:param name="bookId" value="${book.id}"/>

        </c:url>

        <tr>
            <td>${book.title}</td>
            <td>${book.description}</td>
            <td>${book.author}</td>
            <td>${book.isbn}</td>
            <td>${book.publication}</td>
            <td>${book.location}</td>
            <td>
                <input type="button" value="Update"
                       onclick="window.location.href='${updateButton}'"/>

                <input type="button" value="Delete"
                       onclick="window.location.href='${deleteButton}'"/>
            </td>

        </tr>
    </c:forEach>

</table>
<br>

<input type="button" value="Add"
onclick="window.location.href = 'addNewBook'"/>



</body>
</html>