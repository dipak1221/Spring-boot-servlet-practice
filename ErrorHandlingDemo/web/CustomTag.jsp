<%-- 
    Document   : CustomTag
    Created on : Aug 11, 2021, 4:15:28 PM
    Author     : Dipak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" uri="/WEB-INF/tlds/mylib" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <t:mylib1></t:mylib1>
            <hr>
            <div style="width:100px; display:inline-block">
            <t:printTable number="7" colour="red"></t:printTable>
            </div>
            <div style="width:100px">
            <t:printTable number="8" colour="blue"></t:printTable>
            </div>
            <div style="width:100px">
            <t:printTable number="8" colour="green"></t:printTable>
        </div>
    </body>
</html>
