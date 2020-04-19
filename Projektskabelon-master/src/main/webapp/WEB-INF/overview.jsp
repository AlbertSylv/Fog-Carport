<%@ page import="FunctionLayer.User" %><%--
  Created by IntelliJ IDEA.
  User: baske
  Date: 08/03/2020
  Time: 15.57
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Kundeliste: </h1>

<ul>
    <c:set var="count" value="0" scope="page" />
    <c:forEach items="${sessionScope.xy}"  var="user">
        <li>${user.email}</li>
        <li>${user.password}</li>
        <li>${user.role}</li>
        <br/>
        <c:set var="count" value="${count + 1}" scope="page"/>
    </c:forEach>

</ul>
<p>Antal kunder: ${count}</p>





hellooooo
</body>
</html>
