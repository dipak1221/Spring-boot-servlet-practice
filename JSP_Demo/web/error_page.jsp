<%-- 
    Document   : error_
    Created on : Aug 11, 2021, 11:57:10 AM
    Author     : Dipak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            *{
                margin:0px;
                padding:0px;
            }
        </style>
    </head>
    <body>
        <div style="padding:20px; color:blue; background:#e2e2e2;">
            <h1>Something went wrong!!...</h1>
            <br>
            <p>Note .........</p>
            <p><%= exception %></p>
        </div>
    </body>
</html>
