<%-- 
    Document   : login_page
    Created on : Sep 11, 2021, 7:42:11 PM
    Author     : Dipak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
             <%@include file="css/addcss.jsp" %>
        <style>
            .banner-background{
                clip-path: polygon(0 0, 100% 0%, 100% 88%, 0% 100%);
            }
        </style>
        <title>Login Page</title>
    </head>
    <body>
        <!--navbar-->
        <%@include  file="navbar.jsp" %>
        <main class="d-flex align-items-center primary-background banner-background" style="height: 70vh">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <div class="card" >
                            <div class="card-header primary-background text-center text-white">
                                <span class="fa fa-user-plus fa-3x"></span>
                                <br>Login Page</div>
                            <div class="card-body">
                                <form>
                                    <div class="mb-3">
                                        <label for="exampleInputEmail1" class="form-label">Email address</label>
                                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleInputPassword1" class="form-label">Password</label>
                                        <input type="password" class="form-control" id="exampleInputPassword1">
                                    </div>
                                    <div class="mb-3 form-check">
                                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                        <label class="form-check-label" for="exampleCheck1">Check me out</label>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </form>
                            </div>
                        </div>  
                    </div>
                </div>
            </div>
        </main>

        <%@include file="js/addjs.jsp"%>
    </body>
</html>
