<%-- 
    Document   : index
    Created on : Sep 8, 2021, 5:54:09 PM
    Author     : Dipak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <c:set var="i" value="23" scope="application"></c:set>
        <h1>i = <c:out value="${i}"></c:out></h1>

        <%--<c:remove var="i"></c:remove>--%>
        <h1>i = <c:out value="${i}">This is default</c:out></h1>


            <!--scriptlet tag-->

        <%
            Integer n = 0;
            n = Integer.parseInt((String) application.getAttribute("i"));
            if (true) {
                System.out.println("hello " + (n + 3));
            } else {
                System.out.println(" else hello " + n);
            }
        %>

        <!--if test="condtion in expression form"-->

        <c:if test="${i==23}">
            <h1>Condition true</h1>
            <p> this is a paragraph</p>
        </c:if>


        <!--switch case in in jstl is a combination of = choose + when+ otherwise-->


        <c:choose>
            <c:when test="${i<0}">
                <h1>This is negative</h1>
                <h2>Number is less than zero</h2>
            </c:when>
            <c:when test="${i<0}">
                <h1>This is positive</h1>
                <h2>Number of greater than zero</h2>
            </c:when>
            <c:otherwise>
                This is default
            </c:otherwise>

        </c:choose>

        <!--loop- forEach-->
        <c:forEach var="j" begin="1" end="5">
            <h2>Value is <c:out value="${j}"> </c:out></h2>
        </c:forEach>

        <%
//            response.sendRedirect("test.jsp");
        %>

        <c:url var="myUrl" value="https://www.google.com/search">
            <c:param name="q" value="what is servlet"></c:param>
        </c:url>
        
        <%--<c:redirect url="https://www.google.com/search?s=who+am+i"></c:redirect>--%>
        <%--<c:redirect url="${myUrl}"></c:redirect>--%>

    </body>
</html>
