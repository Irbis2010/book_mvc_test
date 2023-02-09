<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<body>
<h2>Book Info</h2>
<br>

<form:form action="saveBook" modelAttribute="book">
<%--скрытая форма для id--%>
    <form:hidden path="id"/>

    Title <form:input path="title"/>
    <br><br>
    Description <form:input path="description"/>
    <br><br>
    Author <form:input path="author"/>
    <br><br>
    Isbn <form:input path="isbn"/>
    <br><br>
    Publication <form:input path="publication"/>
    <br><br>
<%--    Location <form:input path="location"/>--%>
<%--    <br><br>--%>
    Location <form:select path="location">
    <form:option value="Где сейчас находится книга" label="На руках"/>
    <form:option value="Где сейчас находится книга" label="На полке"/>
</form:select>
    <br>
    <br>
    <input type="submit" value="Ввод">

</form:form>



</body>
</html>
