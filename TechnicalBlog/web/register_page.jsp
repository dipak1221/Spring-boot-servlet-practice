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
        <title>Register Page</title>
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
                            <form id="reg-form" action="RegisterServlet" method="POST">
                                <div class="mb-3">
                                    <label for="user_name" class="form-label">User Name </label>
                                    <input name="user_name" type="text" class="form-control" id="user_name" aria-describedby="emailHelp">

                                </div>


                                <div class="mb-3">
                                    <label for="exampleInputEmail1" class="form-label">Email address</label>
                                    <input name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                                </div>


                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">Password</label>
                                    <input name="user_password" type="password" class="form-control" id="exampleInputPassword1">
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
                                    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
                                    <label class="form-check-label" for="exampleCheck1"> agree terms and condition </label>
                                </div>
                                <div id="loader" class="container text-center" style="display:none;">
                                    <span class="	fa fa-refresh fa-3x fa-spin"></span>
                                    <h5>loading...</h5>
                                </div>
                                <button id="submit-btn" type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        </div>

                        <div class="card-footer">
                        </div>

                    </div>
                </div>
            </div>
        </main>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <%--<%@include file="js/addjs.jsp"%>--%>
        <script>
            $(document).ready(function () {
                console.log("loaded.....");
                $('#reg-form').on('submit', function (event) {
                    event.preventDefault();
                    $('#submit-btn').hide();
                    $('#loader').show();
                    let form = new FormData(this);
                    console.log(form);
                    $.ajax({
                        url: "RegisterServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            $('#submit-btn').show();
                            $('#loader').hide();
                            if (data.trim() === 'done') {
                                swal({
                                    title: "Good job! " + $('#user_name').val(),
                                    text: "You Registered Successfully! we redirecting to Login page",

                                    icon: "success",
                                    button: "ok!",
                                }).then((value) => {
                                    window.location = "login_page.jsp"
                                });
//                                window.location = "login_page.jsp";
                            } else {
                                swal(data);
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log(jqXHR);
                            swal({
                                title: "! " + $('#user_name').val(),
                                text: "Something went Wrong!",
                                icon: "error",
                                button: "ok!",
                            });
                            $('#submit-btn').show();
                            $('#loader').hide();
                        },
                        processData: false,
                        contentType: false,
                    });

                });
            });



        </script>
    </body>
</html>
