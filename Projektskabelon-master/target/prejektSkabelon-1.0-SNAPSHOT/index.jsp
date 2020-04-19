<%-- 
    Document   : index
    Created on : Aug 22, 2017, 2:01:06 PM
    Author     : kasper
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="includes/style.css"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome page</title>


    </head>
    <body>
    <p>
        <h3>Carport bredde</h3>
        <select id = "myList">
            <option value = "1">one</option>
            <option value = "2">two</option>
            <option value = "3">three</option>
            <option value = "4">four</option>
        </select>
    </p>

    <p>
    <h3>Carport længde</h3>
    <select id = "myList">
        <option value = "1">one</option>
        <option value = "2">two</option>
        <option value = "3">three</option>
        <option value = "4">four</option>
    </select>
    </p>

    <p>
    <h3>Tag</h3>
    <select id = "myList">
        <option value = "1">one</option>
        <option value = "2">two</option>
        <option value = "3">three</option>
        <option value = "4">four</option>
    </select>
    </p>

    <p>
    <h3>Taghældning</h3>
    <select id = "myList">
        <option value = "1">one</option>
        <option value = "2">two</option>
        <option value = "3">three</option>
        <option value = "4">four</option>
    </select>
    </p>

    <p>
    <h3>Redskabsrum bredde</h3>
    <select id = "myList">
        <option value = "1">one</option>
        <option value = "2">two</option>
        <option value = "3">three</option>
        <option value = "4">four</option>
    </select>
    </p>

    <p>
    <h3>Redskabsrum længde</h3>
    <select id = "myList">
        <option value = "1">one</option>
        <option value = "2">two</option>
        <option value = "3">three</option>
        <option value = "4">four</option>
    </select>
    </p>


<%--        Bare lige se I har en ide om hvad vi forslå I ikke gør ! det hedder scpript lets --%>
<%--        <% String error = (String) request.getAttribute( "error");--%>
<%--           if ( error != null) { --%>
<%--               out.println("<H2>Error!!</h2>");--%>
<%--               out.println(error);--%>
<%--           }--%>
<%--        %>--%>

        <c:if test = "${requestScope.error!= null}" >

           <h2>Error ! </h2>
            ${requestScope.error}

        </c:if>
</body>
</html>
