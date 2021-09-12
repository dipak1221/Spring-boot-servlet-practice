<%-- 
    Document   : ErrorHandling
    Created on : Aug 11, 2021, 11:49:18 AM
    Author     : Dipak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_page.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%! int a = 200;
            int b = 0;
            String content = null;%>
        <% content.length();%>
        <% int division = a / b;%>

        <h1>Division = <%= division%></h1>
    </body>
</html>
