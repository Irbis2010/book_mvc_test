<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<body>

<h2>Все книги на полке</h2>
<br>

<table>
    <tr>
        <th width="200">Название книги</th>
        <th width="300">Описание</th>
        <th width="220">Автор</th>
        <th width="200">ISBN</th>
        <th width="100">Год издания</th>
        <th width="100">Место нахождения книги</th>

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
            <td align="center">${book.isbn}</td>
            <td align="center">${book.publication}</td>
            <td align="center">${book.location}</td>
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

<input type="button" value="Добавить книгу"
onclick="window.location.href = 'addNewBook'"/>



</body>
</html>