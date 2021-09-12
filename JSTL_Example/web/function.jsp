<%-- 
    Document   : function
    Created on : Sep 9, 2021, 8:28:27 PM
    Author     : Dipak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Function tag!</h1>
        <c:set var="name" value="hello world world"></c:set>
        <c:out value="${fn:length(name)}"></c:out>
        <c:out value="${fn:toUpperCase(name)}"></c:out>
        <c:out value="${fn:contains(name,\"world\")}"></c:out>
        <br>
        <c:out value="${fn:toUpperCase(fn:substring(name,0,1))}" />
        <c:out value="${fn:substring(name,1,fn:length(name))}"></c:out>
    </body>
</html>
