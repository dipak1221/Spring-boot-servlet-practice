<%@page import="com.technical.blog.entities.User"%>

<%
    User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("login_page.jsp");
    }

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@page import="javax.servlet.http.*" %>--%>
<%@page errorPage="error_page.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            .banner-background{
                clip-path: polygon(0 0, 100% 0%, 100% 88%, 0% 100%);
            }
        </style>
        <title>Profile Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <%--<%@include file="css/addcss.jsp" %>--%>
    </head>
    <body>
        
        <%
//            System.out.println("id " + user.getId());
//            System.out.println("gender " + gender);
//            System.out.println("name " + name);
//            System.out.println("email " + email);
//            System.out.println("abut" + about);
//            System.out.println("pass " + password);
//            System.out.println("pass " + password.length());
//            System.out.println("image " + image);
//            System.out.println("problem is here");
           %>
        
        <%@include  file="navbar.jsp" %>
        <!--        <div class="container-fluid p-0 m-0 pb-5 banner-background primary-background">
                    <h1>Profile page</h1>
                    <h1>Hello <%= user.getName()%></h1>
                    <h1>Hello <%= user.toString()%></h1>
        
                </div>-->

        <!--Model start-->
        <!-- Button trigger modal -->
        <!--        <button type="button" class="btn btn-primary">
                    Launch static backdrop modal
                </button>-->

        <!-- Modal -->
        <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header primary-background">
                        <h5 class="modal-title" id="staticBackdropLabel">Technical Blog</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="container text-center">
                            <img width="100px" height="100px" src="pics\<%= u.getProfile()%>" style="border-radius:50%"/>
                            <h4><%= u.getName()%></h4>

                            <div id="profile">
                                <table class="table">

                                    <tbody>
                                        <tr>
                                            <th scope="row">ID :</th>
                                            <td><%= u.getId()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">About :</th>
                                            <td><%= u.getAbout()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Gender :</th>
                                            <td><%= u.getGender()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Email :</th>
                                            <td><%= u.getEmail()%></td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Registered Date :</th>
                                            <td><%= u.getDateTime()%></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div id="profile-edit" style="display:none;">
                                <h6 class="mt-4">Please Edit Carefully..</h6>
                                <form action="EditServlet" method="POST" enctype="multipart/form-data">
                                    <table class="table">
                                        <tr>
                                            <td>ID: </td>
                                            <td><%= u.getId()%></td>
                                        </tr>
                                        <tr>
                                            <td>Name: </td>
                                            <td><input type="text" class="form-control" name="user_name" value="<%= u.getName()%>"></td>
                                        </tr>
                                        <tr>
                                            <td>Gender: </td>
                                            <td><%= u.getGender().toUpperCase()%></td>
                                        </tr>
                                        <tr>
                                            <td>Email: </td>
                                            <td><input type="email" class="form-control" name="user_email" value="<%= u.getEmail()%>"></td>
                                        </tr>

                                        <tr>
                                            <td>Password: </td>
                                            <td><input type="password" class="form-control" name="user_password" value="<%= u.getPassword()%>" required></td>
                                        </tr>
                                        <tr>
                                            <td>About: </td>
                                            <td><textarea class="form-control" name="user_about" ><%= u.getAbout()%></textarea></td>
                                        </tr>
                                        <tr>
                                            <td>Profile pic: </td>
                                            <td><input type="file" name="image_file" class="form-control"></td>
                                        </tr>
                                    </table>
                                    <button type="submit" class="btn btn-outline-primary">Save</button>
                                </form>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button id="profile-edit-btn" type="button" class="btn btn-primary">Edit</button>
                        </div>
                    </div>
                </div>
            </div>

            <!--Model ends-->


            <!--Start add post model-->

            <!-- Button trigger modal -->
            

            <!-- Modal -->
            <div class="modal fade" id="add-post-model" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            ...
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>

            <!--End post model-->



            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
            <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
            <script src="js/myjs.js" type="text/javascript"></script>
            <script>
                $(document).ready(function () {
                    let editStatus = false;
                    $("#profile-edit-btn").click(function () {
//                        alert("clicked");
                        if (editStatus === false) {
                            $('#profile').hide();
                            $('#profile-edit').show();
                            editStatus = true;
                            $(this).text("Submit");
                        } else {
                            $('#profile').show();
                            $('#profile-edit').hide();
                            editStatus = false;
                            $(this).text("Edit");
                        }
                    });

                })
            </script>

    </body>
</html>
