<%--@elvariable id="hit" type="boolean"--%>
<%--@elvariable id="colorOfHit" type="String"--%>
<%--@elvariable id="hitResultText" type="String"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<jsp:useBean id="results" scope="application" type="java.util.LinkedList"/>

<html>
<head>
    <title>response</title>
    <link rel="stylesheet" href="css/results.css">
</head>
<body>
    <h1 style="color:${colorOfHit}">${hitResultText}</h1>
    <h1> x = ${param['X-select']}</h1>
    <h1> y = ${param['Y-textarea']}</h1>
    <h1> r = ${param['R-checkbox']}</h1>
    <h1> hit: ${pageContext.servletContext.getAttribute("hit")}</h1>
    <div id="coords">
        <img src="images/coords.png">
        <div id="point" style=
                "
                    background-color: ${colorOfHit};
                    top: calc( (((${param['Y-textarea']} / ${param['R-checkbox']}) / -2.5) + 0.5) * 500px - 5px);
                    left: calc( (((${param['X-select']} / ${param['R-checkbox']}) / 2.5) + 0.5) * 500px - 5px);
                ">
        </div>
    </div>

    <div style="position: absolute; top:80%; left: 50%; transform: translate(-50%, 0%)">
        <a href="/lab2" style="font-weight: 800; font-size: xx-large;">Go back</a>
    </div>

    <table>
        <tr style="background-color: gray">
            <th>X</th>
            <th>Y</th>
            <th>R</th>
            <th>RESULT</th>
        </tr>
        <c:forEach items="${results}" var="result">
            <tr>
                <th><c:out value="${result.x}">x</c:out></th>
                <th><c:out value="${result.y}">y</c:out></th>
                <th><c:out value="${result.r}">r</c:out></th>

                <c:choose>
                    <c:when test="${result.hit}">
                        <th style="background-color: green">HIT!</th>
                    </c:when>
                    <c:otherwise>
                        <th style="background-color: red">miss...</th>
                    </c:otherwise>
                </c:choose>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
