<%@page import="com.technical.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page errorPage="error_page.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
        <!--css-->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <style>
            .banner-background{
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 85%, 80% 100%, 51% 90%, 0 100%, 0 0);
            }
        </style>
        <title>Technical Blog</title>
    </head>
    <body>
        <%--<%= exception %>--%>
        <!--navbar-->
        <%@include file="navbar.jsp" %>
        <div class="container-fluid p-0 m-0">
            <div class="jumbotron primary-background text-white banner-background">
                <div class="container px-5 pt-5 pb-5">
                    <h1 class="display-3">Welcome to Technical Blog</h1>
                    <p class="px-2">Computer programming is the process of designing and building an executable computer program to accomplish a specific computing result or to perform a specific task. Programming involves tasks such as: analysis, generating algorithms, profiling algorithms' accuracy and resource consumption, and the implementation of algorithms in a chosen programming language.</p>
                    <p class="px-2"> The purpose of programming is to find a sequence of instructions that will automate the performance of a task (which can be as complex as an operating system). </p>
                    <button class="btn btn-outline-light "><span class="fa fa-user-plus"></span>Start for Free!</button>
                    <a href="login_page" class="btn btn-outline-light"><span class="fa fa-user-circle fa-spin"></span>Login</a>
                </div>
            </div>
        </div>

        <div class="container mt-4">
            <div class="row">
                <div class="col-md-4">
                    <div class="card" >
                        <div class="card-body"><h5>Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read more..</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" >
                        <div class="card-body"><h5>Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read more..</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" >
                        <div class="card-body"><h5>Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read more..</a>
                        </div>
                    </div>
                </div>
            </div>
                <div class="row mt-2">
                <div class="col-md-4">
                    <div class="card" >
                        <div class="card-body"><h5>Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read more..</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" >
                        <div class="card-body"><h5>Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read more..</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" >
                        <div class="card-body"><h5>Java Programming</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn primary-background text-white">Read more..</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--javascript-->
          <%@include file="js/addjs.jsp"%>
        <script>
            $(document).ready(function () {
//                alert("document loaded");
            });
        </script>

    </body>
</html>
