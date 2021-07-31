<%-- 
    Document   : signup
    Created on : Jul 28, 2021, 12:27:19 PM
    Author     : Dipak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

    </head>
    <body>
        <!--<h1>Hello World!</h1>-->

        <div class="container">
            <div class ="row">
                <div class="col m6 offset-m3">
                    <div class="card">
                        <div class="card-content">
                            <h3 style="margin-top:5px;"  class="center-align">Register form !!</h3>
                            <h6 id="msg" class="center-align"></h6>
                            <form action="Register" method="post" id="form1">
                                <div class="form center-align">
                                    <input type="text" name="user_name" placeholder="Enter your name">
                                    <input type="password" name="user_password" placeholder="Enter your Password">
                                    <input type="email" name="user_email" placeholder="Enter your Email">
                                    <div class="file-field input-field">
                                        <div class="btn">
                                            <span>File</span>
                                            <input name="user_image" type="file">
                                        </div>
                                        <div class="file-path-wrapper">
                                            <input class="file-path validate" type="text">
                                        </div>
                                    </div>
                                    <button type="submit"  class="btn">Submit</button>
                                </div>
                            </form>
                            <div class="loader center-align" style="margin-top:10px; display:none;">
                                <div class="preloader-wrapper small active">
                                    <div class="spinner-layer spinner-green-only">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>
                                </div>
                                <h6>Please wait...</h6>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </div>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"
                integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
        crossorigin="anonymous"></script>
        <script>
            $(document).ready(function () {
                console.log("page is ready....");
                $("#form1").on("submit", function (event) {
                    event.preventDefault();
                    console.log("in form submit");
//                    var f = $(this).serialize();
                    let f = new FormData(this);
                    console.log(f);

                    $("#form1").hide();
                    $('.loader').show();

                    $.ajax({
                        url: "Register",
                        data: f,
                        type: 'POST',
                        success: function (a, b, c) {
                            console.log(a);
                            console.log("success");
                            $("#form1").show();
//                            $('#msg').html("Registration is done.....");
                            $('.loader').hide();
                            if (a.trim() === "done") {
                                $('#msg').html("Successfuly done...........");
                                $('#msg').addClass('green-text');
                            } else {
                                $('#msg').html("Some problem is there..........");
                                $('#msg').addClass('red-text');
                            }
                        },
                        error: function (a, b, c) {
                            console.log(a);
                            console.log("error");
                            $('#msg').html("Sorry registration is not done");
                            $("#form1").show();
                            $('.loader').hide();
                        },
                        processData:false,
                        contentType:false,
                    });
                });
            });

        </script>
    </body>
</html>
