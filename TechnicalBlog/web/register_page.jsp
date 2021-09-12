<%-- 
    Document   : register_page
    Created on : Sep 12, 2021, 9:09:00 PM
    Author     : Dipak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="css/addcss.jsp"%>
        <style>
             .banner-background{
                clip-path: polygon(0 0, 100% 0%, 100% 88%, 0% 100%);
            }
        </style>
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="navbar.jsp"%>

        <main class="banner-background primary-background pb-5">
            <div class="container mb-5">
                <div class="col-md-5 offset-md-3 ">
                    <div class="card">
                        <div class="card-header text-center primary-background text-white">
                            <span class="fa fa-3x fa-user-circle "></span><br>Register Form
                        </div>

                        <div class="card-body">
                            <form>
                                <div class="mb-3">
                                    <label for="user_name" class="form-label">User Name </label>
                                    <input type="text" class="form-control" id="user_name" aria-describedby="emailHelp">

                                </div>


                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Email address</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                                </div>


                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">Password</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1">
                                </div>

                                <div class="mb-3">
                                    <label for="gender">Select Gender</label>
                                    <input type="radio" value="male" name="gender" id="gender">Male
                                    <input type="radio" value="female" name="gender" id="gender">Female
                                </div>
                                <div class="form-group">
                                    <textarea name="about" placeholder="Tell something about yourself" cols="10" rows="3" class="form-control"></textarea>
                                </div>
                                
                                <div class="mb-3 form-check">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1"> agree terms and condition </label>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        </div>

                        <div class="card-footer">
                        </div>

                    </div>
                </div>
            </div>
        </main>
        <%@include file="js/addjs.jsp"%>
    </body>
</html>
