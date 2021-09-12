<%-- 
    Document   : TagLib
    Created on : Aug 10, 2021, 3:56:52 PM
    Author     : Dipak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib  prefix="d" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <d:set var="name" value="Dipak Gautam"></d:set> 
        <d:if test="${name}">
            <h1>condition passed</h1>
        </d:if>
           
              
        <d:out value="${'dipak gautam'}"></d:out>
        <d:out value="${34+56}"></d:out>
        
    </body>
</html>
