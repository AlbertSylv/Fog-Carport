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

    <form action="FrontController" method="post" id="bestilling">


        <input type="hidden" name="taget" value="createRequest">




    <p>
        <h3>Carport bredde</h3>

            <label for="myList1">Choose a width:</label>

        <select id = "myList1" name="width" form="bestilling">

            <option value = "1">240 cm</option>
            <option value = "2">270 cm</option>
            <option value = "3">300 cm</option>
            <option value = "4">330 cm</option>
            <option value = "5">360 cm</option>
            <option value = "6">390 cm</option>
            <option value = "7">420 cm</option>
            <option value = "8">450 cm</option>
            <option value = "9">480 cm</option>
            <option value = "10">510 cm</option>
            <option value = "11">540 cm</option>
            <option value = "12">570 cm</option>
            <option value = "13">600 cm</option>
            <option value = "14">630 cm</option>
            <option value = "15">660 cm</option>
            <option value = "16">690 cm</option>
            <option value = "17">720 cm</option>
            <option value = "18">750 cm</option>


        </select>

    </p>



    <p>
    <h3>Carport længde</h3>
    <select id = "myList2">

        <option value = "1">270 cm</option>
        <option value = "2">300 cm</option>
        <option value = "3">330 cm</option>
        <option value = "4">360 cm</option>
        <option value = "5">390 cm</option>
        <option value = "6">420 cm</option>
        <option value = "7">450 cm</option>
        <option value = "8">480 cm</option>
        <option value = "9">510 cm</option>
        <option value = "10">540 cm</option>
        <option value = "11">570 cm</option>
        <option value = "12">600 cm</option>
        <option value = "13">630 cm</option>
        <option value = "14">660 cm</option>
        <option value = "15">690 cm</option>
        <option value = "16">720 cm</option>
        <option value = "17">750 cm</option>
        <option value = "18">780 cm cm</option>

    </select>
    </p>

    <p>
    <h3>Tag</h3>
    <select id = "myList3">
        <option value = "1">Plasttrapezplader</option>
        <option value = "2">Betontagsten - Rød</option>
        <option value = "3">Betontagsten - Teglrød</option>
        <option value = "4">Betontagsten - Brun</option>
        <option value = "5">Betontagsten - Sort</option>
        <option value = "6">Eternittag B6 - Grå</option>
        <option value = "7">Eternittag B6 - Sprt</option>
        <option value = "8">Eternittag B6 - Mokka(Brun)</option>
        <option value = "9">Eternittag B6 - Rødbrun</option>
        <option value = "10">Eternittag B6 - Teglrød</option>
        <option value = "11">Eternittag B7 - Grå</option>
        <option value = "12">Eternittag B7 - Sort</option>
        <option value = "13">Eternittag B7 - Mokke(Brun)</option>
        <option value = "14">Eternittag B7 - Rødbrun</option>
        <option value = "15">Eternittag B7 - Teglrød</option>
        <option value = "16">Eternittag B7 - Rødflammet</option>

        

    </select>
    </p>

    <p>
    <h3>Taghældning</h3>
    <select id = "myList4">
        <option value = "1">15 grader</option>
        <option value = "2">20 grader</option>
        <option value = "3">25 grader</option>
        <option value = "4">30 grader</option>
        <option value = "5">35 grader</option>
        <option value = "6">40 grader</option>
        <option value = "7">45 grader</option>

    </select>
    </p>

    <p>
    <h3>Redskabsrum bredde</h3>
    <select id = "myList5">
        <option value = "1">210 cm</option>
        <option value = "2">240 cm</option>
        <option value = "3">270 cm</option>
        <option value = "4">300 cm</option>
        <option value = "5">330 cm</option>
        <option value = "6">360 cm</option>
        <option value = "7">390 cm</option>
        <option value = "8">420 cm</option>
        <option value = "9">450 cm</option>
        <option value = "10">480 cm</option>
        <option value = "11">510 cm</option>
        <option value = "12">540 cm</option>
        <option value = "13">570 cm</option>
        <option value = "14">600 cm</option>
        <option value = "15">630 cm</option>
        <option value = "16">660 cm</option>
        <option value = "17">690 cm</option>
        <option value = "18">720 cm</option>
    </select>
    </p>

    <p>
    <h3>Redskabsrum længde</h3>
    <select id = "myList6">
        <option value = "1">150 cm</option>
        <option value = "2">180 cm</option>
        <option value = "3">210 cm</option>
        <option value = "4">240 cm</option>
        <option value = "5">270 cm</option>
        <option value = "6">300 cm</option>
        <option value = "7">330 cm</option>
        <option value = "8">360 cm</option>
        <option value = "9">390 cm</option>
        <option value = "10">420 cm</option>
        <option value = "11">450 cm</option>
        <option value = "12">480 cm</option>
        <option value = "13">510 cm</option>
        <option value = "14">540 cm</option>
        <option value = "15">570 cm</option>
        <option value = "16">600 cm</option>
        <option value = "17">630 cm</option>
        <option value = "18">660 cm</option>
        <option value = "19">690 cm</option>

    </select>
    </p>

    <div class="text-center">
        <button type="submit" class="btn btn-primary">Bestil carport med valgte mål</button>
    </div>
    </form>

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
